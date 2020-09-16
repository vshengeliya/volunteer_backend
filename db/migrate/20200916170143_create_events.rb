class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :value_proposition
      t.string :type
      t.integer :quantity
      t.string :image
      t.string :details
      t.date :date
      t.string :city
      t.string :state
      t.integer :user_id

      t.timestamps
    end
  end
end
