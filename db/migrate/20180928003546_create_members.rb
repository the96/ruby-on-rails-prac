class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :member_name, null: false
      t.string :twitter_id, null: false
      t.string :icon_img
      t.string :header_img
      t.text :plofile
      t.timestamps
    end
    add_index :members, :member_name, :unique=>true
  end
end