class AddVotesToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :votes_count, :integer, default: 0
  end
end
