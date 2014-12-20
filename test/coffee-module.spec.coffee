require 'coffee-errors'

chai = require 'chai'
sinon = require 'sinon'
should = chai.should()
# using compiled JavaScript file here to be sure module works
coffeeModule = require '../lib/coffee-module.js'

expect = chai.expect
chai.use require 'sinon-chai'

describe 'coffee-module', ->
  it 'works', ->
    name = 'TK'
    title = 'TKHuang'
    actual = coffeeModule.test name, title
    actual.should.be.a 'Object'
    actual.title.should.equal 'TKHuang'
    actual.name.should.equal 'TK'
  it 'get friends', ->
    token = 'CAACEdEose0cBALhYCiZAyyhjBY6sAiWJKTrKyNJatqtZBeUZCXZCjB0QXSMuPZAfqwvZBJkOZBHxGZAZCcZCU3xEhSJQKZAv1KkIgoDqqouHCL85AIxGCLlEY4JcsPT4aVDFNqavVGeeoPfUmsbkcm0TOSnCxBvsQOi1Qiplrjx62zm9cKGb8P1o7vKfdgT3W8ZCyRBWzsc98WHEBwztVjTLnbZCBIYj73laSqL0ZD'
    userId = '100001664432801'

    coffeeModule.getFriends token, userId, (err, result) ->
      result.should.be.a 'Array'

      firstFriend = result[0]
      #console.log(firstFriend)
      firstFriend.should.have.property 'id'
      firstFriend.should.have.property 'name'
