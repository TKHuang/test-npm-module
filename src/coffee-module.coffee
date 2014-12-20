FB = require('fb')

module.exports.test = (name,title) ->
  name: name
  title: title

module.exports.getFriends = (token, userId, cb) ->
  #console.log '你好台灣', token
  FB.setAccessToken token
  FB.api userId, fields: [ 'friends' ], (result) ->
    #console.log 'result', result.friends.data
    return cb(null, result.friends.data)