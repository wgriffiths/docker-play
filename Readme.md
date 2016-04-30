#Base Docker File for Play Framework

This is a simple docker file for Play Framework applications. It is based of
Alpine linux so is nice an small. Originally developed for Play Framework 1.2 but
should work as a base for more resent versions. May need some tweaks.

##Build

docker build  -t docker-play .

##Run

docker run -it -p 9000:9000 -v $(pwd):/myapp docker-play
