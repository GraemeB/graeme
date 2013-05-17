class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
  belongs_to :user
  attr_accessible :description, :title, :comments_attributes
  accepts_nested_attributes_for :comments
end
