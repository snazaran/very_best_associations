class Venue < ActiveRecord::Base
  validates :name, :presence => :true, :uniqueness => { :scope => :address}
  belongs_to :venue
  has_many :favorites
end
