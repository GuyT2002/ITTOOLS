### IT TOOLS ANSIBLE REPO
in this repo I created an ansible playbook which configures a keepalived between 2 HAproxy servers,
which then forward requests to 2 HTTP servers configured by the same playbook, with custom DNS service.

to do so, we first run the configure webservers role, which configurtes the webservers like this:
it installs httpd service and the ssl plugin forit, moves the configuration files from the role directory to the right directory like so:

under the files folder, there is a dir per each webserver. There we have files for the httpd service, ssl configuration,
and httpd conf file.

than, we restart the services and that is done!

next we need to run the configuration on the HAproxy servers:
first of all we install the HAproxy, named and keepalived services.
then, we copy the configuration files from under the files directory to their corresponding
place under the remote servers.

lastly, we restart the services, and that is it!

we need to move a few things:
the HAproxy configuration files for HAproxy and keepalived.
next, the keepalived health check (which we use!)
also, we need to mode the nameD configratuion and db files.
