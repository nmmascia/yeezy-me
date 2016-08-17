module.exports = {
    parser: 'babel-eslint',
    extends: 'airbnb-base',
    env: {
        node: true,
    },
    rules: {
        indent: [2, 4, { SwitchCase: 1 }],
        'arrow-body-style': 0,
        'func-names': 0,
        'no-param-reassign': 0,
        'import/newline-after-import': 0,
        'no-global-assign': 0,
        'no-unsafe-negation': 0,
        'no-unused-vars': [2, { varsIgnorePattern: '(log|err|next)' }],
        strict: 0,
    }
}
