/* eslint-disable no-unused-vars */
import PDFDocument from 'pdfkit';
// import { getValueByPath } from '.';

export function getValueByPath(obj: any, path: string) {
  const keys = path.split('.');
  let value = obj;
  for (const key of keys) {
    if (value && typeof value === 'object' && key in value) {
      value = value[key];
    } else {
      // Handle invalid or missing keys
      return undefined;
    }
  }
  return value;
}

export type HeaderOptions =
  | string
  | { label: string; render?: () => any; imgOptions?: { width: number; height: number } };

export type RowOptions = {
  dataIndex: string;
  align?: 'left' | 'center' | 'justify' | 'right';
  isImage?: boolean;
  imageOptions?: { width?: number; height?: number };
  render?: (doc: PDFDocumentWithTables, value: any, fullItem: any, cellOptions: CellOptions) => any;
  imgOptions?: { width: number; height: number };
};

export type CellOptions = {
  startX: number;
  startY: number;
  width: number;
};

export type PDFTable = {
  headers: HeaderOptions[];
  rows: RowOptions[];
  items: any[];
};

export type PDFTableOptions = {
  columnSpacing?: number;
  rowSpacing?: number;
  width?: number;
  isFlexibleHeight?: boolean;
  columnWidthsDistribution?: number[];
  prepareHeader?: () => void;
  prepareRow?: (row: string[], index: number) => void;
};

export class PDFDocumentWithTables extends PDFDocument {
  constructor(options: PDFKit.PDFDocumentOptions) {
    super(options);
  }

  async table(
    table: PDFTable,
    arg0?: number | PDFTableOptions,
    arg1?: number | PDFTableOptions,
    arg2?: number | PDFTableOptions,
  ) {
    let startX = this.page.margins.left,
      startY = this.y;
    let options = {} as PDFTableOptions;

    if (typeof arg0 === 'number' && typeof arg1 === 'number') {
      startX = arg0;
      startY = arg1;

      if (typeof arg2 === 'object') options = arg2;
    } else if (typeof arg0 === 'object') {
      options = arg0;
    }

    const columnCount = table.headers.length;
    const columnSpacing = options.columnSpacing || 15;
    const rowSpacing = options.rowSpacing || 5;
    const usableWidth = options.width || this.page.width - this.page.margins.left - this.page.margins.right;
    const columnWidthsDistribution = options.columnWidthsDistribution || null;

    // eslint-disable-next-line @typescript-eslint/no-empty-function
    const prepareHeader = options.prepareHeader || (() => {});
    // eslint-disable-next-line @typescript-eslint/no-empty-function
    const prepareRow = options.prepareRow || (() => {});
    const computeRowHeight = (row: HeaderOptions[]) => {
      let result = 0;

      row.forEach((cell, i) => {
        const cellLabel = typeof cell === 'string' ? cell : cell.label;
        const cellHeight = this.heightOfString(cellLabel, {
          width: columnWidthsDistribution ? columnWidthsDistribution[i] * usableWidth - columnSpacing : columnWidth,
          align: 'left',
        });
        result = Math.max(result, cellHeight);
      });

      return result + rowSpacing;
    };

    const columnContainerWidth = usableWidth / columnCount;
    const columnWidth = columnContainerWidth - columnSpacing;
    const maxY = this.page.height - this.page.margins.bottom;

    let rowBottomY = 0;
    this.on('pageAdded', () => {
      startY = this.page.margins.top;
      rowBottomY = 0;
    });

    // Allow the user to override style for headers
    prepareHeader();

    // Check to have enough room for header and first rows
    if (startY + 3 * computeRowHeight(table.headers) > maxY) {
      this.addPage();
    }

    // Print all headers
    table.headers.forEach((header, i) => {
      this.text(
        typeof header === 'string' ? header : header.label,
        startX +
          (columnWidthsDistribution
            ? columnWidthsDistribution.filter((e, j) => j < i).reduce((acc, v) => acc + v, 0) * usableWidth
            : i * columnContainerWidth),
        startY,
        {
          width: columnWidthsDistribution ? columnWidthsDistribution[i] * usableWidth - columnSpacing : columnWidth,
          align: 'left',
        },
      );
    });

    // Refresh the y coordinate of the bottom of the headers row
    rowBottomY = Math.max(startY + computeRowHeight(table.headers), rowBottomY);

    // Separation line between headers and rows
    this.moveTo(startX, rowBottomY - rowSpacing * 0.5)
      .lineTo(startX + usableWidth, rowBottomY - rowSpacing * 0.5)
      .lineWidth(1)
      .stroke();

    const imageCoordinates: { startX: number; startY: number; image?: string }[][] = [];
    // table.items.forEach(async (item, i) => {
    let heightCells: number[] = [];
    for (let i = 0; i < table.items.length; i++) {
      const item = table.items[i];
      // if (i % 2) {
      //   this.fillColor('#f0eeef')
      //     .fillOpacity(0.3)
      //     .rect(startX - rowSpacing, startY - rowSpacing, usableWidth + rowSpacing, Math.max(...heightCells))
      //     .fill()
      //     .fillOpacity(1)
      //     .fillColor('#444444');
      // }
      let rowHeight: number;
      if (options?.isFlexibleHeight) {
        // check if the previous rows is overlated the pdf
        const previousRowHeight = Math.max(...heightCells);
        if (startY + 2 * previousRowHeight >= maxY) {
          this.addPage();
        } else {
          startY = rowBottomY + rowSpacing;
        }
      } else {
        rowHeight = computeRowHeight(item);

        // Switch to next page if we cannot go any further because the space is over.
        // For safety, consider 3 rows margin instead of just one
        if (startY + 3 * rowHeight < maxY) startY = rowBottomY + rowSpacing;
        else {
          this.addPage();
        }
      }
      heightCells = [];

      // Allow the user to override style for rows
      prepareRow(item, i);
      imageCoordinates.push([]);
      // Print all cells of the current row
      // item.forEach(async (cell, x) => {
      for (let x = 0; x < table?.rows.length; x++) {
        const dataIndex = table?.rows[x].dataIndex;
        const cell = getValueByPath(item, dataIndex);
        const rowOptions = table?.rows[x];
        const itemX =
          startX +
          (columnWidthsDistribution
            ? columnWidthsDistribution.filter((_, j) => j < x).reduce((acc, v) => acc + v, 0) * usableWidth
            : x * columnContainerWidth);
        const cellWidth = columnWidthsDistribution
          ? columnWidthsDistribution[x] * usableWidth - columnSpacing
          : columnWidth;

        if (rowOptions.render) {
          await rowOptions.render(this, cell, item, { startX: itemX, startY, width: cellWidth });
          if (rowOptions?.isImage && rowOptions?.imageOptions?.height) {
            heightCells.push(rowOptions?.imageOptions?.height);
          } else {
            heightCells.push(this.y - startY);
          }
        } else if (rowOptions?.isImage) {
          const imageHeight = rowOptions.imageOptions?.height || 50;
          if (cell) {
            this.image(cell, itemX, startY, { height: imageHeight });
          }
          heightCells.push(imageHeight);
        } else {
          this.text(cell, itemX, startY, {
            width: cellWidth,
            align: rowOptions?.align || 'left',
          });
          heightCells.push(this.heightOfString(cell));
        }
      }
      rowHeight = Math.max(...heightCells);

      // Refresh the y coordinate of the bottom of this row
      rowBottomY = Math.max(startY + rowHeight, rowBottomY);

      // Separation line between rows
      this.moveTo(startX, rowBottomY - rowSpacing * 0.5)
        .lineTo(startX + usableWidth, rowBottomY - rowSpacing * 0.5)
        .lineWidth(0.5)
        .opacity(0.7)
        .stroke()
        .opacity(1); // Reset opacity after drawing the line
    }
    this.x = startX;
    this.moveDown();

    return this;
  }
}
