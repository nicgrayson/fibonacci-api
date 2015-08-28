#!/usr/bin/env ruby
require 'sinatra'

set :environment, :production

get '/' do
  "To use this fibonacci number generator please hit /seed_number"
end
get '/:num' do
  get_n_fibonacci_numbers(params['num'].to_i).to_s
end

private
def get_n_fibonacci_numbers(num)
  case num
  when 0
    return [0]
  when 1
    return [0,1]
  else
    (1..num-2).inject([0,1]) do |result, n|
      result << (result[n - 1] + result[n])
    end
  end
end
