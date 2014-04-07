# This migration comes from clientalk (originally 20140406225805)
class CreateClientalkPages < ActiveRecord::Migration
  def change
    create_table :clientalk_pages do |t|
      t.string :name
      t.string :description
      t.text :information
      t.integer :parent_id
      t.integer :display
      t.string :image
      t.integer :account_id
      t.integer :status

      t.timestamps
    end
  end
end
