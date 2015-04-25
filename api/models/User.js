var User = {

  // Identity is a unique name for this model and must be in lower case
  identity: 'user',

  // Connection
  // A named connection which will be used to read/write to the datastore
  // Attributes are basic pieces of information about a model
  attributes: {
    name: {
      type: 'string',
      unique: true,
      size: 24
    },
    age: {
      type: 'integer'
    }
  }
};

module.exports = User;