<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                Edit New Attribute
                            </div>
                            <div class="col-md-6">
                                <a href="{{ route('admin.attributes') }}" class="btn btn-success pull-right">All Attributes</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if(Session::has('message'))                       
                        <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>                   
                        @endif
                        <form wire:submit.prevent="updateAttribute" class="form-horizontal">
                            <div class="form-group">
                                <div class="col-md-4 control-label">Attribute Name</div>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Category Name"  class="form-control inpu-md" wire:model="name" >
                                    @error('name') <p class="text-danger">{{ $message }}</p>@enderror
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="col-md-4 control-label"></div>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>