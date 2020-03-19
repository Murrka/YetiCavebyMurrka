<?php
$is_auth = rand(0, 1);

$user_name = 'Murrka'; // укажите здесь ваше имя
$Cattegory=array("boards"=>"Доски и лыжи",
"attachment"=>"Крепления",
"boots"=>"Ботинки",
"clothing"=>"Одежда",
"tools"=>"Инструменты", 
"other"=>"Разное");

$tovari=array( array("Name"=>"2014 Rossingnol District Snowboard", "Kategoria"=>"Доски и лыжи", "Price"=>"10999", "Image"=>"img/lot-1.jpg"),
array("Name"=>"DC Ply Mens 2016/2017 Snowboard", "Kategoria"=>"Доски и лыжи", "Price"=>"159999", "Image"=>"img/lot-2.jpg"),
array("Name"=>"Крепления Union Contact Pro 2015 года размер L/XL", "Kategoria"=>"Крепления", "Price"=>"8000", "Image"=>"img/lot-3.jpg"),
array("Name"=>"Ботинки для сноуборда DC Mutiny Charocal", "Kategoria"=>"Ботинки", "Price"=>"10999", "Image"=>"img/lot-4.jpg"),
array("Name"=>"Куртка для сноуборда DC Mutiny Charocal", "Kategoria"=>"Одежда", "Price"=>"7500", "Image"=>"img/lot-5.jpg"),
array("Name"=>"Маска Oakley Canopy", "Kategoria"=>"Разное", "Price"=>"5400", "Image"=>"img/lot-6.jpg"));

//функция 18.03.2020
function OneIzmeneia($price,$chek){
	$price=ceil($price);
	if($price>=1000)
	{
		$priceItog=number_format($price,0,',',' ');
	}
	else{
		$priceItog=$price;
	}
	if($chek==true){
	return $priceItog . ' <b class="rub">р</b>';}
	else{
	return $priceItog;}
	
}


$title_name="Главная";

function include_template($name, $data) {
    $name = 'templates/' . $name;
    $result = '';
 
    if (!file_exists($name)) {
        return $result;
    }
 
    ob_start();
    extract($data);
    require($name);
 
    $result = ob_get_clean();
 
    return $result;
}

?>