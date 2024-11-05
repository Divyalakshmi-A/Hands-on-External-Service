sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'externalservice/test/integration/FirstJourney',
		'externalservice/test/integration/pages/businessPartnerList',
		'externalservice/test/integration/pages/businessPartnerObjectPage'
    ],
    function(JourneyRunner, opaJourney, businessPartnerList, businessPartnerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('externalservice') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThebusinessPartnerList: businessPartnerList,
					onThebusinessPartnerObjectPage: businessPartnerObjectPage
                }
            },
            opaJourney.run
        );
    }
);