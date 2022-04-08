<main id="main" class="main-site left-sidebar">

    <div class="container">

        <div class="wrap-breadcrumb">
            <ul>
                <li class="item-link"><a href="#" class="link">home</a></li>
                <li class="item-link"><span>Wishlist</span></li>
            </ul>
        </div>

        <div class="row">
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
                    .product-wish .fa:hover{
                        color: rgb(250, 76, 7);
                        
                    }
                    .fill-heart{
                    color:rgb(250, 76, 7) !important;

                }
                </style>
            @if(Cart::instance('wishlist')->content()->count()>0)
            <ul class="product-list grid-products equal-container">
                @foreach(Cart::instance('wishlist')->content() as $item )
                    <li class="col-lg-4 col-md-6 col-sm-6 col-xs-6 ">
                        <div class="product product-style-3 equal-elem "  >
                            <div class="product-thumnail" >
                                <a href="{{ route('product.details',['slug'=>$item->model->slug]) }}" title="{{ $item->model->name }}">
                                    <figure><img  style="height: 230px;width:200px" src="{{asset('assets/images/products')}}/{{ $item->model->image}}" alt="{{ $item->model->name }}"></figure>
                                </a>
                            </div>
                            <div class="product-info">
                                <a href="{{ route('product.details',['slug'=>$item->model->slug]) }}" class="product-name"><span>{{ $item->model->name }}</span></a>
                                <div class="wrap-price"><span class="product-price">{{ $item->model->regular_price }}</span></div>
                                <a href="#" class="btn add-to-cart" wire:click.prevent="movewishlistfromtocart('{{ $item->rowId }}')">Move To Cart</a>
                                <div class="product-wish">
                                    <a wire:click.prevent="removefromwishlist({{ $item->model->id }})"  href="{{ route('shop') }}"><i class="fa fa-heart fill-heart" ></i></a>
                                </div>
                               
                            </div>
                        </div>
                    </li>

                @endforeach   
            </ul>
            @else 
            <div class="text-center" style=" padding:30px 0;">
            <h4 style="color: rgb(255, 0, 0)">
                <strong>no item in wishlist</strong>
            </h4>
            </div>
            
            @endif


        </div>
    </div>
</main>