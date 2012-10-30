class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.integer :basic_program
      t.integer :express_program
      t.text :description
      t.string :image
      t.timestamps
    end
  end
end
