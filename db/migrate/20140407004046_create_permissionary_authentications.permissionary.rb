# This migration comes from permissionary (originally 20140406003806)
class CreatePermissionaryAuthentications < ActiveRecord::Migration
  def change
    create_table :permissionary_authentications do |t|
      t.string :provider
      t.string :uid
      t.string :password_digest
      t.string :oauth_token
      t.integer :account_id
      t.datetime :oauth_expiration

      t.timestamps
    end
  end
end
