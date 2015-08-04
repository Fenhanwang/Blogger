class CreateSmartTrippers < ActiveRecord::Migration
  def change
    create_table :smart_trippers do |t|
      t.integer :last_four_phone_number

      t.timestamps
    end
  end
end
