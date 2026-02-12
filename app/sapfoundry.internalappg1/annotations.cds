using SAPFoundryService as service from '../../srv/service';

annotate service.ExternalPartners with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Company Name',
                Value: companyName
            },
            {
                $Type: 'UI.DataField',
                Label: 'Email',
                Value: email
            },
            {
                $Type: 'UI.DataField',
                Label: 'Contact Person',
                Value: contactPerson
            },
            {
                $Type: 'UI.DataField',
                Label: 'Partner Type',
                Value: partnerType
            },
            {
                $Type: 'UI.DataField',
                Label: 'Active',
                Value: isActive
            }
        ]
    },

    // 🔹 FieldGroup for Auth Section (Token Display)
    UI.FieldGroup #AuthGroup     : {
        $Type: 'UI.FieldGroupType',
        Data : [{
            $Type: 'UI.DataField',
            Label: 'Auth Token',
            Value: authToken
        }]
    },

    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneralInfo',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'AuthFacet',
            Label : 'Authentication',
            Target: '@UI.FieldGroup#AuthGroup'
        }
    ],

    // 🔹 THIS creates the button
    UI.Identification            : [{
        $Type : 'UI.DataFieldForAction',
        Label : 'Generate Auth Token',
        Action: 'SAPFoundryService.GenerateAuthToken'
    }],

    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Value: companyName
        },
        {
            $Type: 'UI.DataField',
            Value: email
        },
        {
            $Type: 'UI.DataField',
            Value: contactPerson
        },
        {
            $Type: 'UI.DataField',
            Value: partnerType
        },
        {
            $Type: 'UI.DataField',
            Value: isActive
        }
    ]
);
