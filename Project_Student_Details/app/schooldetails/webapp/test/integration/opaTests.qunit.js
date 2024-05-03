sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'schooldetails/test/integration/FirstJourney',
		'schooldetails/test/integration/pages/SchoolsList',
		'schooldetails/test/integration/pages/SchoolsObjectPage',
		'schooldetails/test/integration/pages/StudentsObjectPage'
    ],
    function(JourneyRunner, opaJourney, SchoolsList, SchoolsObjectPage, StudentsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('schooldetails') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSchoolsList: SchoolsList,
					onTheSchoolsObjectPage: SchoolsObjectPage,
					onTheStudentsObjectPage: StudentsObjectPage
                }
            },
            opaJourney.run
        );
    }
);