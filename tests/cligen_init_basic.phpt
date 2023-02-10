--TEST--
cligen_init: test initialization of cligen handle
--EXTENSIONS--
cligen
--FILE--
<?php
$h = cligen_init();
var_dump($h);
?>
--EXPECT--
object(SWIG\_p_cligen_handle)#1 (0) {
}
