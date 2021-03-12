const postgres = require('postgres');
const {Pool} = require('pg');
let postgresConfig = require('../database-postgres/config.js');
const pool = new Pool(postgresConfig)
pool.connect();
//Get all products list


const db = require('../database-postgres/queries');

let resultPromise = pool.query(`SELECT * FROM products LIMIT $1`, [10]);

let singleProduct = db.getSingleProductAsPromise(5);
singleProduct.then((rows) => {
    console.log(rows);
});
