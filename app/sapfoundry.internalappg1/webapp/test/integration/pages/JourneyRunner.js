sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"sapfoundry/internalappg1/test/integration/pages/ExternalPartnersList",
	"sapfoundry/internalappg1/test/integration/pages/ExternalPartnersObjectPage"
], function (JourneyRunner, ExternalPartnersList, ExternalPartnersObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('sapfoundry/internalappg1') + '/test/flpSandbox.html#sapfoundryinternalappg1-tile',
        pages: {
			onTheExternalPartnersList: ExternalPartnersList,
			onTheExternalPartnersObjectPage: ExternalPartnersObjectPage
        },
        async: true
    });

    return runner;
});

