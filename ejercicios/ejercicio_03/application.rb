require 'sinatra/base'

class MyApplication < Sinatra::Base
  get '/' do
    'Hello World!'
  end

	get '/:data' do
    params[:data].reverse
  end

end
