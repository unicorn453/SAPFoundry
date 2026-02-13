using { cuid } from '@sap/cds/common';

namespace my_namespace;

entity Workers : cuid {
  name : String;
  // other properties
}

entity ExternalPartners : cuid {
  name : String;
  // other properties
}

entity Documents : cuid {
  title : String;
  content : LargeBinary;
  worker : Association to Workers;
  externalPartner : Association to ExternalPartners;
}

service MyService {
  entity Workers as projection on my_namespace.Workers;
  entity ExternalPartners as projection on my_namespace.ExternalPartners;
  entity Documents as projection on my_namespace.Documents;
}