class CreateCreativeFields < ActiveRecord::Migration[5.2]
  def change
    create_table :creative_fields do |t|
      t.belongs_to :member, null: false
      t.string :field, null: false

      t.timestamps
    end
  end
end
