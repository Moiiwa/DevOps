#CI best practices
##Github actions best practices
###Caching
 * Advantages:  
 1) Space saving
 * Disadvantages:  
 1) Caches can not be updated in github actions, so we need to cache files that will not be changed. For example static images or templates, as
 I've done here, since my templates and images won't change.
###Docker layers caching
In order to speed up pipeline I decided to use the next Github Actions library  
```
https://github.com/marketplace/actions/docker-layer-caching
```
With the use of it we can save time and (potentially) space.  
In order to use it installation is needed, but it takes 6 seconds, meanwhile docker build may take much more time without it, in my case it was 18 seconds.

Also in order to avoid errors during this stage I set up action the way that it  
will ignore this stage in case of failure and will simply build an image.