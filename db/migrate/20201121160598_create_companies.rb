class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name,      null: false
      t.string :title,     null: false
      t.string :email,     null: false
      t.string :phone,     null: false
      t.string :address,   null: false
      t.string :url,       null: false
      t.string :seo_title, null: false
      t.text   :seo_description, default: ''
      t.text   :seo_keywords,    default: ''

      t.timestamps
    end
    add_index :companies, :name,  unique: true
    add_index :companies, :email, unique: true
  end
end
