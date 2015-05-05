var Question = {

  // Identity is a unique name for this model and must be in lower case
  identity: 'Question',
  schema: true,
  tableName: 'question',
  // Connection
  // A named connection which will be used to read/write to the datastore
  // Attributes are basic pieces of information about a model
  attributes: {
    title: {
      type: 'text',
    },
    answers: {
      collection: 'Answer',
      via: 'owner'
    },
    owner: {
      model: 'User'
    },
    deleted: {
      type: 'boolean'
    }
  }
};

module.exports = Question;