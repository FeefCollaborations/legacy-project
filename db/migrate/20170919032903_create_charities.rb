class CreateCharities < ActiveRecord::Migration[5.1]
  def change
    create_table :charities do |t|
      t.references :group, null: false
      t.string :name, null: false
      t.string :description, null: false
      t.string :banner_image_url
      t.string :donation_url
      t.string :website_url
      t.timestamps
    end
  end
end
