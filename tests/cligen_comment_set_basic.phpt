--TEST--
cligen_comment_set() - set comment character
--EXTENSIONS--
cligen
--FILE--
<?php
$comment0 = "#";
$h = cligen_init();
var_dump(cligen_comment_set($h, $comment0) == 0);
var_dump(cligen_comment($h) == $comment0);
?>
--EXPECT--
bool(true)
bool(true)
