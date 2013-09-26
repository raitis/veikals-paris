class AddAttachmentImageToAdminOffers < ActiveRecord::Migration
  def self.up
    change_table :admin_offers do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :admin_offers, :image
  end
end
