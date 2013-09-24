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
      t.integer :facebook_uid
      t.string :facebook_token
      t.text :short_bio
      t.integer :gender
      t.date :birthday
      t.string :skype_name
      t.string :twitter_token
      t.string :twitter_token_secret

      t.timestamps
    end
  end
end
