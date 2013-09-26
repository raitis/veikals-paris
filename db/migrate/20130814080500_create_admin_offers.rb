class CreateAdminOffers < ActiveRecord::Migration
  def change
    create_table :admin_offers do |t|
      t.string :store
      t.text :content

      t.timestamps
    end
  end
end
