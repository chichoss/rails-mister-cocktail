class CreateDoses < ActiveRecord::Migration[5.1]
  def change
    create_table :doses do |t|
      t.string :description
      t.references  :cocktail, foreign_key: true, index: true
      t.references  :ingredient, foreign_key: true, index: true


      t.timestamps
    end
  end
end
