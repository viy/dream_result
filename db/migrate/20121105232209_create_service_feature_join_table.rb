class CreateServiceFeatureJoinTable < ActiveRecord::Migration
  def up
    create_table "service_features_services", :id => false do |t|
      t.column :service_id, :integer
      t.column :service_feature_id, :integer
    end
  end

  def down
    drop_table "service_features_services"
  end
end
