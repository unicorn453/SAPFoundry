/**
 * generating a token which will be used to verify user
 * @On(event = { "GenerateAuthToken" })
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
*/
const crypto = require('crypto');

module.exports = async function(request) {
	// For a bound action invoked on ExternalPartners entity
	// The entity key is passed in request.params[0]
	let partnerID;
	
	if (request.params && request.params.length > 0) {
		const firstParam = request.params[0];
		// The parameter is an object with the entity key(s)
		if (typeof firstParam === 'object' && firstParam.ID) {
			partnerID = firstParam.ID;
		} else if (typeof firstParam === 'string') {
			// Fallback if it's passed as a string
			partnerID = firstParam;
		}
	}
	
	if (!partnerID) {
		console.error('Could not extract partner ID from request');
		console.error('Request data:', request.data);
		console.error('Request params:', request.params);
		throw new Error('Partner ID is required to generate an authentication token');
	}
	
	try {
		// Generate a unique token
		const token = crypto.randomBytes(32).toString('hex');
		
		console.log(`Generating token for partner ID: ${partnerID}`);
		
		// Update the ExternalPartners entity with the new token
		await UPDATE('SAPFoundry.ExternalPartners', { ID: partnerID })
			.set({ authToken: token });
		
		// Return the updated partner record
		const updatedPartner = await SELECT.one.from('SAPFoundry.ExternalPartners', p => p('*')).where({ ID: partnerID });
		
		console.log(`Token generated successfully for partner ID: ${partnerID}`);
		
		return updatedPartner;
	} catch (error) {
		console.error('Error generating token:', error.message);
		throw error;
	}
}