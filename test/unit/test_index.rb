require 'test_helper'

class TestIndex < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    CardGame::Server::API
  end

  def test_index
    get '/'
    assert last_response.ok?
    assert_equal("Hello World", last_response.body)
  end
end