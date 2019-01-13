# Electives-Review
		This web application which I have designed is to help students to select their electives without any confusion and with confidence.Students can view the reviews posted about the electives and get a clear idea as to what the elective is all about.

Features:
	When the application is running and when one opens it in the browser one can see a short description of the list of all the electives with a 'Learn More' link. On clicking on the 'Learn More' you will be directed to a page with detailed description of the elective along with all the reviews that has been posted by the seniors. There is a 'Create Post' link that allows the seniors to create a review about the elective. The tabs on the side can be clicked to view the particular content such as "Course Description","Content","Text and reference","Syllabus","Notes","Assignments"and "Projects".This detailed description can help the students in selecting a elective. The syllabus,notes,assignment and the projects tab will give them detailed insight into the elective as to what are they going to teach in that elective.This will prove to be very helpful as the students will know what chapters are going to be taught and how hard the course is going to be.This will help the students to select their electives confidently.This application also provides a feature to create,edit and delete a elective. Inorder to create,edit or delete a elective one must login.If one tries to create,edit and ddelete an elective without logging in he will automaticatly be directed to the login page. Login link is available ont the top right corner.There is no sign in as the students are not supposed to create or delete electives. Before the application started to run the User will be asked to seed the database with one user('The Dean user') as mentioned in the README who will be able to create new users using the link Create User after they have lodded in. When a new user is created an email is sent to the new user with their Username and their password along with a request asking them to create a new elective. The email account from which this mail have to be sent can be mentioned in config/application.yml. The new user can also edit or delete an elective by clicking on the edit and delete link provide in that particular elective page.

Instruction:
	When the application  is downloaded it's database is fresh without any data.So inorder to create the first user one has to seed the database.
	In the db/seeds.rb file there is a commented user.Fill in the required data and uncomment it.
	
	Sample:
		
		user=User.new
		user.user_name="sample"
		user.email="sample@sample.com"
		user.password="sample"
		user.password_confirmation="sample"
		user.save!

	After entering the required data run the following command in the terminal


	rake db:seed
	
	This will create the user.
	In the app/application.yml file enter the gmail user name and password of the head of that institute to send mails from this respective mail to other user.
	Once this is done run the following command to test the application
	
	rails server

	Open your browser and type http://localhost:3000/ and login to create electives.
