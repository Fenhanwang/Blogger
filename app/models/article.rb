class Article < ActiveRecord::Base
	has_many :comments
	# include ActiveModel::ForbiddenAttributesProtection
  # attr_accessible :title, :body
end
