class CreateSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :series do |t|
      t.string :title
      t.string :actors
      t.integer :seasons
      t.text :synopsis
      t.string :poster

      t.timestamps
    end
  end
end
