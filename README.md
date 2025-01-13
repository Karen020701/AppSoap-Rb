# SOAP Server with WEBrick and Savon

This project uses Ruby, WEBrick, and Savon to create a simple SOAP server that responds to requests on the `/hello_world` path. The server consumes a SOAP service and responds with an XML message.
### Dependencies

This project uses the following Ruby gems:

*Webrick*: Ruby HTTP Server.
*Savon*: SOAP Client for Ruby.

You can install these gems by running the following command:

```bash
webrick savon gem installation
```

## Clone the project

```bash
git clone https://github.com/Karen020701/AppSoap-Rb.git
```
## Run the server
To start the SOAP server, run the following command in your terminal from the project directory:

```bash
ruby server.rb
```

## Access a SOAP
Once executed, you should go to the URL: http://localhost:8080/hello_world