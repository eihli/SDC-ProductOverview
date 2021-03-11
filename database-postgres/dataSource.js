const postgres = require('postgres');
const {Pool} = require('pg');
let externalPostgresConfig = require('./config.js');
const queries = require('queries');

const DataSourceType = { POSTGRES: "postgres", MOCK: "mock"};

const postgresConfig = {
    type: DataSourceType.POSTGRES,
    config: externalPostgresConfig
};

const mockConfig = {
    type: DataSourceType.MOCK,
    config: {}
};

class PostgresDataSource {
    constructor() {
        this.pool = new Pool(postgresConfig)
        this.pool.connect();
    }

    // Consider using a join rather than multiple queries.
    getSingleProduct(id) {
        let productInfo = {};
        //pull product info from DB
        return new Promise((resolve, reject) => {
            this.pool.query(
                `SELECT * FROM products p WHERE p.id = $1`,
                [id],
                (err, results, fields) => {
                    if (err) {
                        throw(err);
                    } else {
                        productInfo = results['rows'][0] || {};
                        productInfo['features'] = [];
                        //pull features from DB
                        this.pool.query(
                            `SELECT feature, value FROM product_features WHERE product_id = $1`,
                            [id],
                            (err, results, fields) => {
                                if(err) {
                                    throw(err)
                                }
                                productInfo['features'].push(results['rows'][0]);
                                resolve(productInfo);
                            });
                    };
                });
        });
    }

    getSingleProductStyles(id) {
        // TODO: Convert to promise.
        let stylesInfo = {};
        //pull styles from DB
        pool.query(
            `SELECT s.style_id, s.name, s.original_price, s.sale_price, s."default?"
    FROM styles s
    WHERE s.product_id=$1
    `,
            [id],
            (err, results, fields) => {
                if (err) {
                    throw(err);
                } else {
                    stylesInfo.product_id = id;
                    stylesInfo.results =[];
                    styleOne = results.rows[0];
                    styleTwo = results.rows[1];

                    //pull photos from DB
                    pool.query(
                        `SELECT p.style_id, p.thumbnail_url, p.url
          FROM style_photos p
          WHERE p.product_id=$1
          `,
                        [id],
                        (err, results, fields) => {
                            if(err) {
                                throw(err)
                            } else {
                                let photoOne = [];
                                let photoTwo = [];
                                results.rows.map((row) => {
                                    if(row.style_id === 1) {
                                        delete row.style_id
                                        photoOne.push(row);
                                    } else if(row.style_id === 2) {
                                        delete row.style_id
                                        photoTwo.push(row);
                                    }
                                })
                                styleOne.photos = photoOne;
                                styleTwo.photos = photoTwo;

                                //pull skus from DB
                                pool.query(
                                    `SELECT ss.style_id, ss.size, ss.inStock
              FROM style_skus ss
              WHERE ss.product_id=$1
              `,
                                    [id],
                                    (err, results, fields) => {
                                        if(err) {
                                            throw(err)
                                        }

                                        let skuOne = {};
                                        let skuTwo = {};
                                        results.rows.map((row) => {
                                            if(row.style_id === 1) {
                                                delete row.style_id
                                                skuOne[row.size] = row.instock;
                                            } else if(row.style_id === 2) {
                                                delete row.style_id
                                                skuTwo[row.size] = row.instock;
                                            }
                                        })
                                        styleOne.skus = skuOne;
                                        styleTwo.skus = skuTwo;
                                        stylesInfo.results.push(styleOne, styleTwo)
                                        res.status(200).send(stylesInfo)
                                    });
                            };
                        });
                };
            });
    };
});
}

// Pull this mock data out into its own file.
// I just put it here for quick and dirty hacking/testing.
let testProducts = {
    5: {
        "id": 5,
        "name": "Air Minis 250",
        "slogan": "Full court support",
        "description": "This optimized air cushion pocket reduces impact but keeps a perfect balance underfoot.",
        "category": "Basketball Shoes",
        "default_price": "0",
        "features": [
            {
                "feature": "Sole",
                "value": "Rubber"
            },
            {
                "feature": "Material",
                "value": "FullControlSkin"
            },
        ],
    }
};

class MockDataSource {
    constructor(config) { }

    getSingleProduct(id) {
        return new Promise((resolve, reject) => {
            setTimeout(() => {
                resolve(testProducts[id]);
            }, 100);
        });
    }

    getSingleProductStyles(id) {
        return new Promise((resolve, reject) => {
            setTimeout(() => {
                resolve({
                    "product_id": "1",
                    "results": [
                        {
                            "style_id": 1,
                            "name": "Forest Green & Black",
                            "original_price": "140",
                            "sale_price": "0",
                            "default?": 1,
                            "photos": [
                                {
                                    "thumbnail_url": "urlplaceholder/style_1_photo_number_thumbnail.jpg",
                                    "url": "urlplaceholder/style_1_photo_number.jpg"
                                },
                                {
                                    "thumbnail_url": "urlplaceholder/style_1_photo_number_thumbnail.jpg",
                                    "url": "urlplaceholder/style_1_photo_number.jpg"
                                }
                                // ...
                            ],
                            "skus": {
                                "XS": 8,
                                "S": 16,
                                "M": 17,
                                "L": 10,
                                "XL": 15
                            }
                        },
                        {
                            "style_id": 2,
                            "name": "Desert Brown & Tan",
                            "original_price": "140",
                            "sale_price": "0",
                            "default?": 0,
                            "photos": [
                                {
                                    "thumbnail_url": "urlplaceholder/style_2_photo_number_thumbnail.jpg",
                                    "url": "urlplaceholder/style_2_photo_number.jpg"
                                }
                            ],
                            "skus": {
                                "S": 16,
                                "XS": 8,
                                "M": 17,
                                "L": 10,
                                "XL": 15,
                                "XXL": 6
                            }
                        }]
                })
            }, 100);
        });
    }
}

class DataSource {
    constructor(config) {
        if (config.type == DataSourceType.POSTGRES) {
            this._dataSource = new PostgresDataSource(config);
        } else if (config.type == DataSourceType.MOCK) {
            this._dataSource = new MockDataSource(config);
        }
    }

    getSingleProduct(id) {
        return this._dataSource.getSingleProduct(id);
    }

    getSingleProductStyles(id) {
        return this._dataSource.getSingleProductStyles(id);
    }
}

module.exports = {
    DataSource,
    DataSourceType,
    postgresConfig,
    mockConfig
};
