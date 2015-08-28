require_relative 'spec_helper.rb'

describe "Fibonacci API" do
  it "shows usage on /" do
    expect(get '/').to be_ok
  end

  it "echos the number" do
    expect(get('/1234').body).to eql "Number provided is: 1234"
  end
end
