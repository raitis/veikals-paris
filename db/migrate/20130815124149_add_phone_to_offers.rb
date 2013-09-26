class AddPhoneToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :phone, :string
  end
end
