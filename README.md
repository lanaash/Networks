# snmpping.pl

Useful for troubleshooting aggregated links to prove packet loss (on a member link) where ping may not.

The snmpget sends each poll only once (no retries).

The UDP source port increases incrementally which should hit different member links depending on the hashing algorithm e.g. SRC_IP+SRC_PORT+DST_IP+DST_PORT
