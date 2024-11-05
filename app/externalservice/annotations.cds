using businessPartnerService as service from '../../srv/service';
annotate service.businessPartner with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartner',
                Value : BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerFullName',
                Value : BusinessPartnerFullName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FirstName',
                Value : FirstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerIsBlocked',
                Value : BusinessPartnerIsBlocked,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BirthDate',
                Value : BirthDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerBirthName',
                Value : BusinessPartnerBirthName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerGrouping',
                Value : BusinessPartnerGrouping,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerCategory',
                Value : BusinessPartnerCategory,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusPartMaritalStatus',
                Value : BusPartMaritalStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerType',
                Value : BusinessPartnerType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerIDByExtSystem',
                Value : BusinessPartnerIDByExtSystem,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartner',
            Value : BusinessPartner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartnerFullName',
            Value : BusinessPartnerFullName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FirstName',
            Value : FirstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartnerIsBlocked',
            Value : BusinessPartnerIsBlocked,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BirthDate',
            Value : BirthDate,
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartnerBirthName,
            Label : 'BusinessPartnerBirthName',
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartnerCategory,
            Label : 'BusinessPartnerCategory',
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartnerGrouping,
            Label : 'BusinessPartnerGrouping',
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartnerIDByExtSystem,
            Label : 'BusinessPartnerIDByExtSystem',
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartnerType,
            Label : 'BusinessPartnerType',
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartnerUUID,
            Label : 'BusinessPartnerUUID',
        },
        {
            $Type : 'UI.DataField',
            Value : BusPartMaritalStatus,
            Label : 'BusPartMaritalStatus',
        },
    ],
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'businessPartnerService.editBusinessPartner',
            Label : '{i18n>Edit}',
        },
    ],
);

