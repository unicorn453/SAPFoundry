using { SAPFoundry as my } from '../db/schema';

@path: '/service/SAPFoundryService'
service SAPFoundryService {

    @odata.draft.enabled
    entity ExternalPartners
        as projection on my.ExternalPartners
        actions {
            action GenerateAuthToken() returns ExternalPartners;
        };

    action SelectPartner() returns ExternalPartners;
    function SelectDropdown() returns ExternalPartners;
}

annotate SAPFoundryService with @requires: ['authenticated-user', 'ExternalUser'];
