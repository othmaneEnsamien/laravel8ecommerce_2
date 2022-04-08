<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home</title>	
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900,900italic&amp;subset=latin,latin-ext" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,400italic,600,600italic,700,700italic&amp;subset=latin,latin-ext" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/animate.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/font-awesome.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/bootstrap.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/owl.carousel.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/chosen.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/flexslider.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/style.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/color-01.css') }}">
	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css"
	 integrity="sha512-aEe/ZxePawj0+G2R+AaIxgrQuKT68I28qh+wgLrcAJOz3rxCP+TwrK5SPN+E5I+1IQjNtcfvb96HDagwrKRdBw=="
	 crossorigin="anonymous" referrerpolicy="no-referrer" />
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/14.6.3/nouislider.min.css" 
	 integrity="sha512-KRrxEp/6rgIme11XXeYvYRYY/x6XPGwk0RsIC6PyMRc072vj2tcjBzFmn939xzjeDhj0aDO7TDMd7Rbz3OEuBQ=="
	  crossorigin="anonymous" referrerpolicy="no-referrer" />
	

    @livewireStyles
</head>
<body class="home-page home-01 " style="background: white">

	<!-- mobile menu -->
    <div class="mercado-clone-wrap">
        <div class="mercado-panels-actions-wrap">
            <a class="mercado-close-btn mercado-close-panels" href="#">x</a>
        </div>
        <div class="mercado-panels"></div>
    </div>

	<!--header-->
	<header id="header" class="header header-style-1">
		<div class="container-fluid">
			<div class="row">
				<div class="topbar-menu-area">
					<div class="container">
						<div class="topbar-menu left-menu">
							<ul>
								<li class="menu-item" >
									<a title="Hotline: (+123) 456 789" href="#" ><span class="icon label-before fa fa-mobile"></span>Hotline: 0604956676</a>
								</li>
							</ul>
						</div>
						<div class="topbar-menu right-menu">
							<ul>											
								@if(Route::has('login'))
									@auth 
										@if(Auth::user()->utype === 'ADM')
											<li class="menu-item menu-item-has-children parent" >
												<a title="My account" href="#">My account {{ Auth::user()->name }}<i class="fa fa-angle-down" aria-hidden="true"></i> </a>
												<ul class="submenu curency" >
													<li class="menu-item" >
														<a title="Pound (GBP)" href="{{ route('admin.dashboard') }}">Tableau de bord</a>
													</li>
													<li class="menu-item">
														<a title="Categories" href="{{ route('admin.categories') }}">Les categories</a>
													</li>
													<li class="menu-item">
														<a title="Attributes" href="{{ route('admin.attributes') }}">Les atttributs</a>
													</li>
													<li class="menu-item">
														<a title="Products" href="{{ route('admin.products') }}">Produits</a>
													</li>
													<li class="menu-item">
														<a title="Manage Home Slider" href="{{ route('admin.homeslider') }}">Changement de thème du slide</a>
													</li>
													<li class="menu-item">
														<a title="Manage Home Categories" href="{{ route('admin.homecategories') }}">gérer les catégories dans l'accueil</a>
													</li>
													<li class="menu-item">
														<a title="All Coupons" href="{{ route('admin.coupons') }}">Les codes promos</a>
													</li>
													<li class="menu-item">
														<a title="Sale settings" href="{{ route('admin.sale') }}">gérer le temps du solde</a>
													</li>
													<li class="menu-item">
														<a title="Orders" href="{{ route('admin.orders') }}">tous les ordres</a>
													</li>
													<li class="menu-item">
														<a title="Contacts" href="{{ route('admin.contact') }}">Contacts</a>
													</li>
													<li class="menu-item">
														<a title="Settings" href="{{ route('admin.setting') }}">Settings</a>
													</li>

													<form id="logout-form" action="{{ route('logout') }}" method="POST">
														@csrf
														<li class="menu-item" >
															<a  href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Log Out</a>
														</li>
													</form>

												</ul>
											</li>

										@else 
											<li class="menu-item menu-item-has-children parent" >
												<a title="My account" href="#">My account {{ Auth::user()->name }}<i class="fa fa-angle-down" aria-hidden="true"></i></a>
												<ul class="submenu curency" >
													<li class="menu-item" >
														<a title="Dashboard" href="{{ route('user.dashboard') }}">Tableau de bord</a>
													</li>
													<li class="menu-item" >
														<a title="My orders" href="{{ route('user.orders') }}">Mes ordres</a>
													</li>
													<li class="menu-item" >
														<a title="Profile" href="{{ route('user.profile') }}">Mon Profile</a>
													</li>
													{{-- <li class="menu-item" >
														<a  href="{{ route('user.changePassword') }}" title="Change Password">Changer Password</a>
													</li> --}}
													<li class="menu-item" >
														<a  href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">se déconneter</a>
													</li>
													
													<form id="logout-form" action="{{ route('logout') }}" method="POST">
														@csrf
														
													</form>
												</ul>
											</li>


										@endif

									    
										
									@else
									<li class="menu-item" ><a title="Register or Login" href="{{ route('login') }}">Se connecter</a></li>
									<li class="menu-item" ><a title="Register or Login" href="{{ route('register') }}">S'inscrire</a></li>
									@endif

								@endif
							</ul>
						</div>
					</div>
				</div>

				<div class="container">
					<div class="mid-section main-info-area">

						<div class="wrap-logo-top left-section">
							<a href="/" class="link-to-home"><img src="{{ asset('assets/images/number1.jpg') }}" style="border-radius: 50%; height:80px;width:90px" alt="mercado"></a>
						</div>

						@livewire("header-search-component")

						<div class="wrap-icon right-section">
							@livewire("cart-count-component")
							@livewire("wishlist-count-component")
							
							
							<div class="wrap-icon-section show-up-after-1024">
								<a href="#" class="mobile-navigation">
									<span></span>
									<span></span>
									<span></span>
								</a>
							</div>
						</div>

					</div>
				</div>

				<div class="nav-section header-sticky">
					<div class="header-nav-section"  >
						<div class="container">
							<ul class="nav menu-nav clone-main-menu" id="mercado_haead_menu" data-menuname="Sale Info" style="width: 1500px;text-align:center" >
								<li class="menu-item"><a href="#" class="link-term">Spécial hébdomadaire</a><span class="nav-label hot-label">hot</span></li>
								<li class="menu-item"><a href="#" class="link-term">Vente chaude articles</a><span class="nav-label hot-label">hot</span></li>
								<li class="menu-item"><a href="#" class="link-term">Top des nouveautés</a><span class="nav-label hot-label">hot</span></li>
								<li class="menu-item"><a href="#" class="link-term">Meilleurs ventes</a><span class="nav-label hot-label">hot</span></li>
								{{-- <li class="menu-item"><a href="#" class="link-term">Articles les mieux notés</a><span class="nav-label hot-label">hot</span></li> --}}
							</ul>
						</div>
					</div>

					<div class="primary-nav-section" style="background: rgb(85, 37, 37)">
						<div class="container" style="padding:10px">
							<ul   class="nav primary clone-main-menu" id="mercado_main" data-menuname="Main menu"   >
								<li class="menu-item home-icon">
									<a href="/" class="link-term mercado-item-title"><i class="fa fa-home" aria-hidden="true"></i></a>
								</li>
								<li class="menu-item">
									<a href="/about" class="link-term mercado-item-title">A propos de nous</a>
								</li>
								<li class="menu-item">
									<a href="/shop" class="link-term mercado-item-title">Boutique</a>
								</li>
								<li class="menu-item">
									<a href="/cart" class="link-term mercado-item-title">Panier</a>
								</li>
								<li class="menu-item">
									<a href="/checkout" class="link-term mercado-item-title">Commander</a>
								</li>
								<li class="menu-item">
									<a href="/contact" class="link-term mercado-item-title">Contacter-nous</a>
								</li>																	
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

{{ $slot }}

	@livewire('footer-component')
	
	<script src="{{ asset('assets/js/jquery-1.12.4.minb8ff.js?ver=1.12.4') }}"></script>
	<script src="{{ asset('assets/js/jquery-ui-1.12.4.minb8ff.js?ver=1.12.4') }}"></script>
	<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
	<script src="{{ asset('assets/js/jquery.flexslider.js') }}"></script>
	<script src="{{ asset('assets/js/chosen.jquery.min.js') }}"></script>
	<script src="{{ asset('assets/js/owl.carousel.min.js') }}"></script>
	<script src="{{ asset('assets/js/jquery.countdown.min.js') }}"></script>
	<script src="{{ asset('assets/js/jquery.sticky.js') }}"></script>
	<script src="{{ asset('assets/js/functions.js') }}"></script>
	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js" integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"
	 integrity="sha512-GDey37RZAxFkpFeJorEUwNoIbkTwsyC736KNSYucu1WJWFK9qTdzYub8ATxktr6Dwke7nbFaioypzbDOQykoRg==" 
	 crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/14.6.3/nouislider.min.js"
	  integrity="sha512-EnXkkBUGl2gBm/EIZEgwWpQNavsnBbeMtjklwAa7jLj60mJk932aqzXFmdPKCG6ge/i8iOCK0Uwl1Qp+S0zowg=="
	  crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	  <script src="https://cdn.tiny.cloud/1/n8cijm3act34yo1jn3xhrtznzrrspkkvux3z7x9xyldv6nzk/tinymce/5/tinymce.min.js"
	   referrerpolicy="origin"></script>


	   
    @livewireScripts
	
	@stack('scripts')
</body>
</html>