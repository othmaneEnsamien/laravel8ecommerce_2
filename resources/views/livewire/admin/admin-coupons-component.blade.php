<div>

    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                       <div class="row">
                           <div class="col-md-6">
                            All Coupon
                           </div>
                           <div class="col-md-6">
                            <a href="{{ route('adminAdd.coupons') }}" class="btn btn-success pull-right">Add New</a>
                           </div>
                           
                       </div>
                    </div>
                    <div class="panel-body">
                        @if(Session::has('message'))
                            <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                        @endif
                        <div class="panel-body" >
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Coupon Code</th>
                                        <th>Coupon Type</th>
                                        <th>Coupon Value</th>
                                        <th>Cart Value</th>
                                        <th>Expiry date</th>
                                        <th>Action</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($coupons as $coup)
                                    <tr>
                                        <td>{{ $coup->id }}</td>
                                        <td>{{ $coup->code}}</td>
                                        <td>{{ $coup->type }}</td>
                                        @if($coup->type == 'fixed')
                                        <td>${{ $coup->value }}</td>
                                        @else
                                        <td>{{ $coup->value }} %</td>
                                        @endif
                                        <td>${{ $coup->cart_value }}</td>
                                        <td>${{ $coup->expiry_date }}</td>
                                        <td>
                                            <a href="{{ route('adminEdit.coupons',['coupon_id'=>$coup->id])}}"> <i class="fa fa-edit fa-2x"></i></a>
                                            <a href="#" wire:click.prevent="deletecoupons({{ $coup->id }})"> <i class="fa fa-times text-danger fa-2x"></i></a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

