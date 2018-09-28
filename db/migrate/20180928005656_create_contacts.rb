class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.belongs_to :member, null: false
      t.integer :type, default: 0, null: false
      t.string :label, null: false
      t.string :url
      t.timestamps
    end
  end
end
