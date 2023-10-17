class CreateDirectors < ActiveRecord::Migration[7.1]
  def change
    create_table :directors do |t|
      t.string :name, null: false
      t.string :nationality, null: false
      t.date :date_of_birth, null: false
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
