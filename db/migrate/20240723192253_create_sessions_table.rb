class CreateSessionsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.string :title
      t.integer :duration
      t.integer :conference_id
      t.integer :speaker_id
    end
  end
end
