<?php

    //importando o arquivo de conexão com o BD(connect)//
    require("connect.php");

    //Obtendo os valores dos campos
    $codigo_livro = $_POST['c_codigo'];

    //Inserindo os dados
    $sql = "DELETE FROM `item` WHERE codigo_item = $codigo_livro";
    
    //Executando a SQL que esta na variavel
    $resultado = mysqli_query($conexao, $sql);

    echo "Livro excluido com sucesso";
?>
<p><a href="form_cadastrar_livro.html">Voltar</a>