var Answer = {

  // Identity is a unique name for this model and must be in lower case
  identity: 'Answer',
  schema: true,
  tableName: 'answer',
  // Connection
  // A named connection which will be used to read/write to the datastore
  // Attributes are basic pieces of information about a model
  attributes: {
    content: {
      type: 'text'
    },
    owner: {
      model: 'Question'
    }
  }
};

module.exports = Answer;