module.exports = function(User) {
  // Should send back all the data for the current user (not working yet)
  User.me = function(custom, cb) {
    var user = this;
    cb(null, {
      "foo": "bar",
      "request": custom
    });
    return custom;
  }
  User.remoteMethod(
    'me',
    {
      http: {path: '/me', verb: 'get'},
      accepts: [
        {
          arg: 'custom',
          type: 'object',
          http: {
            source: 'req'
          }
        }
      ],
      returns: {arg: 'me', type: 'string'}
    }
  );

  // simply mirrors whatever is posted to check http requests
  User.mirror = function(x, y, z, callback) {
    callback(null, {
      "x": x,
      "y": y,
      "z": z
    });
  }
  User.remoteMethod(
    'mirror',
    {
      accepts: [
        {arg: 'x', type: 'string'},
        {arg: 'y', type: 'string'},
        {arg: 'z', type: 'string'}
      ],
      http: {path: '/mirror', verb: 'post'},
      returns: {arg: 'mirror', type: 'string'}
    }
  )
};































































































