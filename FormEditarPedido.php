<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Atualizar Pedido</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
            crossorigin="anonymous"
            />
        <link rel="stylesheet" href="../css/estilo_pedido.css" />
    </head>

    <body>

        <?php
        include("../conectarbd.php");

        $recid = filter_input(INPUT_GET, 'editarid');

        $selecionar = mysqli_query($conn, "SELECT * FROM tb_pedido WHERE id_pedido=$recid");

        $campo = mysqli_fetch_array($selecionar);
        ?>

        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light-blue fixed-top">
                <a class="navbar-brand" href="../index.php">
                    <img src="../img/logo.png" alt="" />
                </a>
                <button
                    class="navbar-toggler"
                    type="button"
                    data-toggle="collapse"
                    data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <div class="dropdown">
              <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Cliente
              </button>
              <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="../Cliente/ConsultarCliente.php">Consultar</a></li>
                  <li><a class="dropdown-item" href="../Cliente/FormCadCliente.html">Cadastrar</a></li>
              </ul>
          </div>
          
          <div class="dropdown" style="margin-left: 20px">
              <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Contato
              </button>
              <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="../Contato/ConsultarContato.php">Consultar</a></li>
                  <li><a class="dropdown-item" href="../Contato/FormCadContato.php">Cadastrar</a></li>
              </ul>
          </div>
          
          <div class="dropdown" style="margin-left: 20px">
              <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Funcionário
              </button>
              <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="../Funcionario/ConsultarFuncionario.php">Consultar</a></li>
                  <li><a class="dropdown-item" href="../Funcionario/FormCadFuncionario.html">Cadastrar</a></li>
              </ul>
          </div>
          
          <div class="dropdown" style="margin-left: 20px">
              <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Fornecedor
              </button>
              <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="../Fornecedor/ConsultarFornecedor.php">Consultar</a></li>
                  <li><a class="dropdown-item" href="../Fornecedor/FormCadFornecedor.html">Cadastrar</a></li>
              </ul>
          </div>
          
          <div class="dropdown" style="margin-left: 20px">
              <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Pedido
              </button>
              <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="../Pedido/ConsultarPedido.php">Consultar</a></li>
              </ul>
          </div>
          
          <div class="dropdown" style="margin-left: 20px">
              <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Produto
              </button>
              <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="../Produto/ConsultarProduto.php">Consultar</a></li>
                  <li><a class="dropdown-item" href="../Produto/FormCadProduto.html">Cadastrar</a></li>
              </ul>
          </div>
                    <form class="ms-auto me-2 d-flex">
                        <input
                            class="form-control me-2"
                            type="search"
                            placeholder="O que deseja buscar"
                            aria-label="Search"
                            />
                        <button class="btn btn-outline-info" type="submit">
                            Buscar
                        </button>
                    </form>
                </div>
            </nav>
        </header>
        <!--Corpo da página -->
        <main>
            <section id="section-cliente">
                <h1>Atualizar Pedido</h1>
                <br>
                <div class="d-flex justify-content-center">
                    <form method="post" action="EditarPedido.php" id="login">

                        <!esta linha cria um campo oculto para passar o id_cidade, pois senão ao clicar em Salvar o código não saberá onde salvar.-->
                        <input type="hidden" name="id" value="<?= $campo["id_pedido"] ?>">

                        <p>
                            <label for="nome">Nome: </label>
                            <input
                                value="<?= $campo["nome"] ?>"
                                id="nome" 
                                name="nome"
                                required="required"
                                type="text"
                                placeholder="Insira o seu nome"
                                class="form-control"
                                />
                        </p>

                        <p>
                            <label for="email">Email: </label>
                            <input
                                value="<?= $campo["email"] ?>"
                                id="email" 
                                name="email"
                                required="required"
                                type="email"
                                placeholder="Coloque o seu email"
                                class="form-control"
                                />
                        </p>

                        <p>
                            <label for="endereco">Endereço: </label>
                            <input
                                value="<?= $campo["endereco"] ?>"
                                id="endereco" 
                                name="endereco"
                                required="required"
                                type="text"
                                placeholder="Insira o seu endereço"
                                class="form-control"
                                />
                        </p>

                        <p>
                            <label for="tel_cel">Telefone/Celular: </label>
                            <input
                                value="<?= $campo["tel_cel"] ?>"
                                id="tel_cel" 
                                name="tel_cel"
                                required="required"
                                type="text"
                                placeholder="Insira o telefone/celular"
                                class="form-control"
                                />
                        </p>

                        <p>
                            <label for="produto">Produto: </label>
                            <select name="produto">
                                value="<?= $campo["produto"] ?>"
                                <option value="brinco_redondo">Brinco redondo
                                <option value="colar_pedra">Colar de pedra e alça
                                <option value="brinco_corrente">Brinco corrente
                                <option value="pulseira">Pulseira segmentada unicolor  
                                <option value="brinco_argola">Brinco argola com bolinhas coloridas
                                <option value="colar_conde">Colar de pedras especialmente condecoradas
                                <option value="anel_ouro">Anel banhado a ouro 
                                <option value="colar_pero">Colar de perolas
                                <option value="pul_pero">Pulseira de perolas    
                            </select>
                        </p>

                       
                        <p>
                            <label for="forma_pg">Forma de Pagamento: </label>
                            <select name="forma_pg">
                                value="<?= $campo["forma_pg"] ?>"
                                <option value="dinheiro">Dinheiro
                                <option value="pix">Pix
                                <option value="cartao credito">Cartão de Credito
                                <option value="cartao debito">Cartão de Debito
                            </select>
                        </p>

                        <p>
                            <label for="observacoes" id="observacoes" value="<?= $campo["observacoes"] ?>">Observacões: </label>
                            <textarea name="observacoes"></textarea>
                        </p>

                        <p>
                            <input
                                type="submit"
                                value="Atualizar"
                                class="btn btn-primary"
                                id="bt-login"
                                />
                        </p>
                    </form>



                </div>
            </section>

        </main>

        <footer>
            <p></p>
        </footer>
        
        <script>

            var tel_cel = document.getElementById("tel_cel");

            tel_cel.addEventListener("input", () => {
                var limparValor = tel_cel.value.replace(/\D/g, "").substring(0, 11);
                var numerosArray = limparValor.split("");
                var numeroformatado = "";

                if (numerosArray.length > 0) {
                    numeroformatado += `(${numerosArray.slice(0, 2).join("")})`;
                }

                if (numerosArray.length > 2) {
                    numeroformatado += ` ${numerosArray.slice(2, 7).join("")}`;
                }

                if (numerosArray.length > 7) {
                    numeroformatado += `-${numerosArray.slice(7, 11).join("")}`;
                }

                tel_cel.value = numeroformatado;
            });

        </script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"
        ></script>
        <script src="js/script.js"></script>

        <script
            src="https://code.jquery.com/jquery-3.6.1.js"
            integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
            crossorigin="anonymous"
        ></script>
        <script type="text/javascript" src="js/jquery-script.js"></script>
    </body>
</html>
