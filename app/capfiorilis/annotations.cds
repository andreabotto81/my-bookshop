using CatalogService as service from '../../srv/cat-service';

annotate service.Books with @(
    UI.SelectionFields: [
        ID,title
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'author_ID',
            Value : author_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'stock',
            Value : stock,
        },
    ],
    UI.HeaderInfo:{
        TypeName : 'Bookshop',
        TypeNamePlural : 'Bookshop',
        Title : {Value : title}
    }
);

annotate service.Books with @(
    UI.FieldGroup #GenInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'author_ID',
                Value : author_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stock',
                Value : stock,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GenInfoFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GenInfo',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'AuthInfo2',
            Label : 'Author Information',
            Target : 'author/@UI.FieldGroup#AuthInfo',
        }
    ]
);

annotate service.Authors with @(
    UI.FieldGroup #AuthInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                Label: 'ID',
                Value : ID
            },
            {
                Label: 'Name',
                Value: 'name'
            }
        ]
    }
) ;
