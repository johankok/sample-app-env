require 'sinatra'
require 'prometheus/client'

prometheus = Prometheus::Client.registry
example_counter = Prometheus::Client::Counter.new(:example_counter, docstring: 'A counter that increases when someone calls /increase')
prometheus.register(example_counter)

get '/' do
  erb :index
end

get '/increase' do
  example_counter.increment
  erb :increase
end
