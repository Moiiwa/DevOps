**Moscow time displayer**  
Completely done by Mikhail Gudkov  
**Description**  
This is a simple flask application that returns html with Moscow time which is being updated each second.  
You can see example below.
![alt text](app_python/static/example.jpg)  
Also you can check the full version of the site by the next [link](http://moi-wa.com)

**Installation**  
* **Docker**  
In order to install an app on your machine you can pull the docker image and run it in container: "moiwa/devops_task"  
1) Run *sudo docker pull moiwa/devops_task*
2) Run *sudo docker run -p 80:3000 moiwa/devops_task*  
* **On your own**  
1) Run *sudo docker build -t \<your tag name\>* 
2) Run *sudo docker run -p 80:3000 \<your tag name\>*

**License**  
Imaginary licensed by Mikhail Gudkov (2021).
