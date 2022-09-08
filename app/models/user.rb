class User < ActiveRecord::Base
    belongs_to :owner
    belongs_to :listing
end