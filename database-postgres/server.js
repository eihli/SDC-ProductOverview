// server.jsx
require('newrelic');
const express = require('express');
const app = express();
let db;
if (process.env["SDC_ENV"] == "local") {
    db = require('./mock-queries');
} else {
    db = require('./queries');
}
const process = require('process');

const PORT = 4000;
app.use(express.static('../client/dist')); // Host your dist folder up to the server
app.use(express.json()); // Alternative to BodyParser


app.get('/products/list', db.getProductList)

app.get('/products/:product_id', ((req, res)) => {
    let resultPromise = db.getSingleProductAsPromise(req.params.product_id)
    resultPromise.then((row) => {
        res.status(200).json(row);
    });
})

app.get('/products/:product_id/styles', db.getSingleProductStyles)

// Listening for requests on the PORT
app.listen(PORT, () => {
    console.log(`Serving up now at ${PORT}`)
});
