# ESP8266_Sensors_With_Docker

Sensors:
Turbidity,
Temperature,
Humidity and
Air quality

# How are the sensors measured?
They are measured via an esp8266 which is an Arduino capable board with built-in wifi which then can be used to communicate with the pi.

A photo of the esp8266:
![IMG_8671](https://user-images.githubusercontent.com/73941653/159017198-3c736c58-1afa-489c-9f48-77d654ec8c9f.jpg)


# Docker specs

<img width="744" alt="Screenshot 2022-03-18 at 13 53 50" src="https://user-images.githubusercontent.com/73941653/159015839-8031d14a-7441-4a01-8bcf-b405ce76c223.png">

The Docker container is for testing purposes so we can test to make sure that all the components work.

# How does the docker container link to the raspberry pi?
The distro that we are using for testing is Debian, which is the parent distro to rasbian or noobs OS, which is used on the raspberry pi as the operating system so everything that works in Debian should work on the pi.

# The Database
To power the database we are using a combination of MariaDB as our Mysql database and PHPMyAdmin to run that database. In the database, we have 6 columns that say what the sensor is where that sensor is located and the different values to be measured.

A photo of the database in phpmyadmin:
<img width="1267" alt="Screenshot 2022-03-20 at 10 58 11" src="https://user-images.githubusercontent.com/73941653/159160718-cb2dfaa5-ec2b-478b-b54a-174f8a5f6361.png">

# The Final Product

<img width="550" alt="Screenshot 2022-03-20 at 11 33 27" src="https://user-images.githubusercontent.com/73941653/159160758-73d05716-f65d-45c5-924e-26c7830fd62e.png">

<img width="628" alt="Screenshot 2022-03-20 at 11 33 47" src="https://user-images.githubusercontent.com/73941653/159160762-01ab68c9-b7e4-4e10-a290-b56f066c4aba.png">

In the final product, we were able to produce two sensors which is a temperature sensor and the turbidity sensor you can with the minimum and maximum values, also an update function at the top of the page so you can choose how many values you want to be shown, the min, max and avg values of the amount chosen will then be shown.




