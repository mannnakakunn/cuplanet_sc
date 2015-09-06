class Cupnoodle < ActiveRecord::Base
	belongs_to :user
    validates :review, length: { maximum: 140 }
end
