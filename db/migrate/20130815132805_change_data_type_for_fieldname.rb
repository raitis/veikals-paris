class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def self.up
    change_table :admin_offers do |t|
      t.change :phone, :string
    end
  end

  def down
  end
end
