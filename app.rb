$stdout.sync = true
$stderr.sync = true

require 'sinatra'
require 'sinatra/json'
require 'json'
require 'logger'

port = ENV['PORT'] || 8080
puts "STARTING SINATRA on port #{port}"
set :port, port
set :bind, '0.0.0.0'
set :logger, Logger.new(STDOUT)
set :logging, Logger::DEBUG

get '/' do
  logger.info("Your request: #{JSON.pretty_generate(request.env)}")
  "Hello World Part 4 #{request.inspect}".strip
end
