const pg = require('pg-promise')({
    connect() {
        // console.log('pg.connect');
    },
    disconnect() {
        // console.log('pg.disconnect');
    },
    query() {
        // console.log('pg.query');
    },
    task() {
        // console.log('pg.task');
    },
    transact() {
        // console.log('pg.transact');
    },
    error() {
        // console.log('pg.error');
    },
});

const connection = {
    host: process.env.DB_HOST || 'localhost',
    port: process.env.DB_PORT || 5432,
    database: process.env.DB_NAME || 'yeezy',
    user: process.env.DB_USERNAME || '',
    password: process.env.DB_PASSWORD || '',
};

module.exports = pg(connection);
