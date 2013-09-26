class CreateAdminStores < ActiveRecord::Migration
  def change
    create_table :admin_stores do |t|
      t.string :name
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
