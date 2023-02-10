--TEST--
cligen_exit
--EXTENSIONS--
cligen
--FILE--
<?php
$h = cligen_init();
var_dump(cligen_exit($h));
?>
--EXPECT--
int(0)
