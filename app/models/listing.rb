class Listing < ActiveRecord::Base
    belongs_to :owner
    belongs_to :user
end