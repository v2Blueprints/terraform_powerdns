#!/bin/sh

if test -f /var/lib/powerdns/pdns.sqlite3 
	 then
	 	/root/setup.sh
	#	sqlite3 /var/lib/powerdns/pdns.sqlite3 < /usr/share/doc/pdns-backend-sqlite3/schema.sqlite3.sql
	#	pdnsutil create-zone spaces.internal ns1.spaces.internal
	fi	

exec /usr/sbin/pdns_server  --guardian=yes   --local-address=0.0.0.0  --master=yes  
 