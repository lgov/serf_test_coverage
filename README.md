serf_test_coverage
==================

Test coverage scripts and reports for the serf http library.

The serf library is a high performance C-based HTTP client library built upon the Apache Portable Runtime (APR) library. It is permissively licensed under the Apache License, v2.

Key features:

* multiplexed, asynchronous connections
* SSL/TLS support
* full HTTP pipelining
* multiple authentication modes (Basic, Digest, Kerberos/NTLM)
* zero-copy support for increased throughput

The serf source code is hosted at Google Code: http://serf.googlecode.com .


The test coverage reports are created on Mac OS X by running 'scons check' with the instrumented code.
The resulting reports can be browsed online at: https://rawgithub.com/lgov/serf_test_coverage/master/coverage/index.html .
