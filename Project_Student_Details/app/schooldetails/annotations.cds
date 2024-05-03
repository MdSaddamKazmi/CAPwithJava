using StudentService as service from '../../srv/StudentDetails-service';
annotate service.Schools with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'school_id',
                Value : school_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SchoolName',
                Value : SchoolName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Principal',
                Value : Principal,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SchoolStrength',
                Value : SchoolStrength,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Curriculum',
                Value : Curriculum,
            },
            {
                $Type : 'UI.DataField',
                Label : 'rating',
                Value : rating,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'school_id',
            Value : school_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SchoolName',
            Value : SchoolName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Principal',
            Value : Principal,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SchoolStrength',
            Value : SchoolStrength,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Curriculum',
            Value : Curriculum,
        },
    ],
);

