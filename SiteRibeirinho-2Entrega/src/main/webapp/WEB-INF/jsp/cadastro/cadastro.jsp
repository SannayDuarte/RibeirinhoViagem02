 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <title>Cadastro</title>
  <link rel="stylesheet" href="3cadast.css">

</head>


<body>
  <!--cabeçalho home-->
  <header>
    <nav  class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand pr" href="<c:url value="index"/>">
                <h2 class="tit">Ribeirinho Viagem</h2>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link" id="links" href="<c:url value="index"/>">Pagina Inicial</a>
                    <label class="nav-link active" id="links" onclick="abrirModal()">Acesse Sua Conta</label>
                    <a class="nav-link" id="links" href="<c:url value="ajuda"/>">Ajuda</a>
                </div>
            </div>
        </div>
    </nav>
    <!--Login-->
    <script>
        function abrirModal() {
            const modal = document.getElementById("modal-login")
            modal.classList.add("mostrar")

            modal.addEventListener("click", (e) => {
                if (e.target.id == "modal-login" || e.target.className == "fechar") {
                    modal.classList.remove("mostrar");
                }
            });
        }
    </script>
    <div id="modal-login" class="modal-container">
        <div class="acessar">
            <button class="fechar">x</button>
            <h4 class="subtitulo">Login</h4>
            <form class="log">
                <label for="exampleInputEmail1" class="form-label">Email</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="digite seu email "
                    required>

                <label for="exampleInputPassword1" class="form-label">Senha</label>
                <input type="password" class="form-control" id="exampleInputPassword1"
                    placeholder="digite sua senha " required>
                <a href="<c:url value="ajuda"/>" class="tx">Esqueci minha senha</a>
                <div class="my-3 form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Manter conectado</label>
                </div>
                <div class="my-4">
                    <label class="form-check-label" for="exampleCheck1"><a href="<c:url value="cadastro"/>">SE
                            CADASTRE</a></label>
                </div>
                <button class="btn-entrar" onclick="Entrou()"><a href="<c:url value="passagem"/>">Entrar</a></button>
            </form>
        </div>
    </div>
    <!--Login-->
  </header>
  <!--cabeçalho home-->

  <!---Cadastro-->
  <form action="InserirDados" method="post">
    <h2>Cadastro</h2>
    <main id="form">
      <div id="pes">
        <div class=" mb-6">
          <label for="nome" class="form-label">Nome</label>
          <input type="text" class="form-control" id="nome" aria-describedby="nome" placeholder="Escreva seu Nome"
            required>
          <label for="nome" class="form-label">Sobrenome</label>
          <input type="text" class="form-control" id="sobrenome" aria-describedby="sobrenome"
            placeholder="Escreva seu Sobrenome">
        </div>
        <div class=" mb-6">
          <label for="nome" class="form-label">Data de Nascimento</label>
          <input type="date" class="form-control" id="nasc" aria-describedby="nasc" required>
          <label for="nome" class="form-label">Rg</label>
          <input type="text" class="form-control" id="rg" aria-describedby="rg" placeholder="Escreva seu Rg" required>
          <label for="nome" class="form-label">Cpf</label>
          <input type="text" class="form-control" id="cpf" aria-describedby="cpf" placeholder="Escreva seu Cpf"
            required>
        </div>
        <div class=" mb-6">
          <label for="nome" class="form-label">Celular com DDD</label>
          <input type="tel" class="form-control" id="tel" aria-describedby="tel"
            placeholder="digite seu numero com o ddd" required>
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
              Prefiro não declarar
            </label>
          </div>
        </div>
      </div>
      <div id="end">
        <div class=" mb-6">
          <label for="Estado" class="form-label">CEP</label>
          <input type="text" class="form-control" id="cep" aria-describedby="cep" placeholder="digite o CEP">
        </div>
        <div class=" mb-6">
          <label for="Estado" class="form-label">Estado</label>
          <input type="text" class="form-control" id="Estado" aria-describedby="Estado"
            placeholder="digite o nome do seu estado">
        </div>
        <div class=" mb-6 ">
          <label for="Cidade" class="form-label">Cidade</label>
          <input type="text" class="form-control" id="Cidade" aria-describedby="Cidade"
            placeholder="digite o nome da sua cidade">
        </div>
        <div class=" mb-6">
          <label for="Bairro" class="form-label">Bairro</label>
          <input type="text" class="form-control" id="Bairro" aria-describedby="Bairro"
            placeholder="digite o nome do Bairro">
        </div>
        <div class=" mb-6">
          <label for="Rua" class="form-label">Rua e N°</label>
          <input type="text" class="form-control" id="rua" aria-describedby="rua"
            placeholder="digite o Nome da sua Rua e o N° da sua Residencia">
        </div>
        <div class=" mb-6">
          <label for="Complemento" class="form-label">Complemento</label>
          <input type="text" class="form-control" id="Complemento" aria-describedby="Complemento"
            placeholder="ex; n° apartamento, comercio proximo, etc.">
        </div>

      </div>
    </main>
    <main>
      <div class="container">
        <label for="exampleInputEmail1" class="form-label">Email</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
      </div>
      <div class="container">
        <label for="Password1" class="form-label">Defina sua senha</label>
        <input type="password" class="form-control" id="Password1">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Lembrar-me</label>
      </div>
    </main>
    <div class="container">
      <label for="formFile" class="form-label">Coloque abaixo seus Documentos em pdf</label>
      <input class="form-control" type="file" id="formFile">
      <br>
      <button type="submit" class="btn">Enviar<a href="<c:url value="index"/>"></a></button>
    </div>
  </form>
  <!---Cadastro-->

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
                        <button class=" btn-light" type="button">Inscrever</button>
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