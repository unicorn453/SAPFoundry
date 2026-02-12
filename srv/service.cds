using { SAPFoundry as my } from '../db/schema.cds';



entity ExternalPartners as projection on my.ExternalPartners;

annotate my.ExternalPartners with @search.defaultSearchElement : 'Name';

@path : '/service/SAPFoundryService'


service SAPFoundryService {
    @cds.redirection.target
    @odata.draft.enabled


    entity ExternalPartners as projection on my.ExternalPartners;





    action SelectPartner() returns ExternalPartners;





    function SelectDropdown() returns ExternalPartners;







    action GenerateAuthToken(partnerID : UUID, authToken : String(100)) returns ExternalPartners;
}






annotate SAPFoundryService with @requires : ['authenticated-user', 'ExternalUser'];
