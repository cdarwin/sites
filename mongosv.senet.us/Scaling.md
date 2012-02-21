# Scaling and Flexibility

* Auto Scal
    - scalr
* Each mongodb node on a seperate ec2 availability zone
* Arbiter
    - two nodes in seperate availability zones
    - in a three node replica set, you don't need an arbiter
* Application stack
    - php code ignigter 
    - Doctrine (ODM)

* Arrays 

## Key learnings

* EC2 - replica sets in multiple zones
* Don't worryabout normalizing data, embed subdocs when possible
* Arrays
    - highest flexibility in queries
    - filtering on the client doesn't pose a problem
    - updates are not limited by the positional operator
* Improve query performance by initializing data upon initial insert
* ODM will make your life much easier
