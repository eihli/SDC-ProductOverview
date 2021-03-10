const DataSource = require("../database-postgres/dataSource");

const dataSource = new DataSource.DataSource(DataSource.mockConfig);

dataSource.getSingleProduct(5).then((product) => {
    console.assert(
        product.id == 5,
        "Expected data source to return a promise with a value with id 5"
    );
});
