require 'sinatra/base'

module CardGame
  module Server
    class API < Sinatra::Base
      get '/' do
        "Hello World"
      end
    end
  end
end
