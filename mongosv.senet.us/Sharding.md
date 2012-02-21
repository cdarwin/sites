# Sharding

## Architecture

* each shard is a replication set
* mongos
    - shard router
    - acts like a mongod
    - as many as you want
    - can run on app server
    - caches metadata from config servers
* config servers
    - 3 of them
    - not a replica set
    - 2 phase commit
    - fail goes read only

## How it works

* Keys
    - choose how data is partitioned
    - shardcollection: "foo", key: { bar }
* Chunks
    - range of keys
    - how much data lives in a chunk?
    - stored in config server
    - used to route requests and keep cluster balanced
* Split
    - about 64M
    - as data gets add, more splits occur
* Balancing
    - same number of chunks on every shard
    - balancer lives in mongos
    - p2p xfer of chunks between shards until chunks are evenly distributed
    - minimize how many times this happens
* Routing
    - routed request
    - scatter gather (send request in parallel to all shards) slightly more expensive
    - distributed merge sort (every shart locally sorts it's results in parallel)
* Writes
    - Inserts require shard key
    - Removes routed or scattered
    - updates routed or scatter
* Queries
    - by shard key - routed
    - sorted by shard key - routed in order
    - 

##  

avoid sharding on a timestamt or auto incrimenting
MD5(data)
    - working set size is the size in memory
    - good distribution, but not on size
Month() + MD5
    - good balance of write distribution and indexes are right-aligned
