var Article = {

  // Identity is a unique name for this model and must be in lower case
  identity: 'Article',
  schema: true,
  tableName: 'article',
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
    praise: {
      type: 'integer'
    },
    intro: {
      type: 'text'
    },
    imgUrl: {
      type: 'string',
      size: 50
    },
    content: {
      type: 'text'
    },
    state: {
      type: 'boolean'
    },
    owner: {
      model: 'User'
    }
  }
};

module.exports = Article;