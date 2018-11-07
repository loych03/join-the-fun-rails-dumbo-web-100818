class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
        t.string :name
      t.belongs_to :taxi, index: true, foreign_key: true
      t.belongs_to :passenger, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
