class ChangeEntryToText < ActiveRecord::Migration
	def change
		change_table :posts do |t|
  			t.change :entry, :text
		end
	end
end
