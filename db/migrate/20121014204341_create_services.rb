class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.integer :basic_program
      t.integer :express_program
      t.text :description
      t.timestamps
    end

    add_attachment :services, :image
  end
end
