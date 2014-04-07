# This migration comes from clientalk (originally 20140407001200)
class CreateClientalkLayoutOptions < ActiveRecord::Migration
  def change
    create_table :clientalk_layout_options do |t|
      t.string :title
      t.string :favicon
      t.string :logo
      t.string :mobile_logo
      t.string :bg_image
      t.integer :account_id
      t.integer :status

      t.timestamps
    end
  end
end
