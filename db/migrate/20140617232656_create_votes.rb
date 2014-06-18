class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :polarity
      t.integer :picture_id

      t.timestamps
    end
  end
end