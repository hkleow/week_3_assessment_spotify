require_relative '../../config/application'

class CreateSongs < ActiveRecord::Migration
	def change
		create_table :songs do |t|
			t.string :title
			t.string :artist
			t.string :duration
			t.timestamps null: false
		end	
	end	
end	