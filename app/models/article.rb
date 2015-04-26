class Article < ActiveRecord::Base
	def change
		create_table :articles do |t|
			t.string :title
			t.text :body
			t.timestamps
		end
		
	end
  # attr_accessible :title, :body
end
