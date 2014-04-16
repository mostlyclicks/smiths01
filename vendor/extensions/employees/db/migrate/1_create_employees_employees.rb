class CreateEmployeesEmployees < ActiveRecord::Migration

  def up
    create_table :refinery_employees do |t|
      t.string :name
      t.integer :picture_id
      t.string :job_title
      t.integer :number_of_bikes
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-employees"})
    end

    drop_table :refinery_employees

  end

end
