module.exports = {
  parser: 'babel-eslint',
  extends: 'airbnb-base',
  env: {
    node: true,
  },
  rules: {
    'arrow-parens': [2, 'always'],
    'no-unused-vars': [2, { varsIgnorePattern: 'log', args: 'none' }],
    strict: 0,
    'space-before-function-paren': 0,
    'no-param-reassign': 0,
  },
};
