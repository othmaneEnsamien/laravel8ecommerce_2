<div>
    <div class="container" style="padding:30px">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6" >
                                Edit  Products
                            </div>
                            <div class="col-md-6">
                                <a href="{{ route('admin.products') }} " class="btn btn-success pull-right">All Products</a>
                            </div>
                        </div>                  
                    </div>
                    <div class="panel-body">
                        @if(Session::has('message'))

                        <div class="aler alert-success" role="alert">{{ Session::get('message') }}</div>

                        @endif
                        <form action="" wire:submit.prevent="updateproduct" class="form-horizontal" enctype="multipart/form-data">
                            <div class="form-group">
                                <label class="col-md-4 control-label">Product Name</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Product Name" class="form-control input-md" wire:model="name" wire:keyup="generateslug" >
                                    @error('name') <p class="text-danger">{{ $message }}</p>@enderror
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Product Slug</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Product Slug" class="form-control input-md" wire:model="slug" >
                                    @error('slug') <p class="text-danger">{{ $message }}</p>@enderror
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Short Description</label>
                                <div class="col-md-4">
                                    <textarea placeholder="Short Description" class="form-control input-md" wire:model="short_description" ></textarea>
                                    @error('short_description') <p class="text-danger">{{ $message }}</p>@enderror
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label"> Description</label>
                                <div class="col-md-4">
                                    <textarea placeholder="Description" class="form-control input-md" wire:model="description"></textarea>
                                    @error('description') <p class="text-danger">{{ $message }}</p>@enderror
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Regular Price</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Regular Price" class="form-control input-md" wire:model="regular_price">
                                    @error('regular_price') <p class="text-danger">{{ $message }}</p>@enderror
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Sale Price</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Sale Price" class="form-control input-md" wire:model="sale_price">
                                    @error('sale_price') <p class="text-danger">{{ $message }}</p>@enderror
                                   
                                    
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">SKU</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="SKU " class="form-control input-md" wire:model="SKU">
                                    @error('SKU') <p class="text-danger">{{ $message }}</p>@enderror
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Stock</label>
                                <div class="col-md-4">
                                   <select name="" class="form-control" wire:model="stock_status">
                                       <option value="instock">instock</option>
                                       <option value="Out of stock">Out of stock</option>
                                   </select>
                                   @error('stock_status') <p class="text-danger">{{ $message }}</p>@enderror
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Featured</label>
                                <div class="col-md-4">
                                   <select  class="form-control" wire:model="featured">
                                       <option value="0">No</option>
                                       <option value="1">Yes</option>
                                   </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Quantity</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Quantity" class="form-control input-md" wire:model="quantity">
                                    @error('quantity') <p class="text-danger">{{ $message }}</p>@enderror
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Product Image</label>
                                <div class="col-md-4">
                                    <input type="file" class=" input-file" wire:model="newimage">
                                    @if($newimage)
                                        <img src="{{ $newimage->temporaryUrl() }}" width="120" alt="">
                                    @else 
                                        <img src="{{ asset('assets/images/products' )}}/{{$image}}" alt="">

                                    @endif
                                 
                                    
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Product Gallery</label>
                                <div class="col-md-4">
                                    <input type="file" class=" input-file" wire:model="newimages" multiple>
                                    @if($newimages)
                                        @foreach($newimages as $newimage)
                                            @if($newimage)
                                            <img src="{{ $newimage->temporaryUrl() }}" width="120" alt="">
                                            @endif
                                        @endforeach
                                    @else 
                                        @foreach($images as $image)
                                            @if($image)
                                            <img src="{{ asset('assets/images/products' )}}/{{$image}}" alt="">
                                            @endif
                                        @endforeach
                                    @endif
                                 
                                    
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Category</label>
                                <div class="col-md-4">
                                   <select name="" class="form-control" wire:model="category_id" wire:change="changeSubcategory">
                                       <option value="">Select Category</option>
                                       @foreach($categories as $cate)
                                            <option value="{{ $cate->id }}">{{ $cate->name }}</option>
                                    @endforeach
                                   </select>
                                   @error('category_id') <p class="text-danger">{{ $message }}</p>@enderror
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-md-4 control-label">Sub Category</label>
                                <div class="col-md-4">
                                   <select name="" class="form-control" wire:model="scategory_id">
                                       <option value="0">Select Category</option>
                                       @foreach($scategories as $scate)
                                            <option value="{{ $scate->id }}">{{ $scate->name }}</option>
                                    @endforeach
                                   </select>
                                   @error('scategory_id') <p class="text-danger">{{ $message }}</p>@enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Products attributes</label>
                                <div class="col-md-3">
                                   <select name="" class="form-control" wire:model="attr">
                                       <option value="0">Select Attribute</option>
                                       @foreach($pattributes as $pattribute)
                                            <option value="{{ $pattribute->id }}">{{ $pattribute->name }}</option>
                                    @endforeach
                                   </select>
                                   {{-- @error('attr') <p class="text-danger">{{ $message }}</p>@enderror
                                   --}}
                                </div>
                                <div class="col-md-1">
                                    <button type="button" class="btn btn-info" wire:click.prevent="add">Add</button>
                                </div>
                            </div>
                            @foreach($inputs as $key=>$value)
                                <div class="form-group">
                                    <label class="col-md-4 control-label">{{ $pattributes->where('id',$attribute_arr[$key])->first()->name }}</label>                                   
                                    <div class="col-md-3">
                                        <input type="text" placeholder="{{ $pattributes->where('id',$attribute_arr[$key])->first()->name }}" class="form-control input-md" wire:model="attribute_values.{{ $value }}">
                                    </div>
                                    <div class="col-md-1">
                                        <button type="button" class="btn btn-danger btn-sm" wire:click.prevent="remove({{ $key }})">Remove</button>
                                    </div>
                                </div>

                           @endforeach


                            <div class="form-group">
                                <label class="col-md-4 control-label">Product Image</label>
                                <div class="col-md-4">
                                    <button type="submit"  class="btn btn-primary">update</button>
                                </div>
                            </div>
                            
                        </form>
    
    
                </div>
                
                </div>
            </div>
        </div>
    </div>
</div>
