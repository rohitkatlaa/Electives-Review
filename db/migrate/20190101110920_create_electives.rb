class CreateElectives < ActiveRecord::Migration
  def change
    create_table :electives do |t|
      t.string :course_name,unique: true
      t.string :course_proposer_name
      t.string :course_instructor_name
      t.integer :credits
      t.string :semester
      t.text :course_description
      t.text :course_content
      t.text :text_and_references
      t.text :syllabus
      t.text :notes_t
      t.string :notes
      t.text :assignments_t
      t.string :assignments
      t.text :projects_t
      t.string :projects
      t.timestamps null: false
    end
  end
end
