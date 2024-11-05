using { API_BUSINESS_PARTNER as BP } from './external/API_BUSINESS_PARTNER';

service businessPartnerService @(requires: 'authenticated-user') {
    type businessPartnerObject : {
    BusinessPartner : String(10);
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
    // @odata.draft.enabled
    entity businessPartner @(restrict: [
        {
            grant: ['*'], // Allowing CDS events by explicitly mentioning them
            to   : 'Admin'
        }
    ])          as projection on BP.A_BusinessPartner{
        key BusinessPartner,
            BusinessPartnerUUID,
            BusinessPartnerFullName,
            FirstName,
            BusinessPartnerIsBlocked,
            BirthDate,
            BusinessPartnerBirthName,
            BusinessPartnerGrouping,
            BusinessPartnerCategory,
            BusPartMaritalStatus,
            BusinessPartnerType,
            BusinessPartnerIDByExtSystem
    } actions {
        @sap.application.path:'editBusinessPartner' 
        @Common.DefaultValuesFunction: 'editBusinessPartner.getDefaultValue'
        action businessPartnerDetail(
            BusinessPartner : String(10),
            BusinessPartnerUUID : UUID,
            BusinessPartnerFullName : String(81),
            FirstName : String(40),
            BusinessPartnerIsBlocked : String(40),
            BirthDate : Date,
            BusinessPartnerBirthName : String(40),
            BusinessPartnerGrouping : String(4),
            BusinessPartnerCategory : String(1),
            BusPartMaritalStatus : String(1),
            BusinessPartnerType : String(4),
            BusinessPartnerIDByExtSystem : String(20)
        );
        function getDefaultValue() returns businessPartnerObject;
    }
}