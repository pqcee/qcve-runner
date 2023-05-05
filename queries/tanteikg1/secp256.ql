/**
 * @name Use of quantum vulnerable function
 * @description Use of secp256k1 curves is vulnerable to Shor's algorithm.
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
  target.hasGlobalOrStdName("secp256k1_ecdsa_sign")
select call, "'secp256k1' is an ECC curve that is vulnerable to Shor's algorithm."
