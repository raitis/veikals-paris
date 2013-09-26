class AddPhoneToAdminOffer < ActiveRecord::Migration
  def change
    add_column :admin_offers, :phone, :integer
  end
end
