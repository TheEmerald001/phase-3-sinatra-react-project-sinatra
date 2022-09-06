class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # All routes shall be here
  get "/" do
    { message: "Getting started with my project" }.to_json
  end

end
