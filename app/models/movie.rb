class Movie < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true
	validates_presence_of :name, :rating
	validates :rating, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
	validates_length_of :description, :maximum => 140
end
