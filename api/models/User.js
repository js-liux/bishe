var User = {

  // Identity is a unique name for this model and must be in lower case
  identity: 'User',
  schema: true,
  tableName: 'user',

  // Connection
  // A named connection which will be used to read/write to the datastore
  // Attributes are basic pieces of information about a model
  attributes: {
    name: {
      type: 'string',
      unique: true,
      size: 24
    },
    email: {
      type: 'string',
      unique: true,
      size: 50
    },
    telephone: {
      type: 'integer',
      size: 50
    },
    sex: {
      type: 'boolean',
    },
    abstract: {
      type: 'string',
      size: 1000
    },
    weiboAddress: {
      type: 'string',
      size: '50'
    },
    qqNum: {
      type: 'integer',
      size: '20'
    },
    img: {
      type: 'string',
      size: 100,
      defaultsTo: 'xjs.jpg'
    },
    password: {
      type: 'string',
      size: 100
    },
    age: {
      type: 'integer'
    },
    products: {
      collection: 'AllProduct',
      via: 'owner'
    },
    quetions: {
      collection: 'Question',
      via: 'owner'
    },
    videos: {
      collection: 'Video',
      via: 'owner'
    },
    Articles: {
      collection: 'Article',
      via: 'owner'
    }
  }
};

module.exports = User;