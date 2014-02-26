class AddAttachmentLogoToParceiros < ActiveRecord::Migration
  def self.up
    change_table :parceiros do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :parceiros, :logo
  end
end
