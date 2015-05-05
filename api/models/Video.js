var Video = {

  // Identity is a unique name for this model and must be in lower case
  identity: 'Video',
  schema: true,
  tableName: 'video',
  // Connection
  // A named connection which will be used to read/write to the datastore
  // Attributes are basic pieces of information about a model
  attributes: {
    name: {
      type: 'string',
      unique: true,
      size: 50,
      required: true
    },
    imgUrl: {
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

module.exports = Video;