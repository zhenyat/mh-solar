class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string  :name,            null: false
      t.string  :title,           null: false
      t.text    :abstract,        null: false
      t.integer :position
      t.integer :status,          null: false, default: 0, limit: 1  # default: active
      t.string  :url,             null: false
      t.string  :seo_title,       null: false
      t.text    :seo_keywords,    null: false, default: ''
      t.text    :seo_description, null: false, default: ''

      t.timestamps
    end
    add_index :categories, :name,   unique: true
    add_index :categories, :title,  unique: true
    add_index :categories, :url,    unique: true
  end
end