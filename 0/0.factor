! Copyright (C) 2022 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: accessors io io.encodings.ascii io.encodings.binary
io.servers io.sockets kernel ;
IN: protohackers.0


: handle-request ( -- ) readln write flush ;

: <proto-server-0> ( port -- threaded-server ) 
  binary <threaded-server>
  "protoserver-0" >>name
  swap >>insecure
  [ handle-request ] >>handler ;
  
: protoserver-0-main ( -- ) 6000 <proto-server-0> start-server wait-for-server ;

MAIN: protoserver-0-main
