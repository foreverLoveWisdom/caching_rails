class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :model
      t.float :power
      t.float :torque
      t.integer :engine

      t.timestamps
    end
  end
end
