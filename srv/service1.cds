using { SAPFoundry as my } from '../db/schema.cds';

@path : '/service/SAPFoundryService'
service SAPFoundryService
{
}

annotate SAPFoundryService with @requires :
[
    'authenticated-user'
];
