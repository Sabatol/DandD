class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :race
      t.string :classe
      t.text :description
      t.integer :pv
      t.integer :pvmax
      t.integer :force
      t.integer :dexterite
      t.integer :intelligence
      t.integer :sagesse
      t.integer :charisme
      t.integer :bourse, default: 0
      t.integer :defense, default: 0
      t.integer :niveau, default: 1
      t.text :competences
      t.text :inventaire
      t.string :image
      t.references :user, index: true
      t.timestamps
    end
  end
end
