#!/usr/bin/env ruby
require 'sinatra'

set :environment, :production

get '/' do
  "To use this fibonacci number generator please hit /seed_number"
end
get '/:num' do
  "Number provided is: #{params['num']}"
end
