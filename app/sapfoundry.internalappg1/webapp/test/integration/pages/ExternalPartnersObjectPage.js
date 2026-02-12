sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'sapfoundry.internalappg1',
            componentId: 'ExternalPartnersObjectPage',
            contextPath: '/ExternalPartners'
        },
        CustomPageDefinitions
    );
});