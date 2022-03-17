<?php
//Importante o arquivo de conexão com o BD(connect)//
require("connect.php");

//obtendo os valores dos campos 
$quantidade = $_POST['c_quantidade'];
$descricao = $_POST['c_descricao'];
$autor = $_POST['c_autor'];
$tipo_capa = $_POST['tipo_capa'];
$categoria_livro = $_POST['categoria_livro'];
$termo = $_POST['c_termo'];
$data_retirada = $_POST['data_retirada'];

//armazenando a SQL em uma variavel
$sql = "INSERT INTO `item`(`quantidade`, `descricao`, `autor`, `tipo_capa`, `categoria`, `termo`,`data_retirada`)
 VALUES ('$quantidade', '$descricao', '$autor', '$tipo_capa', '$categoria_livro', '$termo', '$data_retirada')";

//executando a SQL que esta na variavel
$resultado = mysqli_query($conexao, $sql);

//imprimindo na tela
echo "Livro inserido com sucesso!";
?>
<p><a href="form_cadastrar_livro.html">Voltar</a>