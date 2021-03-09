class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :google_token
      t.string :google_refresh_token
      t.string :uid
      t.string :email
    end
  end
end
