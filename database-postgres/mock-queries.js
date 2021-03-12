function getSingleProductAsPromise(id) {
  return new Promise((resolve, reject) => {
    resolve({
      "id": 11,
      "name": "Air Minis 250 🦄",
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
        }
      ]
    });
  });
}

module.exports = {
    getSingleProductAsPromise
};
