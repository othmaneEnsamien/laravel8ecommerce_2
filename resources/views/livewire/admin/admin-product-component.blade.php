<div>
    <style>
        nav svg{
            height:20px
        }

        nav .hidden{
            display:block !important;
        }

    </style>
    <div class="container" style="padding:30px 0px;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-4">
                                All Products
                            </div>

                            <div class="col-md-4">
                                <a href="{{ route('admin.addproducts') }}" class="btn btn-success pull-right">Add New</a>
                            </div>

                            <div class="col-md-4">
                                <input type="text" class="form-control" placeholder="Search ..." wire:model="searchTerm">
                            </div>

                        </div>
                        
                        
                    </div>
                    <div class="panel-body">
                        @if(Session::has('message'))
                             <div class="alert-success" role="alert">{{ Session::get('message') }}</div>
                        @endif
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>Stock</th>
                                    <th>Price</th>
                                    <th>sale Price</th>
                                    <th>Category</th>
                                    <th>Attribute Product</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            
                            <tbody>
                                @foreach($products as $prod)
                                    <tr>
                                        <td>{{ $prod->id }}</td>
                                        <td><img src="{{ asset('assets/images/products') }}/{{ $prod->image }}" width="60" alt=""></td>
                                        <td>{{ $prod->name }}</td>
                                        <td>{{ $prod->stock_status }}</td>
                                        <td>{{ $prod->regular_price }}</td>
                                        <td>{{ $prod->sale_price }}</td>
                                        <td>{{ $prod->category->name }}</td>
                                        <td>
                                            <ul class="sclist">
                                                 @foreach($prod->attributeValues as $pa)
                                                    <li><i class="fa "></i>{{ $pa->value }}
                                                    </li>
                                                 @endforeach
                                                
                                            </ul>
                                        </td>
                                        <td>{{ $prod->created_at }}</td>
                                        <td>
                                            <a href="{{ route('admin.editproducts',['product_slug'=>$prod->slug]) }}"><i class="fa fa-edit fa-2x text-info"></i></a>
                                            <a href="#" href="#" onclick="confirm('Are you sure , You want delete this Category?')||event.stopImmediatePropagation()" wire:click.prevent="deleteProduct({{ $prod->id }})"><i class="fa fa-times fa-2x text-danger"></i></a>
                                        </td>
                                    </tr>
                                @endforeach

                            </tbody>
                        </table>
                        {{ $products->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
