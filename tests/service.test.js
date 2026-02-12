const test_generateauthtoken_logic = require('./code/test-generateauthtoken-logic');
const cds = require('@sap/cds/lib');
const {
  GET,
  POST,
  PATCH,
  DELETE,
  expect
} = cds.test(__dirname + '../../', '--with-mocks');
cds.env.requires.auth = {
  kind: "dummy"
};
describe('Service Testing', () => {
  it('test generateauthtoken-logic', async () => {
    await test_generateauthtoken_logic(GET, POST, PATCH, DELETE, expect);
  });
});