class AddAttachmentImageToAdminSpecials < ActiveRecord::Migration
  def self.up
    change_table :admin_specials do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :admin_specials, :image
  end
end
