class Wall < ActiveRecord::Base
    has_many :wall_memberships
    has_many :users, through: :wall_memberships
end
