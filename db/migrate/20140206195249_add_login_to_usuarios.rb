class AddLoginToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :login, :string
  end
end
