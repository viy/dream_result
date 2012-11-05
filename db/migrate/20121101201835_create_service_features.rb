class CreateServiceFeatures < ActiveRecord::Migration
  def up
    create_table :service_features do |t|
      t.string :image

      t.timestamps
    end
    ServiceFeature.create_translation_table!({
                                          :name => :string,
                                          :description => :text
                                      })
  end

  def down
    drop_table :service_features
    ServiceFeature.drop_translation_table!
  end
end
