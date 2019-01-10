class Elective < ActiveRecord::Base
	has_many :posts
	mount_uploader :notes, NotesUploader # Tells rails to use this uploader for this model.
	mount_uploader :assignments, AssignmentsUploader # Tells rails to use this uploader for this model.
	mount_uploader :projects, ProjectsUploader # Tells rails to use this uploader for this model.
   	validates :course_name, presence: true # Make sure the owner's name is present.
end
