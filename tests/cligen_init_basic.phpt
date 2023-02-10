--TEST--
cligen_init() - initialize cligen handle
--EXTENSIONS--
cligen
--FILE--
<?php
var_dump(!is_null(cligen_init()));
?>
--EXPECT--
bool(true)
