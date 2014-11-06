require_relative "test_helper"

class TestController < Rulers::Controller
  p '3'
  def index
    p '7'
    "Hello!"
  end
end




class RulersAppTest < Test::Unit::TestCase
  p '1'
  include Rack::Test::Methods
  
  def app
    p '5'
    TestApp.new
  end
  def test_request
    p '4'
    get "/example/route"
    p '4.1'
    assert last_response.ok?
    p '4.2'
    body = last_response.body
    p '4.3'
    assert body["Hello"]
    p '4.4'
  end
end
class TestApp < Rulers::Application
  p '2'
  def get_controller_and_action(env)
    p '6'
    [TestController,"index"]
  end
end