#!/usr/bin/perl

$ping = "snmpget -Ovq -r0 -v 2c -c public 192.168.0.1 .sysDescr.0";

while (1) {
    $SIG{INT} = \&signal_handler;
    system ("$ping > /dev/null 2>&1");
    if ($? == 0) {
        # ...we got a reply
        print "\!";
    } else{
        # ...or we didn't
        print".";
    }

}

sub signal_handler {
   die "Caught a signal $!";
}
