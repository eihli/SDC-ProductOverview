// server.jsx
require("newrelic");
const express = require("express");
const app = express();
const db = require("./queries");
const PORT = 4000;
app.use(express.static("../client/dist")); // Host your dist folder up to the server
app.use(express.json()); // Alternative to BodyParser

app.get("http://18.218.213.181/products/list", db.getProductList);
app.get("http://18.218.213.181/products/:product_id", db.getSingleProduct);
app.get(
  "http://18.218.213.181/products/:product_id/styles",
  db.getSingleProductStyles
);

// Listening for requests on the PORT
app.listen(PORT, () => {
  console.log(`Serving up now at ${PORT}`);
});
