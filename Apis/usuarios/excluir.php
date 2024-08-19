<?php 

include_once("../conexao.php");


$id = $_GET['id'];	

$dados = array();

$query = $pdo->query("DELETE FROM usuarios where id = '$id'");


echo ($query) ?
json_encode(array("code" => 1, "result"=>"Excluído com Sucesso")) : 
json_encode(array("code" => 0, "result"=>"Erro ao Excluir!")) 

 ?>