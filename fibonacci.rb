require 'sinatra'

get '/:num' do
  "Number provided is: #{params['num']}"
end
