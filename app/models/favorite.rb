class Favorite < ActiveRecord::Base
  validates :user_id, :presence => :true
  validates :dish_id, :presence => :true
  validates :cuisine_id, :presence => :true
  validates :user_id, :uniqueness => { :scope => :dish_id}
  belongs_to :user
  belongs_to :venue
  belongs_to :dish
end
