
<main id="main" class="main-site left-sidebar">

    <div class="container">

        <div class="wrap-breadcrumb">
            <ul>
                <li class="item-link"><a href="#" class="link">home</a></li>
                <li class="item-link"><span>All products</span></li>
            </ul>
        </div>
        <div class="row">

            <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 main-content-area">

                <div class="banner-shop">
                    <a href="#" class="banner-link">
                        <figure><img src="{{asset('assets/images/shop-banner.jpg')}}" alt=""></figure>
                    </a>
                </div>

                <div class="wrap-shop-control">

                    <h1 class="shop-title">All products</h1>

                    <div class="wrap-right">

                  
                        <div class="sort-item orderby ">
                            <select name="orderby" class="use-chosen" wire:model="sorting" >
                                <option value="default" selected="selected">Default sorting</option>
                                <option value="date">Sort by newness</option>
                                <option value="price">Sort by price: low to high</option>
                                <option value="price-desc">Sort by price: high to low</option>
                            </select>
                        </div>

                        <div class="sort-item product-per-page">
                            <select name="post-per-page" class="use-chosen" wire:model="pagesize" >
                                <option value="12" selected="selected">12 per page</option>
                                <option value="16">16 per page</option>
                                <option value="18">18 per page</option>
                                <option value="21">21 per page</option>
                                <option value="24">24 per page</option>
                                <option value="30">30 per page</option>
                                <option value="32">32 per page</option>
                            </select>
                        </div>
                     
                        <div class="change-display-mode">
                            <a href="#" class="grid-mode display-mode active"><i class="fa fa-th"></i>Grid</a>
                            <a href="#" class="list-mode display-mode"><i class="fa fa-th-list"></i>List</a>
                        </div>

                    </div>

                </div><!--end wrap shop control-->
                <style>
                    .product-wish{
                        position: absolute;
                        top: 10%;
                        left: 0px;
                        z-index: 90;
                        right: 30px;
                        text-align: right;
                        padding-top: 0;
                    }
                    .product-wish .fa{
                        color: rgb(153, 153, 153);
                        font-size: 32px;
                    }
                 
                    .fill-heart{
                        color:rgb(250, 76, 7) !important;
                    }
                    
                .regprice{
                    font-weight: 300;
                    font-size: 13px !important;
                    color: #aaaaaa !important;
                    text-decoration: line-through;
                    padding-left: 10px;
                }
                .ok{
                    color: white
                }

                </style>
                @if($onsaleproducts->count()>0 && $sale->status == 1 && $sale->sale_date > Carbon\Carbon::now())
                <div class="row">
                    {{-- lister les produits --}}
                    <ul class="product-list grid-products equal-container"   >
                        @php
                            $witems = Cart::instance('wishlist')->content()->pluck('id');
                         @endphp
                        @foreach($onsaleproducts as $product)

                        <li class="col-lg-4 col-md-6 col-sm-6 col-xs-6 ">
                            <div class="product product-style-3 equal-elem " >
                                <div class="product-thumnail"  >
                                    <a href="{{ route('product.details',['slug'=>$product->slug]) }}" title="{{ $product->name }}">
                                        <figure ><img  style="height: 230px;width:200px"  src="{{asset('assets/images/products')}}/{{ $product->image}}" alt="{{ $product->name }}"></figure>
                                    </a>
                                </div>
                                <div class="product-info">
                                    <a href="{{ route('product.details',['slug'=>$product->slug]) }}" class="product-name"><span>{{ $product->name }}</span></a>
                                    <div class="wrap-price">
                                        <span class="product-price">${{ $product->sale_price }}</span>
                                        <del><span class="product-price regprice">${{ $product->regular_price }}</span></del>
                                    </div>
                                    
                                    <a href="#" class="btn add-to-cart" wire:click.prevent="store({{ $product->id}},'{{ $product->name }}',{{ $product->sale_price }})">Ajouter dans le panier</a>
                                    <div class="product-wish">
                                        @if ($witems->contains($product->id))
                                        <a wire:click.prevent="removefromwishlist({{ $product->id }})"  href="{{ route('product.solde') }}"><i class="fa fa-heart fill-heart"></i></a>
                                        @else 
                                        <a href="#" wire:click.prevent="addtowishlist({{ $product->id}},'{{ $product->name }}',{{ $product->regular_price }})"><i class="fa fa-heart"></i></a>
                                        @endif

                                    </div>
                                </div>
                            </div>
                        </li>

                        @endforeach   
                    </ul>

                </div>
                @endif

                <div class="wrap-pagination-info">
                {{ $onsaleproducts->links() }}
                    {{-- <ul class="page-numbers">
                        <li><span class="page-number-item current" >1</span></li>
                        <li><a class="page-number-item" href="#" >2</a></li>
                        <li><a class="page-number-item" href="#" >3</a></li>
                        <li><a class="page-number-item next-link" href="#" >Next</a></li>
                    </ul>
                    <p class="result-count">Showing 1-8 of 12 result</p> --}}
                </div>
            </div><!--end main products area-->

            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 sitebar" >
                <div class="widget mercado-widget categories-widget" style="margin:15px;background:rgb(184, 19, 19); padding:10px;border-radius:30px">
                    <h2 class="widget-title" style="color: rgb(0, 0, 0); font-size:20px">Tous les categories</h2>
                    <div class="widget-content">
                        <ul class="list-category">
                            @foreach($categories as $cat)
                            <li style="margin-left:5px;padding:5px" class="category-item {{ count($cat->subCategoryys) > 0 ? 'has-child-cate' : '' }}" >
                                <a  style="color: white" href="{{ route('product.category',['category_slug'=>$cat->slug]) }}" class="cate-link">{{ $cat->name }}</a>
                                @if(count($cat->subCategoryys)>0)
                                    <span class="toggle-control">+</span>
                                    <ul class="sub-cate">
                                        @foreach($cat->subCategoryys as $scategory)
                                            <li class="category-item">
                                                <a style="color:white" href="{{ route('product.category',['category_slug'=>$cat->slug , 'scategory_slug'=>$scategory->slug]) }}" class="cat-link"><i class="fa fa-caret-right ok"></i>{{ $scategory->name }}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                @endif                               
                            </li>                          
                            @endforeach
                            <li class="category-item">
                                <a style="color:rgb(211, 211, 211); font-size:17px; " href="{{ route('product.solde') }}" class="widget-title">Les produits en soldes</a> 
                            </li>
                        </ul>
                    </div>
                   
    
                </div><!-- Categories widget-->
               
               
                <div class="widget mercado-widget filter-widget price-filter">
                    <h2 class="widget-title">Price <span class="tet-info">${{ $min_price }} - ${{ $max_price }}</span></h2>
                    <div class="widget-content">
                       <div id="slider" wire:ignore></div>
                    </div>
                </div><!-- Price-->

              <hr style="margin-top: 45px">

                <div class="widget mercado-widget filter-widget">
                    <h2 class="widget-title">Size</h2>
                    <div class="widget-content">
                        <ul class="list-style inline-round ">
                            <li class="list-item"><a class="filter-link active" href="#">s</a></li>
                            <li class="list-item"><a id="filter-link " href="#">M</a></li>
                            <li class="list-item"><a id="filter-link " href="#">l</a></li>
                            <li class="list-item"><a id="filter-link " href="#">xl</a></li>
                        </ul>
                        <div class="widget-banner">
                            <figure><img src="{{asset('assets/images/size-banner-widget.jpg')}}" width="270" height="331" alt=""></figure>
                        </div>
                    </div>
                </div><!-- Size -->
               
                <div class="widget mercado-widget widget-product">
                    <h2 class="widget-title">Popular Products</h2>
                    
                    <div class="widget-content">
                        <ul class="products">
                            @foreach($popular_products as $product)
                            <li class="product-item">
                                <div class="product product-widget-style">
                                    <div class="thumbnnail">
                                        <a href="{{ route('product.details',['slug'=>$product->slug]) }}" title="{{ $product->name }}">
                                            <figure><img src="{{asset('assets/images/products')}}/{{ $product->image }}" alt="{{ $product->name }}"></figure>
                                        </a>
                                    </div>
                                    <div class="product-info">
                                        <a href="#" class="product-name"><span>{{ $product->name }}</span></a>
                                        <div class="wrap-price"><span class="product-price">${{ $product->regular_price }}</span></div>
                                    </div>
                                </div>
                            </li>  
                            @endforeach                            
                        </ul>
                    </div>
                   
                </div><!-- brand widget-->
                

            </div><!--end sitebar-->

        </div><!--end row-->

    </div><!--end container-->

</main>
@push('scripts')
    <script>
        var $slider = document.getElementById('slider');
        noUiSlider.create(slider,{
            start:[1,1000],
            connect:true,
            range :{
                'min':1,
                'max':200
            },
            pips :{
                mode:'steps',
                stopped : true,
                density:4
            }
        });

        slider.noUiSlider.on('update',function(value){
            @this.set('min_price',value[0]);
            @this.set('max_price',value[1]);
        });                 
    </script>
@endpush