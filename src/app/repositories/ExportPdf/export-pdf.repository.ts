import axios from 'axios';
import { PDFDocumentWithTables, PDFTable } from '../../../utils/pdfkit-table';
import { PAPER_SIZES } from '../../../constant';

type PaperSizeType = {
  width: number;
  height: number;
  usableWidth: number;
  marginLeft: number;
  marginRight: number;
  marginTop: number;
  marginBottom: number;
  margin?: number;
};

class ExportPdfRepository {
  private FONT_BOLD_PATH = 'src/fonts/MINIONPRO-BOLD.OTF';
  private FONT_NORMAL_PATH = 'src/fonts/MINIONPRO-SUBH.OTF';
  private paperSize: PaperSizeType = {
    ...PAPER_SIZES['A4'],
    marginLeft: 40,
    marginRight: 40,
    marginTop: 20,
    marginBottom: 20,
    usableWidth: PAPER_SIZES['A4'].width - 40 * 2,
  };

  /**
   * Generates a PDF table with the given data and layout.
   *
   * @param doc The PDF document to append the table to.
   * @param labels The header labels of the table.
   * @param orders The data to be displayed in the table.
   * @param distributions The distribution of column widths.
   */
  async pdfTable(doc: PDFDocumentWithTables, labels: string[], orders: any[], distributions: number[]) {
    const table: PDFTable = {
      headers: labels,
      rows: Object.keys(orders[0]).map((key) => ({ dataIndex: key })),
      items: orders,
    };

    (
      await doc.table(table, {
        prepareHeader: () => doc.font(this.FONT_BOLD_PATH).fontSize(10),
        prepareRow: () => doc.font(this.FONT_NORMAL_PATH).fontSize(9),
        columnWidthsDistribution: distributions,
        isFlexibleHeight: true,
        columnSpacing: 5,
      })
    ).moveDown();
  }

  /**
   * Generates a PDF header with the given information.
   *
   * @param doc The PDF document to append the header to.
   * @param information The information to be displayed in the header.
   */
  async pdfHeader(doc: PDFDocumentWithTables, information: any) {
    const paperSize = this.paperSize;
    const imageResponse = await axios.get(information.logo, { responseType: 'arraybuffer' });
    const headerHeight = 60;
    // Draw the company logo to the top of the page.
    doc
      .image(imageResponse.data, paperSize.marginLeft, paperSize.marginTop, { height: headerHeight })
      .fillColor('#efefef')
      // Draw a white rectangle to create a background for the header.
      .rect(paperSize.width / 2, paperSize.marginTop + 5, paperSize.usableWidth / 2, headerHeight - 5)
      .fill()
      .fillColor('#444444')
      // Set the font and text size for the header text.
      .fontSize(12)
      .font(this.FONT_BOLD_PATH)
      // Display the company name in the center of the page.
      .text(information.name, paperSize.width / 2, paperSize.marginTop + 10, { align: 'center' })
      // Set the font size for the address and phone number.
      .fontSize(8)
      // Display the company address, phone number, and email address.
      .text('Địa chỉ:', paperSize.width / 2, paperSize.marginTop + 24, { align: 'right', width: 65 })
      .text('Điện thoại:', paperSize.width / 2, paperSize.marginTop + 36, { align: 'right', width: 65 })
      .text('Email:', paperSize.width / 2, paperSize.marginTop + 48, { align: 'right', width: 65 })
      // Switch to the normal font.
      .font(this.FONT_NORMAL_PATH)
      // Display the company address, phone number, and email address.
      .text(information.address, paperSize.width / 2 + 70, paperSize.marginTop + 24)
      .text(information.phoneNumber, paperSize.width / 2 + 70, paperSize.marginTop + 36)
      .text(information.email, paperSize.width / 2 + 70, paperSize.marginTop + 48)
      // Move down to the next line.
      .moveDown();
    // Draw a horizontal line after the header.
    this.generateHr(doc, paperSize.marginTop + headerHeight);
  }


  /**
   * @param doc the PDFDocumentWithTables object
   * @param y the y coordinate of the horizontal line
   * @param lineFrom the starting x coordinate of the horizontal line
   * @param lineTo the ending x coordinate of the horizontal line
   */
  generateHr(doc: PDFDocumentWithTables, y: number, lineFrom: number = this.paperSize.marginRight) {
    doc
      .strokeColor('#aaaaaa')
      .lineWidth(1)
      .moveTo(lineFrom, y)
      .lineTo(this.paperSize.width - this.paperSize.marginRight, y)
      .stroke()
      .moveDown();
  }
}
export default ExportPdfRepository;
