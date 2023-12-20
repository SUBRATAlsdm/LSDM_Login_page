<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Home</title>
</head>
<body>

<?php if(isset($username)): ?>
        <h2>Welcome <?php echo $username; ?></h2>
    <?php endif; ?>

</body>
</html>