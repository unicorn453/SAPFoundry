sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"externalpartnerdocuments/test/integration/pages/ExternalPartnersList",
	"externalpartnerdocuments/test/integration/pages/ExternalPartnersObjectPage"
], function (JourneyRunner, ExternalPartnersList, ExternalPartnersObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('externalpartnerdocuments') + '/test/flpSandbox.html#externalpartnerdocuments-tile',
        pages: {
			onTheExternalPartnersList: ExternalPartnersList,
			onTheExternalPartnersObjectPage: ExternalPartnersObjectPage
        },
        async: true
    });

    return runner;
});

