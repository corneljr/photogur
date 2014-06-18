class Comment < ActiveRecord::Base
	belongs_to :picture
	belongs_to :user

	validates_presence_of :text
end