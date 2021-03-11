// server.jsx
require('newrelic');
const process = require('process');
const express = require('express');
const app = express();
const db = require('./queries');
const dataSource = require('./dataSource');
const PORT = 4000;

let data;

if (process.env.DATA_SOURCE == dataSource.DataSourceType.MOCK) {
    data = new dataSource.DataSource(
        dataSource.mockConfig
    );
} else if (process.env.DATA_SOURCE == dataSource.DataSourceType.POSTGRES) {
    data = new dataSource.DataSource(
        dataSource.postgresConfig
    );
    console.log(data);
} else {
    throw(`Unknown data source type ${process.env.DATA_SOURCE}`)
}

app.use(express.static('../client/dist')); // Host your dist folder up to the server
app.use(express.json()); // Alternative to BodyParser

function getSingleProduct(req, res) {
    data.getSingleProduct(5).then((product) => {
        res.status(200).send(product);
    });
}

function getSingleProductStyles(req, res) {
    data.getSingleProductStyles(5).then((product) => {
        res.status(200).send(product);
    });
}

app.get('/products/list', db.getProductList)
app.get('/products/:product_id', getSingleProduct)
app.get('/products/:product_id/styles', getSingleProductStyles)

// Listening for requests on the PORT
app.listen(PORT, () => {
    console.log(`Serving up now at ${PORT}`)
});
