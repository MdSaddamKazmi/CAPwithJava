using StudentService as service from '../../srv/StudentDetails-service';

annotate service.Students with @(

    UI.FieldGroup #StudentInfo    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Student ID',
                Value: student_id,
            },
            {
                $Type: 'UI.DataField',
                Label: 'First Name',
                Value: firstName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Last Name',
                Value: lastName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Email',
                Value: email,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Phone Number',
                Value: phoneNumber,
            },
            {
                $Type: 'UI.DataField',
                Label: 'School ID',
                Value: school_school_id,
                
            },
        ],
    },


    UI.FieldGroup #Dates         : {
        $Type: 'UI.FieldGroupType',
        Data : [

            {
                $Type: 'UI.DataField',
                Label: 'Birth Date',
                Value: dateOfBirth,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Joining Date',
                Value: dateOfJoining,
            }
        ],
    },

    UI.FieldGroup #Administrative: {
        $Type: 'UI.FieldGroupType',
        Data : [

            {
                $Type: 'UI.DataField',
                Label: 'Modified By',
                Value: modifiedBy,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Created By',
                Value: createdBy,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Modified At',
                Value: modifiedAt,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Created At',
                Value: createdAt,
            },


        ],
    },

    UI.Facets                    : [{
        $Type : 'UI.CollectionFacet',
        Label : '{i18n>GeneralInformation}',
        ID    : 'Student',
        Facets: [
            { // Studnet Info
                $Type : 'UI.ReferenceFacet',
                ID    : 'StudentInfo',
                Target: '@UI.FieldGroup#StudentInfo',
                Label : 'Student Info'
            },
            { // Administrative information
                $Type : 'UI.ReferenceFacet',
                ID    : 'Administrative',
                Target: '@UI.FieldGroup#Administrative',
                Label : 'Administrative Data'
            },
            { // Dates information
                $Type : 'UI.ReferenceFacet',
                ID    : 'Dates',
                Target: '@UI.FieldGroup#Dates',
                Label : 'Dates'
            }
        ]
    }],


    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'Student ID', // change column label
            Value: student_id,
        },
        {
            $Type: 'UI.DataField',
            Label: 'First Name', // change column label
            Value: firstName,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Last Name', // change column label
            Value: lastName,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Birth Date', //change column label
            Value: dateOfBirth,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Joining Date', // change column label
            Value: dateOfJoining,
        },

        // add additional colum to be displayed as default
        {
            $Type: 'UI.DataField',
            Label: 'Email',
            Value: email,
        },
    ],
    // add selection field
    UI.SelectionFields           : [
        student_id,
        email
    ]
)

// Annotation on property level
{
    student_id @title: 'Student ID';
    email      @title: 'Email';
};




// annotate service.Students with @(
//     UI.FieldGroup #GeneratedGroup : {
//         $Type : 'UI.FieldGroupType',
//         Data : [
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'student_id',
//                 Value : student_id,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'firstName',
//                 Value : firstName,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'lastName',
//                 Value : lastName,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'dateOfBirth',
//                 Value : dateOfBirth,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'dateOfJoining',
//                 Value : dateOfJoining,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'email',
//                 Value : email,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'phoneNumber',
//                 Value : phoneNumber,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'school_school_id',
//                 Value : school_school_id,
//             },
//         ],
//     },
//     UI.Facets : [
//         {
//             $Type : 'UI.ReferenceFacet',
//             ID : 'GeneratedFacet1',
//             Label : 'General Information',
//             Target : '@UI.FieldGroup#GeneratedGroup',
//         },
//     ],
//     UI.LineItem : [
//         {
//             $Type : 'UI.DataField',
//             Label : 'student_id',
//             Value : student_id,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'firstName',
//             Value : firstName,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'lastName',
//             Value : lastName,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'dateOfBirth',
//             Value : dateOfBirth,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'dateOfJoining',
//             Value : dateOfJoining,
//         },
//     ],
// );

// annotate service.Students with {
//     school @Common.ValueList : {
//         $Type : 'Common.ValueListType',
//         CollectionPath : 'Schools',
//         Parameters : [
//             {
//                 $Type : 'Common.ValueListParameterInOut',
//                 LocalDataProperty : school_school_id,
//                 ValueListProperty : 'school_id',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'SchoolName',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'Principal',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'SchoolStrength',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'Curriculum',
//             },
//         ],
//     }
// };

