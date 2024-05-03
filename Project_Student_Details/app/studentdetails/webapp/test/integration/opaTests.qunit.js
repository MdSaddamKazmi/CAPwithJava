sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'studentdetails/test/integration/FirstJourney',
		'studentdetails/test/integration/pages/StudentsList',
		'studentdetails/test/integration/pages/StudentsObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentsList, StudentsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('studentdetails') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentsList: StudentsList,
					onTheStudentsObjectPage: StudentsObjectPage
                }
            },
            opaJourney.run
        );
    }
);