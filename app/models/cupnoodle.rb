class Cupnoodle < ActiveRecord::Base
	has_many :evaluations
    has_many :users, through: :cupnoodle_has_users
    validates :review, length: { maximum: 140 }
end
