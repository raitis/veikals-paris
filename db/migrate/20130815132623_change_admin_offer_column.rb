class ChangeAdminOfferColumn < ActiveRecord::Migration
  def up
  	change_column :admin_offers, :phone, :integer
  end

  def down
  end
end
