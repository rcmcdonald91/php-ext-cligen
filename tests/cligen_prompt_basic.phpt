--TEST--
cligen_prompt() - get prompt string
--EXTENSIONS--
cligen
--FILE--
<?php
$prompt0 = "cli> ";
$h = cligen_init();
var_dump(cligen_prompt($h) == $prompt0);
?>
--EXPECT--
bool(true)
