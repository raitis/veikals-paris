class CreateAdminSpecials < ActiveRecord::Migration
  def change
    create_table :admin_specials do |t|
      t.string :title
      t.text :content
      t.string :image
      t.boolean :is_published
      t.date :posted

      t.timestamps
    end
  end
end
