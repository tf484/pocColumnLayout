using ColumnLayoutService as service from '../../srv/columnLayour-service';
using from '../../db/columnLayout-schema';
annotate service.EntityA with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Table 1',
            ID : 'Table1',
            Target : 'subEntityA1/@UI.LineItem#Table1',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
    ],
);

annotate service.EntityA1 with @(
    UI.LineItem #Table1 : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },{
            $Type : 'UI.DataField',
            Value : description,
            Label : 'description',
        },]
);
annotate service.EntityA1 with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Table 2',
            ID : 'Table2',
            Target : 'subEntityA1_2/@UI.LineItem#Table2',
        },
    ]
);
annotate service.EntityA1_2 with @(
    UI.LineItem #Table2 : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },{
            $Type : 'UI.DataField',
            Value : description,
            Label : 'description',
        },]
);
annotate service.EntityA1_2 with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'general',
            ID : 'general',
            Target : '@UI.FieldGroup#general',
        },
    ],
    UI.FieldGroup #general : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : description,
                Label : 'description',
            },],
    }
);
