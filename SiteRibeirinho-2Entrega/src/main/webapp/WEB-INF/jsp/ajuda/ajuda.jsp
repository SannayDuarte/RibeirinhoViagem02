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
  <title>Ajuda</title>
  <link rel="stylesheet" href="4ajud.css">
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
                    <a class="nav-link" id="links" href="<c:url value="cadastro"/>">Cadastra-se</a>
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

  <!--Ajuda-->
  <form id="form" class="container">
    <h3>Como Podemos <br> lhe Ajudar?
    </h3>
    <div class="dados">
      <label for="exampleFormControlInput1" class="form-label">Seu Nome</label>
      <input type="name" class="form-control" id="exampleFormControlInput1" placeholder="Nome e Sobrenome" required>
    </div>
    <div class="dados">
      <label for="exampleFormControlInput1" class="form-label">Qual Seu Email?</label>
      <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" required>
    </div>
    <label for="exampleFormControlTextarea1" class="dados form-label">Defina seu problema.</label>
    <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="sel">
      <option selected>Selecione</option>
      <option value="1">Problema com a Passagem</option>
      <option value="2">Problema com a Senha de Login</option>
      <option value="2">Problema com o Login</option>
      <option value="2">Problema em se Cadastrar</option>
      <option value="3">Outro</option>
    </select>
    <div class="relato">
      <label for="exampleFormControlTextarea1" class="form-label">Relate seu problema.</label>
      <textarea class="form-control" id="sel" rows="3" placeholder="Descreva aqui o seu problema." required></textarea>
    </div>
    <button id="meuBtn">Enviar</button>
  </form>
  <!--Ajuda-->

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