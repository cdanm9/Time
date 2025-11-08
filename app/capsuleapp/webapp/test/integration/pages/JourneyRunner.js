sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/sap/capsuleapp/test/integration/pages/CapsulesList",
	"com/sap/capsuleapp/test/integration/pages/CapsulesObjectPage",
	"com/sap/capsuleapp/test/integration/pages/AttachmentsObjectPage"
], function (JourneyRunner, CapsulesList, CapsulesObjectPage, AttachmentsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/sap/capsuleapp') + '/test/flp.html#app-preview',
        pages: {
			onTheCapsulesList: CapsulesList,
			onTheCapsulesObjectPage: CapsulesObjectPage,
			onTheAttachmentsObjectPage: AttachmentsObjectPage
        },
        async: true
    });

    return runner;
});

