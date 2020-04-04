class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.belongs_to :product, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
