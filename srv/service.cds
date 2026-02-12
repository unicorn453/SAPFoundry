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

entity ExternalPartners as
        projection on my.ExternalPartners;



annotate my.ExternalPartners with @search : {
  defaultSearchElement : 'Name',
  searchable : ['Name', 'City', 'Email']
};
