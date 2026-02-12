using SAPFoundryService as service from '../../srv/service';
annotate service.ExternalPartners with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'companyName',
                Value : companyName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contactPerson',
                Value : contactPerson,
            },
            {
                $Type : 'UI.DataField',
                Label : 'partnerType',
                Value : partnerType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'isActive',
                Value : isActive,
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
            Label : 'companyName',
            Value : companyName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'contactPerson',
            Value : contactPerson,
        },
        {
            $Type : 'UI.DataField',
            Label : 'partnerType',
            Value : partnerType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'isActive',
            Value : isActive,
        },
    ],
);

