<div>
    <div class="container" style="padding:30px 0">
        <style>
            nav svg{
                height: 20px;
            }

            nav .hidden{
                display: block !important;
            }
        </style>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Contact
                    </div>
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Comment</th>
                                <th>Created_at</th>
                            </tr>
                            @php
                                $i =1;
                             @endphp
                            @foreach($contacts as $cont)
                            <tr>
                                <td>{{ $i++ }}</td>
                                <td>{{ $cont->name }}</td>
                                <td>{{ $cont->email }}</td>
                                <td>{{ $cont->mobile }}</td>
                                <td>{{ $cont->comment }}</td>
                                <td>{{ $cont->created_at }}</td>
                            </tr>
                            @endforeach
                        </table>
                        {{ $contacts->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>