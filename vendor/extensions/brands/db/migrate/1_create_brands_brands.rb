class CreateBrandsBrands < ActiveRecord::Migration

  def up
    create_table :refinery_brands do |t|
      t.string :name
      t.integer :logo_id
      t.string :website
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-brands"})
    end

    drop_table :refinery_brands

  end

end
