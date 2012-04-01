require 'sinatra/base'

module CardGame
  module Server
    class API < Sinatra::Base
      get '/' do
        "Hello World"
      end
      
      get '/suits' do
        Uno.suits.to_json
      end
    end
  end
end
