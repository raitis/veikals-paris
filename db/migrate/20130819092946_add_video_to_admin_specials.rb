class AddVideoToAdminSpecials < ActiveRecord::Migration
  def change
    add_column :admin_specials, :video, :string
  end
end
