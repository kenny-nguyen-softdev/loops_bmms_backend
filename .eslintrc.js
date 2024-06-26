module.exports = {
  parser: '@typescript-eslint/parser',
  parserOptions: {
    ecmaVersion: 2020, // Allows for the parsing of modern ECMAScript features
    sourceType: 'module',
  },
  extends: [
    'plugin:@typescript-eslint/recommended', // recommended rules from the @typescript-eslint/eslint-plugin
    //   'plugin:prettier/recommended', // Enables eslint-plugin-prettier and eslint-config-prettier. This will display prettier errors as ESLint errors. Make sure this is always the last configuration in the extends array.
  ],
  rules: {
    // Place to specify ESLint rules. Can be used to overwrite rules specified from the extended configs
    // e.g. "@typescript-eslint/explicit-function-return-type": "off",
    '@typescript-eslint/camelcase': 'off',
    '@typescript-eslint/no-explicit-any': 'off',
    '@typescript-eslint/no-throw-literal': 'off',
    '@typescript-eslint/explicit-module-boundary-types': 'off',
    quotes: [1, 'single', {
      avoidEscape: true
    }],
    semi: ['error', 'always'],
    'no-unused-vars': ['error', {
      vars: 'all'
    }],
  },
};