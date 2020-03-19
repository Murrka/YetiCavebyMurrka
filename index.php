<?php //by Murrka
require_once("functions.php");

$index_file=include_template('index.php', array('Cattegory'=>$Cattegory,'tovari'=>$tovari));

print(include_template('layout.php', array('index_file'=>$index_file,'title_name'=>$title_name,'Cattegory'=>$Cattegory,'is_auth'=>$is_auth,
'user_name'=>$user_name)));
?>

