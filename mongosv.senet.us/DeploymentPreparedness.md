# Deployment Preparedness

A MongoDB Survival Kit

1. Machine Sizing
!. Load Testing/Monitoring
1. Backup/Restore
1. Ops

## Sizing

Generally all Virtual Address space will not page into physical RAM
    Resident memory size - mongostat

Run mongod on it's own server
    it will try to use all available RAM
    preforms best

Mem v. Disk

Collection.stats()
    paddingFactor - adjustable learning figure
    avgObjSizem, storageSize, totalIndexSize

### Disk

10gen recomends RAID10

### Takeaway

* Know how important page faults are
    - If you want low latency, avaoid page faults
* Size memory appropriately
    - To avoid page faults, fir everything in RAM
    - Collection Data + Index Data
* Provition disk appropriately
    - RAID 10 is recommended
    - SSDs are fast, if you can afford them

### Monitoring

* MMS 
    http://mms.10gen.com/
* mongostat
* munin, cacti, nagios
    http://www.mongodb.org/display/DOCS/Monitoring+and+Diagnostics

### Backups

* mongodump v. snapshots
* Restore a member v. whole rep set v. whole cluster
* Don't forget config dbs
    when sharding, these need to be in sync across all nodes

### Plan for the worst


