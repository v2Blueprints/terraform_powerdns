#!/bin/sh
 sqlite3 /var/lib/powerdns/pdns.sqlite3 < /usr/share/pdns-backend-sqlite3/schema/schema.sqlite3.sql
 chown -R pdns /var/lib/powerdns/
 chmod og-r /var/lib/powerdns/pdns.sqlite3 
 pdnsutil create-zone spaces.internal ns1.spaces.internal
