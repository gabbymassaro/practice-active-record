class CreateSpeakersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :speakers do |t|
      t.string :name
    end
  end
end
