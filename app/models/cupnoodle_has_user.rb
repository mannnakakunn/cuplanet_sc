class CupnoodleHasUser < ActiveRecord::Base
  belongs_to :cupnoodle
  belongs_to :user
end
