/**
 * @name ECC in comments
 * @description Detecting use of ECC from comments.
 * @kind problem 
 * @severity warning
 * @id pqcee/test1
 */

import javascript

from Comment c
where c.getText().trim().matches("SECP256")
select c, "Is someone using ECC?"
