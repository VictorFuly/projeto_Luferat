<?php

/**
 * Arquivo que faz a configuração incial da página.
 * Por exemplo, conecta-se ao banco de dados.
 * 
 * A superglobal "$_SERVER['DOCUMENT_ROOT']" retorna o caminho da raiz do site no Windows.
 * Ex.: C:\xampp\htdocs 
 *     Referências:
 *     → https://www.w3schools.com/php/php_includes.asp
 *     → https://www.php.net/manual/pt_BR/function.include.php
 *     → https://www.php.net/manual/pt_BR/language.variables.superglobals.php
 */
require($_SERVER['DOCUMENT_ROOT'] . '/_config.php');

/***********************************************
 * Seus códigos PHP desta página iniciam aqui! *
 ***********************************************/


/************************************************
 * Seus códigos PHP desta página terminam aqui! *
 ************************************************/

/**
 * Variável que define o título desta página.
 * Essa variável é usada no arquivo "_header.php".
 * OBS: para a página inicial (index.php) usaremos o 'slogan' do site.
 *     Referências:
 *     → https://www.w3schools.com/php/php_variables.asp
 *     → https://www.php.net/manual/pt_BR/language.variables.basics.php
 */
$title = "Os reis do Olympus";

/**
 * Inclui o cabeçalho da página.
 */
require($_SERVER['DOCUMENT_ROOT'] . '/_header.php');

?>

<section>
<h2>Criadores</h2>
    <div class="fogo">
        <p> Esse site foi criado por Lucas Freitas, Victor hugo e Lincoln Pereira, alunos do SENAC-Madureira, em conjunto com o Professor André Luferat para a conclusão do Projeto Integrador. </p>
        <div id="foto">
            <figure>
                <img src="/img/criador1.jpg" alt="foto">
                <p>Lucas</p>    
            </figure>
            <figure>
                <img src="/img/criador2.jpg" alt="foto">
                <p>Victor</p>   
            </figure>
            <figure>
                <img src="/img/criador3.jpg" alt="foto">
                <p>Lincoln</p>   
            </figure>
        </div>
        
    </div>
    
    
</section>

<aside>

   

</aside>

<?php

/**
 * Inclui o rodapé da página.
 */
require($_SERVER['DOCUMENT_ROOT'] . '/_footer.php');
