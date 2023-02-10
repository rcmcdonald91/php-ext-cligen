--TEST--
cligen_check() - check cligen handle validity
--EXTENSIONS--
cligen
--FILE--
<?php
$h = cligen_init();
var_dump(cligen_check($h) == 0);
?>
--EXPECT--
bool(true)
