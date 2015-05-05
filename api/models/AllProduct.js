var AllProduct = {

  // Identity is a unique name for this model and must be in lower case
  identity: 'AllProduct',
  schema: true,
  tableName: 'all_product',

  // Connection
  // A named connection which will be used to read/write to the datastore
  // Attributes are basic pieces of information about a model
  attributes: {
    name: {
      type: 'string',
      unique: true,
      size: 100,
      required: true
    },
    imgUrl: {
      type: 'string',
      size: 200
    },
    desc: {
      type: 'string',
      size: 500
    },
    praise: {
      type: 'integer'
    },
    price: {
      type: 'float'
    },
    detailUrl: {
      type: 'string',
      size: 50
    },
    buyUrl: {
      type: 'string',
      size: 50
    },
    content: {
      type: 'text'
    },
    owner: {
      model: 'User'
    },
    ownerCategory: {
      model: 'Category'
    }

  }
};

module.exports = AllProduct;