Jack TRAUMA
===========

jack\_trauma is a simple command line tool to send N audio channels taken from
JACK (Jack Audio Connection Kit) over IP, using UDPLite.

jack\_trauma is lightweight and mainly oriented towards low latency, as it 
doesn't perform any buffering.


1. Requirements
---------------

* libjack2


2. Compiling
------------

* type "make"


3. Usage
--------

./jack\_trauma OPTIONS

*Options*:

* -s: run in send mode (will run in receive mode otherwise)
* -c [channels]: number of audio channels
* -a [address]: destination address for audio channels
* -o [offset]: offset to be applied to outgoing channel numbers
* -p [port]: UDPLite port in use
* -n [name]: JACK client name
* -h: display help message

*Example*:

To do a local test on 8 channels, once you have a running JACK server run:

./jack\_trauma -s -c 8

On another terminal, run:

./jack\_trauma -c N

To send 16 audio channels to host 192.168.1.23, make sure that the JACK
server is running on both hosts with the same period size, and run:

./jack\_trauma -s -c 16 -a 192.168.1.23 -p PORT

On the receiver host, run:

./jack\_trauma -c 16 -p PORT

If the JACK server is not running, jack\_trauma will attempt to launch one
based on your ~/.jackdrc configuration file.


4. Authors
----------

Daniele Torelli - http://www.danieletorelli.net

Andrea Lusuardi - uovobw@gmail.com 


5. Copyright
------------

Copyright 2014 Andrea Lusuardi, Daniele Torelli. 
The program is distributed under the terms of the GNU General Public License
(see LICENSE.txt).

