# This migration comes from permissionary (originally 20140406003711)
class CreatePermissionaryVisits < ActiveRecord::Migration
  def change
    create_table :permissionary_visits do |t|
      t.string :ip
      t.string :from
      t.integer :role_id, default: 1
      
      t.timestamps
    end
  end
end
