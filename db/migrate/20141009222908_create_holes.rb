class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.integer :number
      t.string :name
      t.integer :par
      t.text :tees

      t.integer :course_id

      t.timestamps
    end
  end
end
