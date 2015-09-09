class User < ActiveRecord::Base
has_many :evaluations
has_many :cupnoodles, through: :cupnoodle_has_users
end
