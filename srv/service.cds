using { SAPFoundry as my } from '../db/schema.cds';

@path : '/service/SAPFoundryService'
service SAPFoundryService
{
    @cds.redirection.target
    @odata.draft.enabled
    entity ExternalPartners as
        projection on my.ExternalPartners;

    action SelectPartner
    (
    )
    returns ExternalPartners;

    function SelectDropdown
    (
    )
    returns ExternalPartners;
}

annotate SAPFoundryService with @requires :
[
    'authenticated-user',
    'ExternalUser'
];
