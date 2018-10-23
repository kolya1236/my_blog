<?php
	$dbhost = "localhost";
	$dbname = "blog_db";
	$username = "kolya1236";
	$password = "mellohi5935";

	$db = new PDO("mysql:host=$dbhost; dbname=$dbname", $username, $password);

	function get_group_posts($current)
	{
		global $db;
		$articles = $db->prepare("SELECT * FROM blog WHERE id BETWEEN ? AND ?");
		$articles->execute([$current*3-2, $current*3]);
		return $articles;
	};


	function get_single_post($id)
	{
		global $db;
		$single = $db->prepare("SELECT * FROM blog WHERE id=?");
		$single->execute([$id]);
		return $single;
	};

	function limit_echo($x){
		echo substr($x,0,200).'...';
	};

	function move_left(){
		$current = (empty($_GET['page'])? 1 : (int)($_GET['page']));
		$current = $current - 1;
		return $current;
	};

	function move_right(){
		$current = (empty($_GET['page'])? 1 : (int)($_GET['page']));
		$current = $current + 1;
		return $current;
	};

?>
