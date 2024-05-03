package MdSaddamKazmi.Project_Student_Details.handlers;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import static cds.gen.studentservice.StudentService_.SCHOOLS;
import static cds.gen.studentservice.StudentService_.STUDENTS;
import com.sap.cds.ql.Select;
import com.sap.cds.ql.Update;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.ql.cqn.CqnUpdate;
import com.sap.cds.services.ErrorStatuses;
import com.sap.cds.services.ServiceException;
import com.sap.cds.services.persistence.PersistenceService;
import com.sap.cds.services.draft.DraftService;
import com.sap.cds.services.handler.EventHandler;
import org.springframework.stereotype.Component;
import cds.gen.studentservice.StudentService_;
import cds.gen.studentservice.Students;
import cds.gen.studentservice.Students_;
import cds.gen.studentservice.Schools;
import cds.gen.studentservice.Schools_;
import com.sap.cds.services.handler.annotations.ServiceName;
import com.sap.cds.services.handler.annotations.After;
import com.sap.cds.services.handler.annotations.Before;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.cds.CqnService;
import org.springframework.beans.factory.annotation.Qualifier;
import com.sap.cds.services.EventContext;

@Component
@ServiceName(StudentService_.CDS_NAME)
public class StudentServiceHandler implements EventHandler {

    private PersistenceService db;
    private DraftService StudentService;

    StudentServiceHandler(
        @Qualifier(StudentService_.CDS_NAME) DraftService StudentService,
        PersistenceService db) {
    this.db = db;
    this.StudentService = StudentService;
}

    @Before(event = { CqnService.EVENT_CREATE, CqnService.EVENT_UPSERT, CqnService.EVENT_UPDATE })
    public void updateSchoolStrengths(Schools school, EventContext context) {

        Integer studentcount = 0;
        for (Students student : school.getStudents()) {
            studentcount = studentcount + 1;
            if (student.getEmail() == " " || student.getEmail() == null ) {
                student.setEmail(student.getFirstName() + "." + student.getLastName() + "@gmail.com");
            }
        }
        if (studentcount > 0) {
            school.setSchoolStrength(studentcount);
        }

    }  


}
