# This migration comes from refinery_workers (originally 1)
class CreateWorkersWorkers < ActiveRecord::Migration

  def up
    create_table :refinery_workers do |t|
      t.string :name
      t.integer :pic_id
      t.string :job_title
      t.text :bio
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-workers"})
    end

    drop_table :refinery_workers

  end

end
