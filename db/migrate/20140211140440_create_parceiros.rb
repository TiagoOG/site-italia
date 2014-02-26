class CreateParceiros < ActiveRecord::Migration
  def change
    create_table :parceiros do |t|
      t.string :nome
      t.text :link

      t.timestamps
    end
  end
end
