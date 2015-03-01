module.exports = function(User) {
  User.me = function(cb) {
    cb(null, {
      "user": User.current
    });
  }
  User.remoteMethod(
    'me',
    {
      http: {path: '/me', verb: 'get'},
      returns: {arg: 'me', type: 'string'}
    }
  );
};

























