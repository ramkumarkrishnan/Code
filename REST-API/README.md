REST API Development from Scratch

Step 1: Enable Apache Web Server on local RHEL8 Linux Box
Follow the instructions in this RHEL8 documentation to (a) Set up a single instance Apache HTTP server - section 1.4 (b) to start/manage the httpd daemon - section 1.3 : https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html-single/deploying_different_types_of_servers/index#installing-the-apache-http-server-manual_setting-apache-http-server

Step 2: Set up a secure website on the local host (first, without connecting to the external Internet)
2.1. hostname = starline
2.2. inspect network connections (https://www.networkworld.com/article/2697039/unix-top-networking-commands-and-what-they-tell-you.html)
2.3. Typing http://localhost returns error: "Forbidden - You don't have permission to access /index.html on this server".
2.4. http://starline provides the Red Hat Linux Test Page - this web page contents are in the Appendix below.
2.5: After a lot of research, I found the answer that we need to set SELinux permissions - instructions provided here: https://serverfault.com/questions/650402/403-forbidden-errors-on-red-hat-server 

Step 3: Create a bookmark database in a simple file Bookmarks.html in CSV format with schema: (name, url) (the bookmarks file for RHEL is located at ~/.config/google-chrome/Default.

Step 4: Define REST APIs to read (Get), write (Put), update (Post), and Delete (Delete) entries into this "database", and implement a test program in Java. (Example: https://happycoding.io/tutorials/java-server/rest-api, https://docs.oracle.com/cd/E24329_01/web.1211/e24983/client.htm#RESTF143)

Step 5: Install MySQL on the local webserver for structured data

Step 6: Create the same schema as the file and repeat the CRUD there.

Step 7: Install MongoDB on the local webserver for NoSQL data 

Step 8: Install Visual Studio Code for Linux following instructions here: https://code.visualstudio.com/docs/setup/linux

Step 9: Install Postman tool (https://snapcraft.io/install/postman/rhel)
Step 9: Create a DocDB schema of (key, doc) in MongoDB and repeat the CRUD in MongoDB, where key is a Guid, as in the example below:
"guid": "f9e22cec-faef-48f8-86b7-6f9e790e03df",
Each document is of JSON format (https://www.tutorialspoint.com/json/json_schema.htm) with schema:
{
   "$schema": "http://json-schema.org/draft-04/schema#",
   "title": "Bookmark",
   "description": "BookMarks from various sources",
   "type": "object",

    "bookmark": {
        "name": {
            "description": "Bookmark Name",
            "type": "string"
        },
        "url": {
            "description": "Bookmark URL",
            "type": "url"
        },
        "date_added": {
            "description": "Date Added",
            "type": "string"
        },
        "category": {
            "description": "Bookmark Category",
            "type": "string"
        }
    }

    "required": ["date_added", "name", "url"]
}


APPENDIX
Default Web Page:
This page is used to test the proper operation of the Apache HTTP server after it has been installed. If you can read this page, it means that the Apache HTTP server installed at this site is working properly.

If you are a member of the general public:
The fact that you are seeing this page indicates that the website you just visited is either experiencing problems, or is undergoing routine maintenance.

If you would like to let the administrators of this website know that you've seen this page instead of the page you expected, you should send them e-mail. In general, mail sent to the name "webmaster" and directed to the website's domain should reach the appropriate person.

For example, if you experienced problems while visiting www.example.com, you should send e-mail to "webmaster@example.com".

For information on Red Hat Enterprise Linux, please visit the Red Hat, Inc. website. The documentation for Red Hat Enterprise Linux is available on the Red Hat, Inc. website.

If you are the website administrator:
You may now add content to the directory /var/www/html/. Note that until you do so, people visiting your website will see this page, and not your content. To prevent this page from ever being used, follow the instructions in the file /etc/httpd/conf.d/welcome.conf.

You are free to use the image below on web sites powered by the Apache HTTP Server:
