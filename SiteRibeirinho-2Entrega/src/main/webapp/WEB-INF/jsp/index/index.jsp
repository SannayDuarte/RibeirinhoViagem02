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
    <link rel="stylesheet" href="style.css">
    <title>Home</title>

</head>

<body>

    <!--cabeçalho home-->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid">
                <a class="navbar-brand pr" href="index.html">
                    <h2 class="tit">Ribeirinho Viagem</h2>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <label class="nav-link active" id="links" onclick="abrirModal()">Acesse Sua Conta</label>
                        <a class="nav-link" id="links" href="<c:url value="cadastro"/>">Cadastra-se</a>
                        <a class="nav-link" id="links" href="<c:url value="ajuda"/>">Ajuda</a>
                    </div>
                </div>
            </div>
        </nav>
        <h1>Ribeirinho <br>Viagem</h1>
        <!--pesquisar destinos-->
        <aside>
            <div class="destinos">
                <p>ESCOLHA A ORIGEM <br>
                    <select>
                        <option value="1">MANAUS</option>
                        <option value="2">TEFE</option>
                        <option value="3">MARAA</option>
                        <option value="4">MAUES</option>
                        <option value="5">TABATINGA</option>
                        <option value="6">PARINTINS</option>
                        <option value="7">UARINI</option>
                        <option value="8">MANACAPURU</option>
                        <option value="9">ITACOATIARA </option>
                        <option value="10">Alvaraes</option>
                    </select>
                    <tr>
                        <td> <input type="date">
                    <tr>
                        <td>
                </p>
            </div>
            <br>
            <div class="destinos">
                <p>ESCOLHA O DESTINO <br>
                    <select>
                        <option value="1">MANAUS</option>
                        <option value="2">TEFE</option>
                        <option value="3">MARAA</option>
                        <option value="4">MAUES</option>
                        <option value="5">TABATINGA</option>
                        <option value="6">PARINTINS</option>
                        <option value="7">UARINI</option>
                        <option value="8">MANACAPURU</option>
                        <option value="9">ITACOATIARA </option>
                        <option value="10">Alvaraes</option>
                    </select>
                    <tr>
                        <td> <input type="date">
                    <tr>
                        <td>
                </p>
            </div>
            <div class="button">
                <input type="radio" name="opc" value="ida" id="esc"> SO IDA
                <input type="radio" name="opc" value="volta" id="esc">VOLTA
                <input type="radio" name="opc" value="multi" id="esc">IDA E VOLTA
                <button type="button" class="bus-btn" onclick="abrirModal()">Buscar</button>
                <br>
            </div>
        </aside>
        <!--pesquisar destinos-->
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

    <!--Promoçoes-->
    <main id="pr">
        <h3>Aproveite nossas promoções</h3>
        <h4>é so clicar </h4>
        <div id="promo">
            <div class="card" style="width: 18rem;">
                <button class="btn-promo" onclick="abrirModal()">
                    <img src="ztefe.am.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <p class="card-promo">
                            Passagem de Barco Manaus para Tefé por 100,00
                            Saindo do porto de manaus as 16:00hrs, chegando em
                            tefe 11:00hrs do terceiro dia.</p>
                    </div>
                </button>
            </div>
            <div class="card" style="width: 18rem;">
                <button class="btn-promo" onclick="abrirModal()">
                    <img src="zmanaus.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <p class="card-promo">
                            Passeio por Manaus por 180,00. Incluso translato visita
                            ao MUSA (Museu da Amazonia), Teatro Amazonas, e
                            varios outros pontos turisticos.</p>
                    </div>
                </button>
            </div>
            <div class="card" style="width: 18rem;">
                <button class="btn-promo" onclick="abrirModal()">
                    <img src="zparitins.am.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <p class="card-promo">
                            Passagem de Aviao de Manaus para Paritins valor 400,00.
                            Sao tres horas de viagem com saida do Aeroporto Eduardo
                            Gomes em Manaus.</p>
                    </div>
                </button>
            </div>
        </div>
    </main>
    <!--Promoçes-->

    <!--Amazonia-->
    <article>
        <div class="am-ver">
            <div class="ama">
                <img classe="img" id="img-am" src="zbel (1).jpeg" class="col-md-6 float-md-end mb-3 ms-md-3" alt="...">
                <h3 class="titulo">Turismo na Amazônia</h3>
                <p>
                    Conhecer a Amazônia e passear por todos os lugares turísticos <br>te deixará ainda mais fascinado
                    pela
                    região.
                    <br>
                    Quer praias? <br>Na Amazônia tem, e são de água doce! E as florestas e matas? <br>Ah! Estas, então,
                    são
                    uma
                    atração turística à parte!
                    <br>
                    O estado do Amazonas é rico em biodiversidade, com muita flora e <br>fauna que ajudam a formar um
                    dos
                    ecossistemas mais eficientes do mundo!<br>

                    Você poderá encontrar tribos indígenas e ver de perto um dos fenômenos <br> mais incríveis da
                    natureza
                    que é o encontro dos Rios Negro e Solimões,<br> que não se misturam!
                </p>
                <button type="button" class="bus-btn" onclick="abrirModal()">Venha Conhecer</button>
            </div>
        </div>
        <div class="am-resp">
            <img class="img-resp" src="zbel (1).jpeg" class="col-md-6 float-md-end mb-3 ms-md-3" alt="...">
            <h3>Turismo na Amazônia</h3>
            <p>
                Conhecer a Amazônia e passear por todos os lugares turísticos <br>te deixará ainda mais fascinado pela
                região.
                <br>
                Quer praias? <br>Na Amazônia tem, e são de água doce! E as florestas e matas? <br>Ah! Estas, então, são
                uma
                atração turística à parte!
                <br>
                O estado do Amazonas é rico em biodiversidade, com muita flora e <br>fauna que ajudam a formar um dos
                ecossistemas mais eficientes do mundo!<br>

                Você poderá encontrar tribos indígenas e ver de perto um dos fenômenos <br> mais incríveis da natureza
                que é o encontro dos Rios Negro e Solimões,<br> que não se misturam!
            </p>
            <button type="button" class="bus-btn" onclick="abrirModal()">Venha Conhecer</button>
        </div>
    </article>
    <!--Amazonia-->

    <!--Fotos-->
    <figure class="fts-am">
        <h3>A Beleza do Amazonas</h3>
        <section id="fotos">
            <div id="fotos-container"><img src="zbel (4).jpg" alt="" class="fotos-image">
                <div id="fotos-container"><img src="zbel (8).jpg" alt="" class="fotos-image"></div>
                <div id="fotos-container"><img src="zbel (2).jpg" alt="" class="fotos-image"></div>
                <div id="fotos-container"><img src="zbel (3).jpg" alt="" class="fotos-image"></div>
        </section>
    </figure>
    <!--Fotos-->
    <br>
    <br>
    <!--Manaus-->
    <article>
        <div class="ma-ver">
            <div class="man">
                <img classe="img" id="img-am" src="zteatro.man.jpg" class="col-md-6 float-md-end mb-3 ms-md-3"
                    alt="...">
                <h3 class="titulo-ma">Turismo em Manaus:Capital do Amazonas</h3>
                <p class="card-text">
                    Conhecer a Capital do Amazonas e
                    passear por todos os lugares
                    turísticos te deixará ainda
                    mais fascinado pela região.
                </p>
                <a class="bus-btn" href="<c:url value="manaus"/>">Venha Conhecer</a>
            </div>
        </div>
        <div class="ma-resp">
            <img class="img-ma" src="zteatro.man.jpg" class="col-md-6 float-md-end mb-3 ms-md-3" alt="...">
            <h3 class="h-ma">Passeio por Manaus</h3>
            <p>
                Conhecer a Capital do Amazonas e <br>
                passear por todos os lugares <br>
                turísticos te deixará ainda<br>
                mais fascinado pela região.
                <br>
            </p>
            <a class="bus-btn" href="<c:url value="manaus"/>">Venha Conhecer</a>
        </div>
    </article>
    <!--Manaus-->

    <br>
    <br>
    <br>
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
    <style>
        /*Cabeçanho*/
        @import url('https://fonts.googleapis.com/css2? family= Oleo+Script:wght@700 & family= Pacifico & display=swap');

        /*nav*/
        header {
            background: url(zfundo.jpg) no-repeat center center/cover;
            height: 50rem;
        }

        h2 {
            color: #4b6043;
            width: 68rem;
            font-size: 2rem;
        }

        #links {
            color: #4b6043;
            font-size: 1.6rem;
            font-style: italic;
        }

        h1 {
            display: flex;
            justify-content: flex-end;
            margin: 10rem;
            font-size: 7rem;
            font-family: 'Oleo Script', cursiva;
            font-family: 'Pacifico', cursiva;
            font-style: italic;
            color: #0f291e;
            text-align: center;
        }

        /*nav*/

        /*login*/
        .modal-container {
            width: 100vw;
            height: 100vh;
            position: fixed;
            top: 0px;
            left: 0px;
            z-index: 5000;
            display: none;
            justify-content: center;
            align-items: center;
            box-shadow: 20px 20px 50px rgba(0.5, 0.5, 0.5, 0.25);
            border-top: 1px solid rgba(255, 255, 255, 0.25);
            border-right: 1px solid rgba(255, 255, 255, 0.25);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
        }

        .modal-container.mostrar {
            display: flex;
        }

        .acessar {
            background: white;
            width: 60%;
            min-width: 300px;
            padding: 40px;
            border: 10px solid #0f291e;
        }

        .btn-entrar {
            display: inline-block;
            padding: 30px 60 px;
            text-transform: uppercase;
            background: #0f291e;
            border-radius: 5px;
            color: burlywood;
            transition: background 500ms ease;
        }

        .fechar {
            width: 3rem;
            font-size: 1.5rem;
            position: absolute;
            top: 0px;
            right: 0px;
            cursor: pointer;
        }

        /*login*/

        /*dest*/
        aside {
            display: flex;
            flex-direction: row;
            justify-content: center;
            color: #4b6043;
        }

        .destinos {
            background-color: #4b6043;
            border-radius: 7px;
            color: #ddead1;
            margin: 5px;
            padding: 5px;
            text-align: center;
        }

        .bus-btn {
            display: inline-block;
            padding: 30px 60px;
            size: 7px;
            background: #4b6043;
            font-size: 1.2rem;
            border-radius: 3px;
            color: #ddead1;
            transition: background 500ms ease;
            justify-content: space-around;
            padding: 10px;
        }

        .bus,
        .cor-text {
            color: #ddead1;
        }

        /*dest*/
        /*Cabeçanho*/

        /*promoçoes*/
        main {
            padding: 10rem;
        }

        main,
        h3 {
            text-align: center;
            color: #658354;
        }

        #promo {
            display: grid;
            grid-template-columns: auto auto auto;
            justify-content: center;
            grid-gap: 35px;
        }

        .card-promo {
            font-size: 1.2rem;
        }

        .btn-promo {
            background-color: white;
            border: none;
            color: #4b6043;
        }

        /*promoçoes*/

        /*amazonia*/
        .am {
            background: url(rainforest-78516_1920.jpg) no-repeat center center/cover;
            height: 40rem;
            display: flex;
        }

        .ama {
            width: 50%;
            margin: auto;
            padding: 45px;
            box-shadow: 30px 30px 60px rgba(0.5, 0.5, 0.5, 0.25);
            border-top: 1px solid rgba(255, 255, 255, 0.25);
            border-right: 1px solid rgba(255, 255, 255, 0.25);
            backdrop-filter: blur(6px);
            -webkit-backdrop-filter: blur(6px);
        }

        .titulo {
            text-align: center;
            font-size: 2.5rem;
            color: #ddead1;
            font-family: 'Pacifico', cursiva;
        }

        .ama>p {
            color: #ddead1;
            font-size: 1.1rem;
            font-style: oblique;

        }

        .btn-art {
            width: 12rem;
            display: inline-block;
            font-size: 1.4rem;
            border-radius: 3px;
            color: #ddead1;
            transition: background 500ms ease;
            text-align: center;
        }

        /*amazonia*/

        /*manaus*/
        .manaus {
            display: flex;
            justify-content: center;
            padding: 10rem;
        }

        .btn-manaus {
            color: #4b6043;
            font-size: 1.5rem;
        }

        .img-fluid {
            width: 40rem;
            height: 18rem;
        }

        .card-title {
            font-size: 2rem;
        }

        .card-text {
            font-size: 1.5rem;
        }

        /*manaus*/


        /*Fotos*/
        figure {
            padding: 45px;
        }

        #fotos-container {
            display: grid;
            grid-template-columns: auto auto auto auto;
            justify-content: center;
            text-align: center;
        }

        #fotos {
            grid-gap: 30px;
        }

        .fotos-image {
            justify-items: center;
            justify-content: center;
            padding: 1rem;
            width: 20rem;
            height: 15rem;
        }

        /*Fotos*/

        /*Rodape*/
        footer {
            display: grid;
            color: #ddead1;
            background-color: #4b6043;
            text-align: center;
        }

        /*Rodape*/


        @media(max-width:700px) {
            .tit {
                color: #ddead1;
                width: 8rem;
            }

            h1 {
                font-size: 4rem;
                display: flex;
                justify-content: center;
            }

            aside {
                display: inline;
            }

            .pr {
                display: inline;
                justify-content: center;
                padding: 10px;
                grid-gap: 2rem;
            }

            #promo {
                display: inline;


                justify-content: center;
                align-items: center;
            }

            #img-am {
                width: 100px;
                height: 100px;
            }


            #fotos {
                display: inline;
            }
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
        </script>
</body>

</html>
   