class Content < ActiveRecord::Base
	validates :topic, :presence => true, :uniqueness => true
	validates :description, :presence => true
end
