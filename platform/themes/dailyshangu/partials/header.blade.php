<!DOCTYPE html>
<html {!! Theme::htmlAttributes() !!}>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
        <style>
            :root {
                --primary-color: {{ theme_option('primary_color', '#ff2b4a') }};
            }
        </style>

        {!! Theme::header() !!}
    </head>
    <body {!! Theme::bodyAttributes() !!}>
        {!! apply_filters(THEME_FRONT_BODY, null) !!}
         <!-- Logo Row (3 Columns) -->
  <div class="container pb-2">
    <div class="row align-items-center text-center text-md-start">
      <!-- Left Date -->
      <div class="col-6 col-md-3 text-start">
        <a class="d-none d-md-block bard-logo" href="{{ route('public.index') }}">
           
            @if (theme_option('logo'))
                <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}">
            @else
                <img src="{{ Theme::asset()->url('img/shangu-logo.jpg') }}" alt="logo">
            @endif
        </a>
      </div>
      <!-- Middle Logo -->
      <!-- <div class="col-6 col-md-6 text-center">
       
      </div> -->
      <!-- Right Ad (hidden on mobile) -->
      <div class="col-md-9 text-end">
            <div class="social-icons-head d-none d-md-block mb-3">
                <a href="https://www.facebook.com/shadinbanglanews24" class="btn-s" title="Facebook"><i class="bi bi-facebook"></i></a>
                <a href="" class="btn-s" title="X"><i class="bi bi-twitter-x"></i></a>
                <a href="" class="btn-s" title="Instagram"><i class="bi bi-instagram"></i></a>
                <a href="" class="btn-s" title="YouTube"><i class="bi bi-youtube"></i></a>
                <a href="https://epaper.thedailyshangu.com/" target="_blank" class="btn-s btn-epaper"> ই-পেপার</a>
            </div>
             <span class="fw-bold">শুক্রবার ২৪ অক্টোবর ২০২৫, ৯ই কার্তিক ১৪৩২</span>
      </div>
    </div>
  </div>

    <header class="fixed-top-menu sticky-top">
        <!-- Top Navbar -->
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand text-white d-block d-sm-none" href="#">
                    <img src="img/logo.jpg" alt="" srcset="">
                </a>
                <a href="#" class="btn-s btn-epaper d-block d-sm-none"> ই-পেপার</a>
                <!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon" style="filter: invert(1);"></span>
                </button> -->
                <div class="collapse navbar-collapse" id="navbarNav">
                     {!!
                        Menu::renderMenuLocation('main-menu', [
                            'view' => 'main-menu',
                        ])
                  !!}
                    
                </div>
            <div class="d-flex  header-icons ms-auto float-end">
                <!-- <a href="#" class="nav-link px-2" id="darkModeToggle" title="Toggle Dark Mode">
                    <i class="bi bi-moon-fill"></i>
                </a> -->
                <a href="#" class="nav-link px-2" data-bs-toggle="modal" data-bs-target="#searchModal" title="Search">
                    <i class="bi bi-search"></i>
                </a>
                <a href="#" class="nav-link ps-2 " data-bs-toggle="offcanvas" data-bs-target="#categoryMenuOffcanvas" aria-controls="categoryMenuOffcanvas"><i class="bi bi-list"></i></a>
            </div>

            </div>
            
        </nav>

    </header>
       
       <!-- News Ticker -->
        <div class="container ">
           <div class="row">
            <div class="col-12">
                <div class="headline-bar">
                        <div class="headline-title">শিরোনাম</div>
                        <div class="ticker">
                            <div class="ticker-content">
                                <a href="#">বাংলাদেশের অর্থনীতি এখন দ্রুত গতিতে উন্নতি করছে</a>
                                <a href="#">শেয়ার বাজারে বিনিয়োগকারীদের আস্থা ফিরছে</a>
                                <a href="#">ঢাকা-চট্টগ্রাম মহাসড়কে তীব্র যানজট</a>
                                <a href="#">নতুন প্রযুক্তিতে বাংলাদেশ এগিয়ে যাচ্ছে</a>
                            </div>
                        </div>
                </div>
                 
            </div>
           </div>
        </div>
