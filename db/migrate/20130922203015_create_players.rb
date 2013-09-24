class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :email
      t.string :password
      t.integer :location_id
      t.float :latitude
      t.float :longitude
      t.string :avatar_url
      t.integer :fb_uid
      t.string :fb_token
      t.text :short_bio

      t.timestamps
    end
  end
end
