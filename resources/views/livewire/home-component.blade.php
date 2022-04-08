<main id="main">
		

	<!--MAIN SLIDE-->
	<div class="wrap-main-slide"  >
		<div  class="slide-carousel owl-carousel style-nav-1" data-items="1" data-loop="1" data-nav="true" data-dots="false">
			@foreach($sliders as $slider)
			<div class="item-slide" >
				<img   src="{{ asset('assets/images/sliders')}}/{{ $slider->image }}" alt="" class="img-slide">
				<div class="slide-info slide-1">
					<h2 class="f-title" style="margin: 60px"> <b style="z-index:10000;color:white">{{ $slider->title }}</b></h2>
					<span class="subtitle">{{ $slider->subtitle }}</span>
					<p class="sale-info"><span class="price">{{ $slider->price }}</span></p>
					<a href="{{ $slider->link }}" class="btn-link" style="position:absolute;bottom:20px;margin-left:100px;border-radius:30px">acheter maintenant</a>
				</div>
			</div>
			@endforeach
			
		</div>
	</div>
	

	<!--BANNER-->
	<div  style="width:100%;margin:10px">
		<div class="wrap-banner style-twin-default" >	
			<a href="#" class="link-banner banner-effect-1">
				<figure><img style="height:200px" src="{{ asset('assets/images/4.png')}}" alt=""></figure>
			</a>	
		</div>
	</div>
	

<div class="container" style="width: 1400px">
	<!--On Sale-->
	@if($onsaleproducts->count()>0 && $sale->status == 1 && $sale->sale_date > Carbon\Carbon::now())
	<div class="wrap-show-advance-info-box style-1 has-countdown"  style="background: rgb(255, 255, 255)">			
		<h3  style="background: rgb(255, 0, 0)" class="title-box">Les articles en soldes</h3>
		<div class="wrap-top-banner" >
			<a href="#" class="link-banner banner-effect-2">
				<figure><img style="width:1400px;height:240px"  style="" src="{{ asset('assets/images/111.jpg')}}"  alt=""></figure>
			</a>
		</div>
		<div class="wrap-countdown mercado-countdown" data-expire="{{ Carbon\Carbon::parse($sale->sale_date)->format('Y/m/d h:m:s') }}"></div>
		<div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container " data-items="5" data-loop="false" data-nav="true" data-dots="false" data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}'>
			@foreach($onsaleproducts as $oprod)
			<div class="product product-style-2 equal-elem ">						
				<div class="product-thumnail">
					<a href="{{ route('product.details',['slug'=>$oprod->slug]) }}" title="{{ $oprod->name }}">
						<figure><img   style="height: 350px;width:400px"    src="{{ asset('assets/images/products/')}}/{{ $oprod->image }}"  alt="{{ $oprod->name }}"></figure>
					</a>
		
				</div>
				<div class="product-info">
					<a href="{{ route('product.details',['slug'=>$oprod->slug]) }}" class="product-name"><span>{{ $oprod->name }}</span></a>
					<div class="wrap-price"><ins> <p class="product-price">${{ $oprod->sale_price }}</p></ins><del><p class="product-price"> ${{ $oprod->regular_price }}DH </del></p></div>
				</div>						
			</div>
			@endforeach


		</div>
	</div>
	@endif

	<!--Latest Products-->
	<div class="wrap-show-advance-info-box style-1"  style="background: rgb(255, 255, 255);">
		<h3 style="background: rgb(255, 0, 0)" class="title-box">les derniers produits</h3>
		<div class="wrap-top-banner" >
			<a href="#" class="link-banner banner-effect-2">
				<figure><img  style="width:1400px;height:300px" style="" src="{{ asset('assets/images/0.png')}}"  alt=""></figure>
			</a>
		</div>
		<div class="wrap-products">
			<div class="wrap-product-tab tab-style-1">						
				<div class="tab-contents">
					<div class="tab-content-item active" id="digital_1a">
						<div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container" data-items="5" data-loop="false" data-nav="true" data-dots="false" data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}' >
							@foreach($lproducts as $prod)
							<div class="product product-style-2 equal-elem ">
								<div class="product-thumnail">
									<a href="{{ route('product.details',['slug'=>$prod->slug]) }}" title="{{ $prod->name }}">
										<figure><img  style="height: 350px;width:400px"   src="{{ asset('assets/images/products/')}}/{{ $prod->image }}" alt="{{ $prod->name }}"></figure>
									</a>
								</div>
								<div class="product-info">
									<a href="{{ route('product.details',['slug'=>$prod->slug]) }}" class="product-name"><span>{{ $prod->name }}</span></a>
									<div class="wrap-price"><span class="product-price">${{ $prod->regular_price }}</span></div>
								</div>
							</div>
							@endforeach

							
						</div>
					</div>							
				</div>
			</div>
		</div>
	</div>

	<!--Product Categories-->
	<div class="wrap-show-advance-info-box style-1"  style="background: rgb(255, 255, 255)">
		<h3 style="background: rgb(255, 0, 0)" class="title-box">Les categories</h3>
		<div class="wrap-top-banner">
			<a href="#" class="link-banner banner-effect-2">
				<figure><img style="width:1400px" src="{{ asset('assets/images/fashion-accesories-banner.jpg')}}" width="1170" height="240" alt=""></figure>
			</a>
		</div>
		<div class="wrap-products">
			<div class="wrap-product-tab tab-style-1">
				<div class="tab-control" style="background: rgb(255, 8, 8)">
					@foreach($categories as $key=>$category)
						<a href="#category_{{ $category->id }}" class="tab-control-item {{ $key==0 ? 'active':'' }}">{{ $category->name }}</a>
					@endforeach
					
				</div>
				<div class="tab-contents">
					@foreach($categories as $key=>$category)
					<div class="tab-content-item {{ $key==0 ? 'active':'' }}" id="category_{{ $category->id }}">
						<div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container" data-items="5" data-loop="false" data-nav="true" data-dots="false" data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}' >
							
							@php 
							$c_products=DB::table('products')->where('category_id',$category->id)->get()->take($no_of_products);
							@endphp
							@foreach($c_products as $cprod)
							<div class="product product-style-2 equal-elem ">
								<div class="product-thumnail">
									<a href="{{ route('product.details',['slug'=>$cprod->slug]) }}" title="{{ $cprod->name }}">
										<figure><img style="height:400px;width:350px"  src="{{ asset('assets/images/products/')}}/{{ $cprod->image }}" width="800" height="800" alt="{{ $cprod->name }}"></figure>
									</a>
								</div>
								<div class="product-info">
									<a href="{{ route('product.details',['slug'=>$cprod->slug]) }}" class="product-name"><span>{{ $cprod->name }}</span></a>
									<div class="wrap-price"><span class="product-price">${{ $cprod->regular_price }}</span></div>
								</div>
							</div>
							@endforeach																		
						</div>							
					</div>
					@endforeach

					
				</div>
			</div>
		</div>
	</div>			

</div>


</main>