/**
 * @name Use of quantum vulnerable function
 * @description Checking for use of RSA functions in openSSL. RSA is vulnerable to Shor's algorithm.
 * @kind problem
 * @problem.severity error
 * @security-severity 10.0
 * @precision high
 * @id cpp/weak-cryptographic-algorithm
 * @tags security
 *       external/cwe/cwe-327
 */

import cpp

from FunctionCall call, Function target
where
  call.getTarget() = target and
  target.hasGlobalOrStdName("RSA_public_encrypt")
select call, "Possible use of RSA."
