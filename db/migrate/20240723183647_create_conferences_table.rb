class CreateConferencesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :conferences do |t|
      t.string :name
      t.integer :year
    end
  end
end
