--TEST--
test1() Basic test
--EXTENSIONS--
cligen2
--FILE--
<?php
$ret = test1();

var_dump($ret);
?>
--EXPECT--
The extension cligen2 is loaded and working!
NULL
