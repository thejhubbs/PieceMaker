# This migration comes from permissionary (originally 20140406003651)
class CreatePermissionaryAccounts < ActiveRecord::Migration
  def change
    create_table :permissionary_accounts do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :username
      t.string   :email
      t.integer  :role_id, default: 1
      t.datetime :remember_me_created
      t.datetime :reset_password_sent_at
      t.boolean  :email_confirmed, default: false
      t.string   :email_token
      t.datetime :first_try
      t.integer  :times_tried, default: 0
      t.integer  :sign_in_count, default: 0

      t.timestamps
    end
  end
end
