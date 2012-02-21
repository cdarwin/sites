# Replication

## Replica set

* Async replication

* Failure
    - Automatic leader elction
    - driver (should) know about all elections
    - old primary can come back as a secondary
    - scale read capacity

### Consistency

* Strong 
    - driver send all reads and writes to primary
    - default
* Eventually
    - driver sends all writes to primary
    - reads also come from secondary
    - might read a stale object
    - query by query basis (slave ok)

### Durability

* Fire and forget
    - default mode
    - collecting log data
* Get last error
    - getLastError
    - driver writes and immediately send a request for an error
    - may be a "safe mode" in the driver
* Wait for Journal Sync
    - j:true
    - make sure the write was applied to the journal
    - an option passted to getLastError
* Wait for fsync
    - fsync:true
    - much slower
    - you may not care about performance, but really want to be sure it has been written
* Wait for replication
    - w:2
    - write applied to at least two nodes before returning
    - there should be at least two copies
    - can still survive the failure of a single node
    - never set w to a value higher than the number of nodes
    - w:majority replicate to a majority of replica set member

### Tagging

* define custom error modes
* getLastErrorModes
    - veryImportant
    - sortOfImportant

### Options

* Priorities
    - value of 0 will never become primary (perhabs a backup node)
    - up to date
* Slave Delay
    - lags behind master by configurable time delay
    - automatically hidden from clients
    - protects agains operator erros
* Arbiter
    - vote in election
    - don't store a copy of data
    - use as a tie breaker

## Deployment

* Backup node
    - hidden = true
    - never service application traffic
* DR
    - Active DC + Standby DC
* Multiu Data Center
    - nodes in multiple DCs
    - primary in a single DC (central physical location)
