var Product = {

  // Identity is a unique name for this model and must be in lower case
  identity: 'Product',
  schema: true,
  tableName: 'product',
  // Connection
  // A named connection which will be used to read/write to the datastore
  // Attributes are basic pieces of information about a model
  attributes: {
    name: {
      type: 'string',
      unique: true,
      size: 24,
      required: true
    },
    img: {
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
    url: {
    	type: 'string',
    	size: 50
    },
    buy: {
    	type: 'string',
    	size: 50
    },
    content: {
    	type: 'text'
    },
    owner: {
    	model: 'User'
    }
  }
};

module.exports = Product;