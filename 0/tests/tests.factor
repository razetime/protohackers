! Copyright (C) 2022 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: protohackers.0 io.sockets io.encodings.binary bit-arrays prettyprint io io.servers syntax ;
IN: protohackers.0.tests

: run-client ( -- server ) 
  1234 <proto-server-0> start-server
  "localhost" 1234 <inet> binary [ B{ 1 0 1 } write flush 4 read ] with-client . ;

