# High Availability

## Single Node

* will have downtime
* human intervention

## Repplica Set 1

* Single DC
* POF
    - Power
    - Network
    - DC
    - two nodes

## Repl Set 2

* arbiter + 2
* Single DC
* Multiple power/network zones
* POF
    - DC
    - two nodes
* w=2 not viable as losing 1 node means no writes

## Repl Set 3

* three nodes
* Single DC
* w=2 

## Repl Set 4

* 3 nodes
* Multiple DC
* DR node for safety

## Repl Set 5

* 3 DC
* can survive full DC loss
* can do w={dc:2} to gaurantee write in 2 DC

## HA Sharding

### Basics

* each shard a repl set
* balancing can be run in a window (low load at night)

### Config Servers

* use hostnames not IP address
* take backups frequently
* not replica sets (independant nodes) 
    - mongodump/mongorestore
* one should be up at all times

### mongos

* one per appserver
* pool per power region with lb

## Application Magic

* Monitor
    - load, disk, cpu (MMS) i/o very important
    - alerts
* Procedures
    - backups, adding replica sets
* Practice
    - staging
    - controlled environment
    - load testing
