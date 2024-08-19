<?php 

include_once("../conexao.php");

$usuario = $_GET['usuario'];
$senha = $_GET['senha'];

$dados = array();

$query = $pdo->query("SELECT * from usuarios where usuario = '$usuario' and senha = '$senha'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);

for ($i=0; $i < count($res); $i++) { 
      foreach ($res[$i] as $key => $value) {}

      	$dados = $res;


}

echo ($res) ?
json_encode(array("code" => 1, "result"=>$dados)) : 
json_encode(array("code" => 0, "message"=>"Dados incorretos!")) 

?>