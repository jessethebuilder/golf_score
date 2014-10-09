class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :tag_line
      t.text :description
      t.float :course_rating
      t.float :slope_rating

      t.timestamps
    end
  end
end
