## Amazon ElastiCache for Redis and Memcached - Java client examples

This repository contains examples for using Java clients to interact with [Amazon ElastiCache](https://aws.amazon.com/elasticache/) for [Redis](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/WhatIs.html) and [Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/WhatIs.html).  These examples demonstrate the following,

* How to connect/disconnect to Amazon ElastiCache for Redis using the open-source Redis client [Jedis](https://github.com/redis/jedis).
* How to connect/disconnect to Amazon ElastiCache for Memcached using the [ElastiCache Cluster Client](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/AutoDiscovery.Using.ModifyApp.Java.html).
* Add/update entries in the cache.
* Lookup cache values by key.
* Delete cache entries by key.

### Overview

[Amazon ElastiCache](https://aws.amazon.com/elasticache/) makes it easy to set up, manage and scale distributed in-memory cache environments in the AWS Cloud.  It provides a high performance, resizable and cost-effective in-memory cache, while removing complexity associated with deploying and managing a distributed cache environment.  ElastiCache works with both the open source [Redis](https://redis.io/) and the open source [Memcached](https://memcached.org/) engines.

### Repository structure

This repository contains the following directories,

* [src](https://github.com/aws-samples/amazon-elasticache-redis-and-memcached-java-client-examples/tree/main/src/com/amazonaws/elasticachedemo) - the Java source files for your reference.

* [dist](https://github.com/aws-samples/amazon-elasticache-redis-and-memcached-java-client-examples/tree/main/dist) - the distributable with jar files, configuration files and Linux/Windows scripts.  The instructions to run these are specified below.

### Prerequisites to run the examples

Prior to running these examples, make sure you have all the following are configured in the same AWS region and in the same AWS account.

**Amazon ElastiCache clusters:**

Note: These should be created with location as 'Amazon Cloud' and in private subnet groups in the same VPC.
1. An Amazon ElastiCache Redis cluster with cluster-mode disabled.  Refer [here](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.html).
2. An Amazon ElastiCache Redis cluster with cluster-mode enabled.  Refer [here](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.html).
3. An Amazon ElastiCache Memcached cluster.  Refer [here](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/Clusters.html).

**Security groups:**

1. On the Redis clusters, the security group should provide inbound TCP access on port 6379 from the EC2 instance that is to be configured in the following steps.

2. On the Memcached cluster, the security group should provide inbound TCP access on port 11211 from the EC2 instance that is to be configured in the following steps.

3. On the EC2 instance to be created in the following steps, the security group should provide outbound TCP access on port 6379 to the Redis clusters and outbound TCP access on port 11211 to the Memcached cluster.

**IAM role:**

Note: An IAM role is global and not constrained to a region.
1. An [IAM role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) with full access to operate on these clusters.  For more info on this, refer [here](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.html).

**Amazon EC2 instance:**
1. An Amazon EC2 instance in Linux/Windows with this IAM role attached and in the same VPC as the ElastiCache clusters created in the previous steps.  The subnet should be private, preferably one that is part of the private subnet group configured for the ElastiCache clusters.
2. Java 11 ([Amazon Corretto 11](https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/what-is-corretto-11.html) or [Oracle JDK 11](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html)) should be installed in this instance.

### How to run the examples

1. Copy the `dist` folder to your preferred folder in the EC2 instance.
2. Configure the properties:

  a. Specify the ElastiCache cluster URL depending on the type of the cluster in the appropriate `.properties` file.

  b. If you prefer, you can leave the other properties as-is; else update them as required.

3. Configure the scripts in the bin directory:

  a. If the EC2 instance is a Linux instance, then open the `.sh` scripts in the `bin-linux`.

  b. If the EC2 instance is a Windows instance, then open the `.bat` scripts in the `bin-windows`.

  c. Set the following variables:

  `TOOL_HOME` to the full path of the `dist` directory in the file system.

  `JAVA_CMD` to the full path to the Java 11 'java' executable in the file system.

  d. Set execute permissions on these scripts.

4. Run the scripts and observe the output.

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

