@extends('layouts.app')
@section('title', 'Contato')

@section('content')
    <div class="hero-area section">
        <!-- Backgound Image -->
        <div class="bg-image bg-parallax overlay" style="background-image:url(./img/blog-post-background.jpg)"></div>
        <!-- /Backgound Image -->

        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1 text-center">
                    <ul class="hero-area-tree">
                        <li><a href="index.html">Cursos</a></li>
                        <li><a href="blog.html">Adicionar</a></li>
                    </ul>
                    <h1 class="white-text">Cadastre seu curso e <br>aproveite nossas ferramentas!</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- /Hero-area -->
<!-- Contact -->
<div class="section">
<!-- container -->
<div class="container">
    <!-- row -->
    <div class="row">
        <!-- contact form -->
        <div class="col-md-7">
            <div class="contact-form">
                <h4>Cadastrar Curso</h4>
                <form>
                    <input class='input' type='text' name='title' placeholder='Título'> 
                    <input class='input' type='text' name='subtitle' placeholder='Subtítulo'> 
                    <select class='form-control input' name='category'>
                        <!-- Preencher com categorias do banco -->
                        <option value="" disabled selected>Categoria</option>
                        <option>Programação</option>
                        <option>Design</option>
                    </select>
                    <input class='input' type='text' name='knowledge' placeholder='Conhecimento Necessário'>
                    <input class='input' type='text' placeholder='Para quem' name='to_who'>
                    <input class='input' type='text' placeholder='Objetivos' name='objective'>
                    <input class='input' type='text' placeholder='Descrição' name='description'>
                    <input class='form-control-file' type='file' placeholder='Banner' name='banner'>
                    <input class='input' type='text' placeholder='Mensagem de Boas vindas' name='welcome_message'>
                    <input class='input' type='text' placeholder='Mensagem de Parabenização' name='congrats_message'>

                    
                    <div class='radio_button'>
                        <input class='input' id='radio_premium' type='radio' name='premium' value='1'>
                        <label for='radio_premium'><span class='radio_base'></span> <span>Premium</span></label>
                    </div>
                    <div class='radio_button'>
                        <input class='input' id='radio_standard' type='radio' name='premium' value='2'>
                        <label for='radio_standard'><span class='radio_base'></span><span>Standard</span></label>
                    </div>
                    <div class='payments'>
                    <h4>Selecione um plano</h4>
                        <div class='payments_option'>
                        <h5> - Premium Basic</h5>
                            <input id='payment_1' class='radio_payments' type='radio' name='5 Cursos' checked value='1'>
                            <label for='payment_1'>
                                <strong>Plano Basic</strong>
                                <ul>
                                    <li>5 cursos</li>
                                    <li>50MB espaço</li>
                                    <li>Creminho pras mãos</li>
                                    <li>
                                        <ul>
                                            <li>R$25,00</li>
                                            <li>p/ Mês</li>
                                        </ul>
                                    </li>
                                </ul>
                            </label>

                            <input id='payment_2' class='radio_payments' type='radio' name='5 Cursos' value='1'>
                            <label for='payment_2'>
                                <strong>Plano Basic Space +</strong>
                                <ul>
                                    <li>5 cursos</li>
                                    <li>100MB espaço</li>
                                    <li>Creminho pras mãos</li>
                                    <li>
                                        <ul>
                                            <li>R$25,00</li>
                                            <li>p/ Mês</li>
                                        </ul>
                                    </li>
                                </ul>
                            </label>
                            
                            <input id='payment_3' class='radio_payments' type='radio' name='5 Cursos' value='1'>
                            <label for='payment_3'>
                                <strong>Plano Basic Space +</strong>
                                <ul>
                                    <li>5 cursos</li>
                                    <li>100MB espaço</li>
                                    <li>Creminho pras mãos</li>
                                    <li>
                                        <ul>
                                            <li>R$25,00</li>
                                            <li>p/ Mês</li>
                                        </ul>
                                    </li>
                                </ul>
                            </label>
                        </div>
                        
                        <div class='payments_option'>
                            <h5> - Premium Pro</h5>

                            <input id='payment_4' class='radio_payments' type='radio' name='5 Cursos' checked value='1'>
                            <label for='payment_4'>
                                <strong>Plano Pro</strong>
                                <ul>
                                    <li>10 cursos</li>
                                    <li>50MB espaço</li>
                                    <li>Creminho pras mãos</li>
                                    <li>
                                        <ul>
                                            <li>R$25,00</li>
                                            <li>p/ Mês</li>
                                        </ul>
                                    </li>
                                </ul>
                            </label>

                            <input id='payment_5' class='radio_payments' type='radio' name='5 Cursos' value='1'>
                            <label for='payment_5'>
                                <strong>Plano Pro Space +</strong>
                                <ul>
                                    <li>10 cursos</li>
                                    <li>100MB espaço</li>
                                    <li>Creminho pras mãos</li>
                                    <li>
                                        <ul>
                                            <li>R$25,00</li>
                                            <li>p/ Mês</li>
                                        </ul>
                                    </li>
                                </ul>
                            </label>
                            
                            <input id='payment_6' class='radio_payments' type='radio' name='5 Cursos' value='1'>
                            <label for='payment_6'>
                                <strong>Plano Pro Inlimitado</strong>
                                <ul>
                                    <li>Cursos ilimitados</li>
                                    <li>200MB espaço para cada curso</li>
                                    <li>Creminho pras mãos</li>
                                    <li>
                                        <ul>
                                            <li>R$25,00</li>
                                            <li>p/ Mês</li>
                                        </ul>
                                    </li>
                                </ul>
                            </label>
                        </div>
                    </div>

                    <button class="main-button icon-button pull-right">Cadastrar</button>
                </form>
            </div>
        </div>
        <!-- /contact form -->

    </div>
    <!-- /row -->
</div>
<!-- /container -->
</div>
<!-- /Contact -->
@endsection

@section('js_link')
    <script type="text/javascript" src="{{ url('template/js/script.js') }}"></script>
@endsection