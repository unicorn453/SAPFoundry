sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'sapfoundry.internalappg1',
            componentId: 'ExternalPartnersList',
            contextPath: '/ExternalPartners'
        },
        CustomPageDefinitions
    );
});