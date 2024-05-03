clone the repo and switch to branch : custom_handler (No need to clone the repo again if you have already cloned it once. you can just switch to above mentioned branch)

Below steps have been taken ==>

* A folder "handlers" was created inside srv/src/main/java/MdSaddamKazmi/Project_Student_Details folder.
* A file "StudentServiceHandler.java" was created inside handlers folder
* Added the code to update email as firstname + last name + @gmail.com if email field is left blank while creating student record
* Added the code to increase the strength (number of students in school) of school by 1 once the student record is added for that school

What you need to do ==>

* Use "cd Project_Student_Details" to go inside the folder. 
* Use command "mvn spring-boot:run".
* Check the schoolstrength of a school record.create a record of student and then check the record of school . It should have increased by 1.
* Create a student record without filling email and then save school record. Email should get fillde with concatenated value of first name , last name and @gmail.com
* use CTRL+C in Terminal to stop the local server

  

**Previous Branch : https://github.com/MdSaddamKazmi/CAPwithJava/tree/test_locally
