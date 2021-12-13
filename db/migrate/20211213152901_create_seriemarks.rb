class CreateSeriemarks < ActiveRecord::Migration[6.0]
  def change
    create_table :seriemarks do |t|
      t.references :serie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
