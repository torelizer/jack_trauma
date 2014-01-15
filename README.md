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
* -p [port]: UDPLite port in use
* -h: display help message

*Example*:

To do a local test, once you have a running JACK server run:

./jack\_trauma -s -c 8 -a 127.0.0.1 -p 8000

On another terminal, run:

./jack\_trauma -c 8 -a 127.0.0.1 -p 8000

If the JACK server is not running, jack\_trauma will attempt to launch one
based on your ~/.jackdrc configuration file.


4. Authors
----------

Daniele Torelli - http://www.danieletorelli.net

Andrea Lusuardi - uovobw@gmail.com 


5. Copyright
------------

Copyright 2014 Andrea Lusuardi, Daniele Torelli
The program is distributed under the terms of the GNU General Public License
(see LICENSE.txt).

