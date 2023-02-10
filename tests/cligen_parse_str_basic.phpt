--TEST--
cligen_parse_str() - parse cli syntax string
--EXTENSIONS--
cligen
--FILE--
<?php
$h = cligen_init();
var_dump(cligen_parse_str($h, "valid;", "valid syntax", NULL, NULL) == 0);
var_dump(cligen_parse_str($h, "invalid", "invalid syntax", NULL, NULL) < 0);
?>
--EXPECT--
bool(true)
invalid syntax:1: Error: syntax error: at or before: ''
bool(true)
