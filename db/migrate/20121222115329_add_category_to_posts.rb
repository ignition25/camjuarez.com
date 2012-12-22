class AddCategoryToPosts < ActiveRecord::Migration
  def change
  	change_table(:posts) do |t|
  		t.string :category, :default => "News"
	end
  end
end
