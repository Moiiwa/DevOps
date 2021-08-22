#**Best practices with Docker**

##Basic image
* As a basic image python:3.9-alpine was chosen, according to the [!list of common mistakes done
while writing Dockerfile](https://runnable.com/blog/9-common-dockerfile-mistakes) I didn't use latest version of the image since it makes
my image unstable

## Libraries import
* In order to simplify import of libraries "requirements.txt" with list of required packages 
was used.

## Copying files
According to the same list of common mistakes, I didn't copy all the directory with "*" and
copied only required files and folders

## Updating image
I didn't use any ```apt-get update``` since it also makes image stability depend on latest versions of other packages.
