# snmpping.pl

Useful for troubleshooting aggregated links to prove packet loss (on a member link) where ping may not.

The UDP source port increases incrementally which should hit different member links depending on the hashing algorithm e.g. SRC_IP+SRC_PORT+DST_IP+DST_PORT

The snmpget sends each poll only once (no retries). Default timeout is 1 sec.


# Packet loss hunting accross customer estate

    for i in `cat my_ips.txt`; do fping -p20 -r0 -q -c50 $i; done


