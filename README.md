# Echo-Chamber-NIIT-Tracker
This a website that is used to track events happening at NIIT university.
It has the following pages:
Home: Basic info abt website and the college(index.php)
Laundry: If any students got their clothes mismatched, they can submit their details here so that others who have the same issue can contact them. 
Details of those who have mismatched their clothes is also shown in this page.(index1.php)
Webinars/Seminars: This page has details about the webinars and seminars scheduled in the campus along with required details.(index2.php)
Sports: This page allows students to view the count of differnt sport equipment left in the sports room.(index3.php)

TECHNOLOGIES USED:
FRONTEND: HTML, CSS
BACKEND: PHP(To make queries to the database)
Xampp server: It has phpMyadmin in which we can create database tables and host the website on localhost:8080.

TO RUN THE WEBSITE:
1. Install Xampp server in your machine. It can be used in any OS. Start the Xampp server on loaclhost and use phpMyAdmin to create database tables 
that are required for this website. We've exported Database schema and added it under the folder database in this project. Please use
the same if you want to replicate this in ur machine.
2. Paste the project folder into htdocs folder that is situated in ur server i.e 192.168.64.2>lampp>htdocs. This is the
base url for localhost. In order to run the website home page use the URL: http://localhost:8080/NIITtracker/index.php. From here 
you can navigate to req pages.
2. admin.php has the option to insert records in to these tables use. 
