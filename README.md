clone the repo and switch to branch : add_ui (No need to clone the repo again if you have already cloned it once. you can just switch to above mentioned branch)

Below steps have been executed ==>

* opened application generator with CTRL+SHIFT+P and added a template
* selected "list report page" template. clicked on next
* selected "choose a Local CAP project" as data soure , chose the project as Project_Student_Details and service as EmployeeService (Node.js)
* Chose main entity as Students and checked radio button as yes for "Automatically add table columns to the list page and a section to the object page if none already exists?"
  on the final page of attributes . Gave "studentdetails" as name of project and left everything as it is ( default values) .click on Finish
* Repeat above steps and create UI for "School" entity.(Made sure to pass navigation entity as "students" and pass the name of project as "schooldetails")  
* Once above steps are done , checked the folder "app"

What you need to do ==>

* Check the folder app/studentdetails and app/schooldetails
* use "cd Project_Student_Details" to go inside the folder and use command "mvn spring-boot:run" to check the data on port 8080
* UI will be available under the section "web applications"
* Once you have checked UI , use CTRL+C in Terminal to stop the local server


**Previous Branch : https://github.com/MdSaddamKazmi/CAPwithJava/tree/check_service_and_preview_with_csv_file_entries

**Next Branch : https://github.com/MdSaddamKazmi/CAPwithJava/tree/add_annotations
