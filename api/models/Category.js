var Category = {

  // Identity is a unique name for this model and must be in lower case
  identity: 'Category',
  schema: true,
  tableName: 'category',

  // Connection
  // A named connection which will be used to read/write to the datastore
  // Attributes are basic pieces of information about a model
  attributes: {
    name: {
      type: 'string',
      unique: true,
      size: 24,
      required: true
    }
  }
};

module.exports = Category;