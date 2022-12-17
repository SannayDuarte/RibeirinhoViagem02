<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <title>Document</title>
  <link rel="stylesheet" href="5passagens.css">

</head>

<body>
  <!--cabeçalho home-->
  <header>
    <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container-fluid">
        <a class="navbar-brand pr" href="<c:url value="index"/>">
          <h2 class="tit">Ribeirinho Viagem</h2>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
          aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-link" id="links" href="<c:url value="index"/>">Pagina Inicial</a>
            <a class="nav-link" id="links" href="<c:url value="ajuda"/>">Ajuda</a>
          </div>
        </div>
      </div>
    </nav>
  </header>
  <!--cabeçalho home-->

  <!--comprar-->
  <form>
    <h2>Coloque os dados do passageiro</h2>
    <main id="form">
      <div id="pes">
        <div class=" mb-6 ">
          <label for="id_comprador" class="form-label">ID COMPRADOR</label>
          <input type="text" class="form-control" id="id_comprador" aria-describedby="id_comprador" placeholder="Id_omprador">
        </div>
        <div class=" mb-6">
          <label for="nome" class="form-label">Nome e Sobrenome</label>
          <input type="text" class="form-control" id="nome" name="nome" aria-describedby="nome"
            placeholder="Escreva seu Nome" required>
        </div>
        <div class=" mb-6">
          <label for="nome" class="form-label">Data de Nascimento</label>
          <input type="date" class="form-control" id="nasc" name="nascimento" aria-describedby="nasc" required>
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate"
              required="Somente Pessoas Maior de 18">
            <label class="form-check-label" for="flexCheckIndeterminate">
              Declaro que sou maior de idade.
            </label>
        </div>
          <label for="nome" class="form-label">Rg</label>
          <input type="text" class="form-control" id="rg" name="rg" aria-describedby="rg" placeholder="Escreva seu Rg"
            required>
          <label for="nome" class="form-label">Cpf</label>
          <input type="text" class="form-control" id="cpf" name="cpf" aria-describedby="cpf"
            placeholder="Escreva seu Cpf" required>
        </div>
        <div class="sx">
          <div class="form-check">
            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" required>
            <label class="form-check-label" for="flexRadioDefault1">
              Feminino
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked
              required>
            <label class="form-check-label" for="flexRadioDefault2">
              Masculino
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked
              required>
            <label class="form-check-label" for="flexRadioDefault2">
              Outros
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked
              required>
            <label class="form-check-label" for="flexRadioDefault2">
              Prefiro não declarar
            </label>
          </div>
          <div class=" mb-6">
            <label for="nome" class="form-label">Celular com DDD</label>
            <input type="tel" class="form-control" id="celular" aria-describedby="tel" name="celular"
              placeholder="digite seu numero com o ddd" required>
          </div>
          <div class=" mb-6 ">
            <label for="Cidade" class="form-label">CEP</label>
            <input type="text" class="form-control" id="cep" name="cep" aria-describedby="Cep"
              placeholder="digite o CEP">
          </div>
        </div>
      </div>
      <div id="end">

        <div class=" mb-6">
          <label for="estado" class="form-label">Estado</label>
          <input type="text" class="form-control" id="estado" name="estado" aria-describedby="estado"
            placeholder="digite o nome do seu estado">
        </div>
        <div class=" mb-6 ">
          <label for="cidade" class="form-label">Cidade</label>
          <input type="text" class="form-control" id="cidade" name="estado" aria-describedby="cidade"
            placeholder="digite o nome da sua cidade">
        </div>
        <div class=" mb-6">
          <label for="bairro" class="form-label">Bairro</label>
          <input type="text" class="form-control" id="bairro" aria-describedby="bairro"
            placeholder="digite o nome do Bairro">
        </div>
        <div class=" mb-6">
          <label for="Rua" class="form-label">Rua e N°</label>
          <input type="text" class="form-control" id="rua" aria-describedby="rua"
            placeholder="digite o Nome da sua Rua e o N° da sua Residencia">
        </div>
        <br>
        <div class=" mb-6">
          <label for="destino" name="destino" class="form-label">CODIGO DA CIDADE DE DESTINO</label>
          <select class="form-select form-select-sm" aria-label=".form-select-sm example">
            <option selected>Selecione a Cidade de Saida</option>
            <option value="1">01-MANAUS</option>
            <option value="2">02-TEFE</option>
            <option value="3">03-MARAA</option>
            <option value="4">04-MAUES</option>
            <option value="5">05-TABATINGA</option>
            <option value="6">06-PARINTINS</option>
            <option value="7">07-UARINI</option>
            <option value="8">08-MANACAPURU</option>
            <option value="9">09-ITACOATIARA </option>
            <option value="10">10-Alvaraes</option>
          </select><br>
        </div>
        <div class=" mb-6">
          <label for="origem" name="origem" class="form-label">SELECIONE A CIDADE ORIGEM</label>
          <select class="form-select form-select-sm" aria-label=".form-select-sm example">
            <option selected>Selecione a Cidade de Destino</option>
            <option value="1">01-MANAUS</option>
            <option value="2">02-TEFE</option>
            <option value="3">03-MARAA</option>
            <option value="4">04-MAUES</option>
            <option value="5">05-TABATINGA</option>
            <option value="6">06-PARINTINS</option>
            <option value="7">07-UARINI</option>
            <option value="8">08-MANACAPURU</option>
            <option value="9">09-ITACOATIARA </option>
            <option value="10">10-Alvaraes</option>
          </select><br>
        </div>
        <div class=" mb-6 ">
          <label for="dtviagem" class="form-label">Data da Viagem</label>
          <input type="date" class="form-control" id="dtviagem" name="dtviagem" aria-describedby="dtviagem" required>
        </div>
        <select class="form-select form-select-sm" id="metodo" name="metodo" aria-label=".form-select-sm example">
          <option selected>Selecione o Metodo de Viagem</option>
          <option value="1">BARCO</option>
          <option value="2">AJATO</option>
          <option value="3">AVIAO</option>
          <option value="4">ONIBUS</option>
        </select><br>
      </div>
    </main>
    <main>
      <div class="container">
        <label for="exampleInputEmail1" class="form-label">Email</label>
        <input type="email" class="form-control" id="email" name="email" id="exampleInputEmail1"
          aria-describedby="emailHelp">
      </div>
      <div class="container">
        <label for="senha" id="senha" name="senha" class="form-label">Coloque sua Senha</label>
        <input type="password" class="form-control"><br>
      </div>
      <!--Termo-->
      <div class="container">

        <label class="condi" onclick="abrirModall()"> Aceita os Termos e Condições?</label>
        <div id="modal-termo" class="modal-container-termo modal-dialog-scrollable">
          <div class="termo">
            <button class="fechar">x</button>
            <h4 class="subtitulo">Termos e Condições de Uso e Compra</h4>
            <p class="text-modal">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
              fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
              mollit anim id est laborum.
            </p>
            <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault" required>
            <label class="form-check-label" for="flexSwitchCheckDefault">Aceito os Termos e Condições de Uso</label>
          </div>
        </div>
        <script>
          function abrirModall() {
            const modal = document.getElementById("modal-termo")
            modal.classList.add("mostrarr")

            modal.addEventListener("click", (e) => {
              if (e.target.id == "modal-termo" || e.target.className == "fechar") {
                modal.classList.remove("mostrarr");
              }
            });
          }
        </script>
      </div>
      <!--Termo-->
    </main>
    <!--COMPRAR-->
    <div class="container-comprar">
      <label class="condi btn" onclick="abrirModal()">ENVIAR</label>
      <div id="modal-comprar" class="modal-container-comprar  modal-dialog-centered modal-dialog-scrollable">
        <div class="comprar">
          <button class="fechar">x</button>
          <h4 class="subtitulo">Confirmaçoes para o pagamento da Passagem</h4>
          <input class="form-control" type="text" value="Codigo da Passagem:0000" aria-label="readonly input example"
            readonly>
          <br>
          <input class="form-control" type="text" value="Nome: Joao" aria-label="readonly input example" readonly>
          <br>
          <input class="form-control" type="text" value="Sobrenome: Nogueira da Silva"
            aria-label="readonly input example" readonly>
          <br>
          <input class="form-control" type="text" value="Cidade de Saida: Manaus" aria-label="readonly input example"
            readonly>
          <br>
          <input class="form-control" type="text" value="Cidade de Destino: PARINTINS"
            aria-label="readonly input example" readonly>
          <br>
          <input class="form-control" type="text" value="Modo de Viagem: Barco" aria-label="readonly input example"
            readonly>
          <br>
          <input class="form-control" type="text" value="$ Valor:180,00" aria-label="readonly input example" readonly>
          <br>
          <label for="formFile" class="form-label">Coloque abaixo seus Documentos em pdf</label>
          <input class="form-control" type="file" id="formFile" required>
          <br>
          <label for="formFile" class="form-label">Coloque abaixo a declaraçao e documentos do seu Responsavel
            (Para menores de idade)</label>
          <input class="form-control" type="file" id="formFile">
          <br>
          <h5>Vamos verificar as informaçoes da passagem, chegara um e-mail para confirmando a compra.</h5>
          <label class="condi btn">Comprar</label>
        </div>
      </div>
      <script>
        function abrirModal() {
          const modal = document.getElementById("modal-comprar")
          modal.classList.add("mostrar")

          modal.addEventListener("click", (e) => {
            if (e.target.id == "modal-comprar" || e.target.className == "fechar") {
              modal.classList.remove("mostrar");
            }
          });
        }
      </script>
    </div>
    <!--COMPRAR-->
  </form>
  <!--conprar-->

  <!--RODAPÉ-->
  <footer>
    <div class="nav justify-content-between container">
      <div class="col-6 col-sm-5 col-lg-4">
        <h6 class="tx-cinzae">Centrais de atendimento</h6>
        <ul class="nav flex-column">
          <li>Av. Borges de Medeiros, 159<br>Porto Alegre/RS</li>
          <li>(51)3456-5555</li>
          <li class="nav-item"><a href="./HTML/ajuda.html" class="nav-link p-0 text-white">Entre em
              contato</a>
          </li>
        </ul>
      </div>
      <div class="col-6 col-sm-5 col-lg-4">
        <form>
          <h6>Deixe seu email para receber nossas ofertas!</h6>
          <div class="d-flex w-100 gap-2">
            <input id="newsletter1" type="text" class="form-control" placeholder="Digite seu email">
            <button class="btn-light" type="button">Inscrever</button>
          </div>
        </form>
      </div>
    </div>
    <div class="row container">
      <p class="m-0 text-center">© 2022 Company, Inc. All rights reserved.</p>
    </div>
  </footer>
  <!--RODAPÉ-->

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>