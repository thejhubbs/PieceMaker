# This migration comes from permissionary (originally 20140406003735)
class CreatePermissionaryRoles < ActiveRecord::Migration
  def change
    create_table :permissionary_roles do |t|
      t.string :name
      t.string :description
      t.integer :parent_id
      t.boolean :visit_option, default: false

      t.timestamps
    end
  end
end
