class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # All routes shall be here
  # This is to prevent stupid errors and is set as a frindlier welcome
  get "/" do
    { message: "Getting started with my project" }.to_json
  end

  ## Betterly defined routes are here

  # i) C: Create a user
  post '/users' do
    user = User.create(
      name: params[:name],
      username: params[:username],
      email: params[:email],
      phone_number: params[:phone_number],
      age: params[:age],
      password: params[:password]
    )
    user.to_json
  end

  # ii) R: Get a user
  get "/users" do
    users = User.all.order(:name)
    users.to_json
  end
  # iii) C: Create an owner
  post '/owners' do
    owner = Owner.create(
      name: params[:name],
      username: params[:username],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    owner.to_json
  end
  
  # iv) R: Get an owner
  get "/owners" do
    owners = Owner.all.order(:name)
    owners.to_json
  end

  # v) C: Create a listing
  post '/listings' do
    listing = Listing.create(
      name: params[:name],
      city: params[:city],
      location_url: params[:location_url],
      image_url: params[:image_url],
      price: params[:price],
      rating: params[:rating]
    )
    listing.to_json
  end
  # vi) R: Get listings
  get "/listings" do
    listings = Listing.all.order(:price)
    listings.to_json
  end

  #vii) D: Delete a user
  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

  # viii) U: Update a user details
  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(
      name: params[:name],
      username: params[:username],
      email: params[:email],
      phone_number: params[:phone_number],
      age: params[:age],
      password: params[:password]
    )
    user.to_json
  end
   #ix) D: Delete an owner
   delete '/owners/:id' do
    owner = Owner.find(params[:id])
    owner.destroy
    owner.to_json
  end

  # x) U: Update an owner details
  patch '/owners/:id' do
    owner = Owner.find(params[:id])
    owner.update(
      name: params[:name],
      username: params[:username],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    owner.to_json
  end
   #xi) D: Delete a listing
   delete '/listings/:id' do
    listing = Listing.find(params[:id])
    listing.destroy
    listing.to_json
  end

  # xii) U: Update a listings detail
  patch '/listings/:id' do
    listing = Listing.find(params[:id])
    listing.update(
      name: params[:name],
      city: params[:city],
      location_url: params[:location_url],
      image_url: params[:image_url],
      price: params[:price],
      rating: params[:rating]      
    )
    listing.to_json
  end


end
