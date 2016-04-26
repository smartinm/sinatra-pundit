require 'sinatra'
require 'sinatra/pundit'

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  %w(admin member).include?(username)
end

configure do
  set :show_exceptions, :after_handler
  error Pundit::NotAuthorizedError do
    status 403
    body "Forbidden"
  end
end

current_user do
  request.env['REMOTE_USER']
end

get '/' do
  "Hello World!"
end

get '/admin' do
  authorize :example, :access?
  "Restricted Admin Area"
end
