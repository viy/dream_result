class AddProductsColumns < ActiveRecord::Migration
  def up
    add_column :products, :image, :string
    Product.create_translation_table!({
                                          :name => :string,
                                          :description => :text
                                      })
  end

  def down
    remove_column :products, :image
    Product.drop_translation_table!
  end
end
