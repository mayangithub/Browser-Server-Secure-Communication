# Browser/Server Secure Communications
Final group project of Security of E-Commerce<br />
<br />
Scenarios:<br />
1. We want to make sure that messages passed to a particular authenticated client can only be read by the client.<br />
2. After logon, a second passcode is required to unlock a message to insure that only the authenticated user can read it.<br />
<br />
Functions:<br />
1. Establish secure channel (https)<br />
2. Provide access controls<br />
3. Share server certificate via CA<br />
4. Generate and share client certificate<br />
5. Encrypt private client certificate using passcode<br />
6. Send encrypted and signed messages<br />
<br />
My responsibilities:<br />
1. set up HTTPS configurations, server.xml, context.xml, web.xml<br />
2. database setup and update<br />
3. client/admin messaging module<br />
4. client/admin messaging controller<br />
5. javascript encrypt/decrypt private key using AES<br />
6. javascript encrypt/decrypt messages using RSA<br />
