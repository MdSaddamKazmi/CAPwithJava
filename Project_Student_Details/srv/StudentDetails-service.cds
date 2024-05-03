using {MdSaddamKazmi.Project_Student_Details as StudentDetails} from '../db/schema';

@path : 'StudentDetails'
service StudentService {
    entity Students as select from StudentDetails.Student;   
    
    annotate StudentService.Schools with @odata.draft.enabled;
    entity Schools as select from StudentDetails.School; 
}