class CreateProductServiceTable < ActiveRecord::Migration
  def up
    create_table "products_services", :id => false do |t|
      t.column :product_id, :integer
      t.column :service_id, :integer
    end
  end

  def down
    drop_table :products_services
  end
end
