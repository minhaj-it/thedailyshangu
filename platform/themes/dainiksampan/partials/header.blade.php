<!DOCTYPE html>
<html {!! Theme::htmlAttributes() !!}>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lazysizes/5.3.2/lazysizes.min.js" async></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        {!! Theme::header() !!}
    </head>
    <body {!! Theme::bodyAttributes() !!}>
       {!! apply_filters(THEME_FRONT_BODY, null) !!}
    <header class="fixed-top">
        <!-- Top Navbar -->
       <nav class="navbar navbar-expand-lg navbar-custom">
    <div class="container">
        <a class="navbar-brand" href="{{ route('public.index') }}">
           
            @if (theme_option('logo'))
                <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}">
            @else
                <img src="{{ Theme::asset()->url('img/logo.jpg') }}" alt="logo">
            @endif
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon" style="filter: invert(1);"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            
            {!!
                Menu::renderMenuLocation('main-menu', [
                    'view' => 'main-menu',
                ])
            !!}
            
            <div class="d-flex align-items-center header-icons">
                <a href="#" class="nav-link px-2" id="darkModeToggle" title="Toggle Dark Mode">
                    <i class="bi bi-moon-fill"></i>
                </a>
                <div class="nav-item dropdown">
                     <a href="#" class="nav-link px-2" role="button" data-bs-toggle="offcanvas" data-bs-target="#newsHubOffcanvas" aria-controls="newsHubOffcanvas">
                        <i class="bi bi-bell-fill"></i>
                        <span class="position-absolute top-0 start-100 translate-middle p-1 bg-danger border border-light rounded-circle">
                        <span class="visually-hidden">New alerts</span>
                    </span>
                    </a>
                </div>
                <a href="#" class="nav-link px-2" data-bs-toggle="modal" data-bs-target="#searchModal" title="Search">
                    <i class="bi bi-search"></i>
                </a>
                <a href="#" class="nav-link ps-2 d-none d-lg-block" data-bs-toggle="offcanvas" data-bs-target="#categoryMenuOffcanvas" aria-controls="categoryMenuOffcanvas"><i class="bi bi-list"></i></a>
            </div>
        </div>
    </div>
</nav>
    </header>
