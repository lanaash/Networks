# SSH notes and hints


## Man page

man ssh_config


## Check supported features

ssh -Q key
ssh -Q kex
ssh -Q ciphers


### Close hung session

~ . 'hit enter key'


## Keys

## Create key pair

```ssh-keygen -t ed25519 -C "comment"```


### List loaded keys

```ssh-add -L```


### Remove knownhost

```ssh-keygen -R [hostname]```


## SSH Tunnels


### SOCKS proxy

```plink -ssh -D :9999 user@x.x.x.x -N```

e.g. set browser SOCKSv4 proxy to 127.0.0.1:9999


### local port fowrarding (i.e. socket is local)

```ssh -L 5000:127.0.0.1:5000 192.168.0.1```

e.g. browse http://localhost:5000


#### Add forward to existing session

'hit enter key' ~ C

```-L localport:server:serverport```

e.g. 

## Remote port forwarding (i.e. socket is remote)


```ssh 192.168.0.1 -fTN -R *:1000:192.168.1.1:23```

e.g. telnet 192.168.0.1 1000



## sshpass

```sshpass -f pass.txt -l admin x.x.x.x 'command'```

## Batching

### Connect timeout

-o ConnectTimeout=3

### Scripting e.g. sshpass

-o StrictHostKeyChecking=no

### Improve scp throughput (remove CS1 marking)

-o IPQoS=throughput

## Old devices

### Mikrotik RouterOS

```ssh -l admin -o Ciphers=3des-cbc -o kexAlgorithms=diffie-hellman-group1-sha1 x.x.x.x```

```ssh -l admin -o HostKeyAlgorithms=ssh-dss -o kexAlgorithms=diffie-hellman-group1-sha1 x.x.x.x```

Might also need;

-o PubkeyAcceptedAlgorithms=ssh-dss


### Cisco IOS

If you get "Bad server host key: Invalid key length" or "no matching cipher found"

```ssh x.x.x.x -o Ciphers=3des-cbc -o HostKeyAlgorithms=ssh-rsa -o RequiredRSASize=1024```

Might also need;

-o kexAlgorithms=diffie-hellman-group1-sha1





