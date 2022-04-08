<div>
   <div class="container" style="padding:30px 0">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Change Password
                </div>
                <div class="panel-body">
                    @if(Session::has('password_success'))
                        <div class="aler alert-success" role="alert">{{ Session::get('password_success') }}</div>
                    @endif
                    @if(Session::has('password_error'))
                        <div class="aler alert-danger" role="alert">{{ Session::get('password_error') }}</div>
                    @endif
                    <form  wire:submit.prevent="ChangePassword" class="form-horizontal">
                        <div class="form-group">
                            <div class="col-md-4 control-label">Current Password</div>
                            <div class="col-md-4">
                                <input type="password" placeholder="Current Password" class="form-control input-md" wire:model="current_password" name="current_password">
                                @error('current_password') <p class="text-danger">{{ $message }}</p> @enderror 
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label">New Password</div>
                            <div class="col-md-4">
                                <input type="password" placeholder="New Password" class="form-control input-md" wire:model="password" name="password">
                                @error('password') <p class="text-danger">{{ $message }}</p> @enderror 
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label">Confirm password</div>
                            <div class="col-md-4">
                                <input type="password" placeholder="Current Password" class="form-control input-md" wire:model="password_confirmation" name="password_confirmation">
                                @error('password_confirmation') <p class="text-danger">{{ $message }}</p> @enderror 
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label"></div>
                            <div class="col-md-4">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

   </div>
</div>
