@extends('layouts.app')
@section('title', 'Blog Post')

@section('content')
    <div class="hero-area section">
        <!-- Backgound Image -->
        <div class="bg-image bg-parallax overlay" style="background-image:url(./img/blog-post-background.jpg)"></div>
        <!-- /Backgound Image -->

        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1 text-center">
                    <ul class="hero-area-tree">
                        <li>Cursos</li>
                    </ul>
                    <h1 class="white-text">Aproveite nossos cursos,<br> eles são a sua cara!</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- /Hero-area -->

    <!-- Blog -->
    <div id="blog" class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row courses_row">
                <!-- blog post -->
                <div class="blog-post">
                    <div class='courses_block'>
                        <div class='course_close' data-toggle="tooltip" data-placement="top" title="Isto não é relevante para mim"> x </div>
                        <p class='course_name'>Tutorial Libry</p>
                        <p class='course_description'>Este curso é pra você aprender a utilizar nossa plataforma</p>
                        <div class='course_image'>
                            <img src='http://www.profissionaldeecommerce.com.br/wp-content/uploads/2016/03/curso-de-e-commerce.jpg' alt='Curso Vestibular'>
                        </div>
                        <a href='#' class='btn btn-primary'>Saiba Mais</a>
                    </div>

                    <div class='courses_block'>
                        <div class='course_close' data-toggle="tooltip" data-placement="top" title="Isto não é relevante para mim"> x </div>
                        <p class='course_name'>Cursinho Pré-Vestibular</p>
                        <p class='course_description'>Curso totalmente inovador, que visa ensinar as técnicas mais utilizadas para estudar para o vestibular da UFRGS</p>
                        <div class='course_image'>
                            <img src='http://www.profissionaldeecommerce.com.br/wp-content/uploads/2016/03/curso-de-e-commerce.jpg' alt='Curso Vestibular'>
                        </div>
                        <a href='#' class='btn btn-primary'>Saiba Mais</a>
                    </div>

                    <div class='courses_block create'>
                        <p class='course_name'>Adicionar Curso</p>
                        <a href="{{ route('viewAdd.cursos')}}"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js_link')
    <script type="text/javascript" src="{{ url('template/js/script.js') }}"></script>
@endsection