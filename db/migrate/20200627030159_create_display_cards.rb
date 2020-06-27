class CreateDisplayCards < ActiveRecord::Migration[5.1]
  def change
    create_table :display_cards do |t|
      t.string :displaycon

      t.timestamps
    end
  end
end
