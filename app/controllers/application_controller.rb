class ApplicationController < ActionController::Base
  protect_from_forgery
  http_basic_authenticate_with :name => "gumi", :password => "vocaloid1000"  
end
