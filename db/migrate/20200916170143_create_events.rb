class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :value_proposition
      t.string :event_type
      t.integer :quantity
      t.string :image
      t.string :details
      t.string :date
      t.string :city
      t.string :state
      t.integer :user_id

      t.timestamps
    end
  end
end
