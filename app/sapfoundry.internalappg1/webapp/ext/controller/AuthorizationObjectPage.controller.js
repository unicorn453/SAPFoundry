sap.ui.define(['sap/ui/core/mvc/ControllerExtension'], function (ControllerExtension) {
	'use strict';

	return ControllerExtension.extend('sapfoundry.internalappg1.ext.controller.AuthorizationObjectPage', {
		// this section allows to extend lifecycle hooks or hooks provided by Fiori elements
		override: {
			/**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf sapfoundry.internalappg1.ext.controller.AuthorizationObjectPage
             */
			// onInit: function () {
			// 	// you can access the Fiori elements extensionAPI via this.base.getExtensionAPI
			// 	var oModel = this.base.getExtensionAPI().getModel();
			// }
			onInit: function() {
				var oUser = sap.ushell.Container.getUser();
                var sUserId = oUser.getId();   // Current logged-in user
                // Additional initialization logic can go hereconsole.log("User ID:", sUserId);
				console.log("User ID:", sUserId);
				if (sUserId !== "ADMIN") {
                    console.log("User is not an admin.");
                }
				// Further initialization actions can be added here
			}
		}
	});
});
