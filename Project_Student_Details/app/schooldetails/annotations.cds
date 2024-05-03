using StudentService as service from '../../srv/StudentDetails-service';


// add the annotations for schools entity

annotate service.Schools with @(

    UI.FieldGroup #SchoolInfo    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'School ID',
                Value: school_id,
            },
            {
                $Type: 'UI.DataField',
                Label: 'School Name',
                Value: SchoolName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Principal Name',
                Value: Principal,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Number of Students in School',
                Value: SchoolStrength,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Curriculum',
                Value: Curriculum,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Rating',
                Value: rating,
            },
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

    // UI.Facets                    : [
    //     {
    //         $Type : 'UI.CollectionFacet',
    //         Label : '{i18n>GeneralInformation}',
    //         ID    : 'School',
    //         Facets: [
    //             { // Studnet Info
    //                 $Type : 'UI.ReferenceFacet',
    //                 ID    : 'SchoolInfo',
    //                 Target: '@UI.FieldGroup#SchoolInfo',
    //                 Label : 'School Info'
    //             },
    //             { // Administrative information
    //                 $Type : 'UI.ReferenceFacet',
    //                 ID    : 'Administrative',
    //                 Target: '@UI.FieldGroup#Administrative',
    //                 Label : 'Administrative Data'
    //             }
    //         ]
    //     }

    // ],

    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'School ID', // change column label
            Value: school_id,
        },
        {
            $Type: 'UI.DataField',
            Label: 'School Name', // change column label
            Value: SchoolName,
        }

    ],
    // add selection field
    UI.SelectionFields           : [school_id]


)

{
    school_id @title: 'School ID';
};





// annotate service.Schools with @(
//     UI.FieldGroup #GeneratedGroup : {
//         $Type : 'UI.FieldGroupType',
//         Data : [
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'school_id',
//                 Value : school_id,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'SchoolName',
//                 Value : SchoolName,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'Principal',
//                 Value : Principal,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'SchoolStrength',
//                 Value : SchoolStrength,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'Curriculum',
//                 Value : Curriculum,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'rating',
//                 Value : rating,
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
//             Label : 'school_id',
//             Value : school_id,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'SchoolName',
//             Value : SchoolName,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'Principal',
//             Value : Principal,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'SchoolStrength',
//             Value : SchoolStrength,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'Curriculum',
//             Value : Curriculum,
//         },
//     ],
// );

