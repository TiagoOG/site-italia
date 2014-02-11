class CreateParceiros < ActiveRecord::Migration
  def change
    create_table :parceiros do |t|
      t.string :nome
      t.string :logo
      t.string :link

      t.timestamps
    end
  end
end
