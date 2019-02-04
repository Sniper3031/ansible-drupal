$ORIGIN .
$TTL 86400      ; 1 day
example.com     IN SOA nodo1.example.com. postmaster.example.com. (
                                1          ; serial
                                21600      ; refresh (6 hours)
                                3600       ; retry (1 hour)
                                604800     ; expire (1 week)
                                21600      ; minimum (6 hours)
                                )
                        NS      nodo1.example.com.
$ORIGIN example.com.
nodo1	IN	A	192.168.1.10
nodo2	IN	A	192.168.1.2
drupal	IN	CNAME	nodo2
