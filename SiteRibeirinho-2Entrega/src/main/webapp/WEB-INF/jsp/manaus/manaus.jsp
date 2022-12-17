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
    <title>Manaus</title>
    <link rel="stylesheet" href="6manaus.css">

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
                <form>
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

<!--manaus-->
    <div class="manaus container">
        <h2>Capital do Amazonas</h2>
        <h3> A metrópole, de 2 milhões de
            habitantes, já mostra os sintomas de um centro urbano que cresceu muito
            rapidamente (prepare-se para o trânsito carregado). No lugar da floresta, ergueu-se
            uma capital de concreto, marcada pela chegada das indústrias após a criação da zona
            franca durante o regime militar.</h3>
        <div class="clearfix">
            <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false"
                data-bs-interval="false">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="zpontanegra.man.jpeg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="zbosque.jpeg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="zbel (9).jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
            <p id="text">Mas, é claro, a natureza está ali pertinho, seja nos parques que foram preservados,
                como a Reserva Florestal Adolpho Ducke e o Bosque da Ciência, seja no calçadão
                revitalizado da Ponta Negra, onde o belíssimo Rio Negro abraça a cidade
                convidando para um passeio na orla.</p>
        </div>

        <div class="clearfix">
            <p id="text">
                Além disso, os inúmeros hotéis de selva
                localizados nos arredores de Manaus tornaram-na
                uma das principais portas de entrada para explorar
                a Amazônia. Dos tempos áureos da borracha restou o
                esplendor de construções históricas como o
                impressionante Teatro Amazonas e o Mercado Municipal,
                reaberto após sete anos de reforma.
            </p>
            <img src="zmercadao.man.jpeg" class="col-md-6 float-md-end mb-3 ms-md-3" alt="...">
        </div>

        <div class="clearfix">
            <img src="zcafe (1).jpg" class="col-md-6 float-md-start mb-3 ms-md-3" alt="...">
            <p id="text"> Comece o dia com o café da manhã regional;
                sanduíche de tucumã, pupunha,tapioca caboquinha,
                nos restaurantes do centro de manaus. Depois,
                você pode passear a pé e visitar o Teatro Amazonas,
                o Palacete Provincial e o Palácio Rio Negro, todos próximos.
            </p>
        </div>
        <div class="textFim">
            <p id="text">
                Visite tambem o Seringal Vila Paraíso, que mostra como era a vida
                dos seringueiros na época da borracha, ou programar
                uma visita ao Museu da Amazônia, parque com exposições sobre fauna e
                flora. Programe refeições nos restaurantes amazonenses ou de pescados, para provar
                os deliciosos peixes da região, como o tambaqui e o matrinxã.
                Dica: enquanto estiver na capital, verifique se há algum espetáculo no Teatro
                Amazonas, para que você possa vê-lo em funcionamento e com todo o seu esplendor
                artístico.
            </p>
        </div>
        <h6>Para saber mais sobre esse artigo acesse; https://viagemeturismo.abril.com.br/cidades/manaus/</h6>
    </div>
<!--manaus-->

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
                        <button class="btn btn-light" type="button">Inscrever</button>
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