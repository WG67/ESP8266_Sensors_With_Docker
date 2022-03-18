# ESP8266_Sensors_With_Docker

Sensors:
Turbidity
Temprature
Humidity
Air quality

How are they mesured?
They are mesured via a esp8266 which is a arduino capeable boards wiht built in wifi which then can be used to communicate with the pi.

A photo of the esp8266:
![IMG_8671](https://user-images.githubusercontent.com/73941653/159017198-3c736c58-1afa-489c-9f48-77d654ec8c9f.jpg)


Docker specs

<img width="744" alt="Screenshot 2022-03-18 at 13 53 50" src="https://user-images.githubusercontent.com/73941653/159015839-8031d14a-7441-4a01-8bcf-b405ce76c223.png">

The Docker contatiner is for testing puropes so we can test to make sure that all the components work.

How does the docker container link to the raspberry pi?
The disto that we are using for testing is debian, which is the parent distro to rasbian or noods OS, which is used on the raspberry pi as the operating system so everything that work in debian should work on the pi.
