class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :city
      t.string :location
      t.datetime :date_and_time
      t.string :external_link
      t.references :organizer, foreign_key: true
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
