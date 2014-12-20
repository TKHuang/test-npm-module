require 'coffee-errors'

chai = require 'chai'
sinon = require 'sinon'

# using compiled JavaScript file here to be sure module works
coffeeModule = require '../lib/coffee-module.js'

expect = chai.expect
chai.use require 'sinon-chai'

describe 'coffee-module', ->
  it 'works', ->
    name = 'TK'
    title = 'TKHuang'
    actual = coffeeModule name, title
    expect(actual).to.be.Object
    expect(actual).title.to.eql 'TKHuang'
    expect(actual).name.to.eql 'TK'
