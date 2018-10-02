class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string  :member_name, null: false
      t.string  :icon_img
      t.string  :header_img
      t.string  :title
      t.text    :description
      t.integer :align, default: 0
      t.text :profile
      t.timestamps
    end
    add_index :members, :member_name, :unique=>true
  end
end