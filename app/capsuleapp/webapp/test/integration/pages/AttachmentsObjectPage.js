sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.sap.capsuleapp',
            componentId: 'AttachmentsObjectPage',
            contextPath: '/Capsules/to_attachments'
        },
        CustomPageDefinitions
    );
});