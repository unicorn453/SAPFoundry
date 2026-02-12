namespace SAPFoundry;

entity Workers
{
    key ID : UUID;
    email : String(50);
    firstName : String(100);
    lastName : String(100);
    department : String(100);
    position : String(100);
    isActive : Boolean;
}

entity ExternalPartners
{
    key ID : UUID;
    companyName : String(100);
    email : String(100);
    contactPerson : String(100);
    partnerType : String(100);
    isActive : Boolean;
    authToken : String(100);
}
