--TEST--
cligen_comment() - set comment character
--EXTENSIONS--
cligen
--FILE--
<?php
$comment0 = chr(0);
$h = cligen_init();
var_dump(cligen_comment($h) == $comment0);
?>
--EXPECT--
bool(true)
