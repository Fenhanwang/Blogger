class AddAttachmentMetroCardImgToSmartTrippers < ActiveRecord::Migration
  def self.up
    change_table :smart_trippers do |t|
      t.attachment :metro_card_img
    end
  end

  def self.down
    remove_attachment :smart_trippers, :metro_card_img
  end
end
