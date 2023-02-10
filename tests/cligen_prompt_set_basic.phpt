--TEST--
cligen_prompt_set() - set prompt string
--EXTENSIONS--
cligen
--FILE--
<?php
$prompt0 = 'cli> ';
$h = cligen_init();
var_dump(cligen_prompt($h) == $prompt0);
$prompt1 = 'hello> ';
var_dump(cligen_prompt_set($h, $prompt1) == 0);
var_dump(cligen_prompt($h) == $prompt1);
?>
--EXPECT--
bool(true)
bool(true)
bool(true)
