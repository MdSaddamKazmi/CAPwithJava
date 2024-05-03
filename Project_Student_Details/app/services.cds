using from './schooldetails/annotations';
using from './studentdetails/annotations';
using StudentService as service from '../srv/StudentDetails-service';

annotate service.Schools with @(UI.Facets: [{
    $Type : 'UI.CollectionFacet',
    Label : '{i18n>GeneralInformation}',
    ID    : 'School',
    Facets: [
        { // Studnet Info
            $Type : 'UI.ReferenceFacet',
            ID    : 'SchoolInfo',
            Target: '@UI.FieldGroup#SchoolInfo',
            Label : 'School Info'
        },
        { // Administrative information
            $Type : 'UI.ReferenceFacet',
            ID    : 'Administrative',
            Target: '@UI.FieldGroup#Administrative',
            Label : 'Administrative Data'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'Students',
            Label : 'Students',
            Target: 'students/@UI.LineItem',
        }
    ]
}

],


//     UI.Facets : [

//      {
//         $Type : 'UI.ReferenceFacet',
//         ID : 'Students',
//         Label : 'Students',
//         Target : 'students/@UI.LineItem',
//     },
// ]
);
