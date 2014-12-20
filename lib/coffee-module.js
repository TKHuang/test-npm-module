var FB;

FB = require('fb');

module.exports.test = function(name, title) {
  return {
    name: name,
    title: title
  };
};

module.exports.getFriends = function(token, userId, cb) {
  FB.setAccessToken(token);
  return FB.api(userId, {
    fields: ['friends']
  }, function(result) {
    return cb(null, result.friends.data);
  });
};
