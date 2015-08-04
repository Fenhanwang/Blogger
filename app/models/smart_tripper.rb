class SmartTripper < ActiveRecord::Base
	has_attached_file :metro_card_img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :metro_card_img, :content_type => /\Aimage\/.*\Z/
end
