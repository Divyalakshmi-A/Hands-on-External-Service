namespace businessPartner;

entity businessPartner{
    key BusinessPartner : String(10);
    BusinessPartnerUUID : UUID;
    BusinessPartnerFullName : String(81);
    FirstName : String(40);
    BusinessPartnerIsBlocked : String(40);
    BirthDate : Date;
    BusinessPartnerBirthName : String(40);
    BusinessPartnerGrouping : String(4);
    BusinessPartnerCategory : String(1);
    BusPartMaritalStatus : String(1);
    BusinessPartnerType : String(4);
    BusinessPartnerIDByExtSystem : String(20);
}