--TEST--
Check if cligen is loaded
--EXTENSIONS--
cligen
--FILE--
<?php
echo 'The extension "cligen" is available';
?>
--EXPECT--
The extension "cligen" is available
