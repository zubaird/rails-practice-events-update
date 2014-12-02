class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :description
      t.integer :capacity
      t.boolean :requires_id, default: false, null: false
      t.text :directions
      t.timestamps
    end
  end
end
