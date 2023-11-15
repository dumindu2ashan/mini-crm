@extends('layouts.app')
@section('content')
    <div class="container">
        @if($errors->any())
            @foreach ($errors->all() as $error)
                <div class="alert alert-danger" role="alert">{{$error}}</div>
            @endforeach
        @endif
        @if (session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Company Management</div>
                    <div class="card-body">
                        <table id="example" class="table table-striped" style="width:100%">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Website</th>
                                <th>View</th>
                                <th>Update</th>
                                <th>Delete</th>
                            </tr>
                            </thead>
                            <tbody>
                            @forelse($data as $val)
                                <tr>
                                    <td>{{$val->name}}</td>
                                    <td>{{$val->email??'N/A'}}</td>
                                    <td>{{$val->website??'N/A'}}</td>
                                    <td>
                                        <a href="{{url('company').'/'.$val->id}}" class="btn btn-success">
                                            View
                                        </a>
                                    </td>
                                    <td>
                                        <a href="{{url('company').'/'.$val->id.'/edit'}}" class="btn btn-primary">
                                            Edit
                                        </a>
                                    </td>
                                    <td>
                                        <form action="{{ url('company', ['id' => $val->id]) }}" method="POST">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger"
                                                    onclick="return confirm('Are you sure to delete this company?')">
                                                Delete
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="6">No data found.</td>
                                </tr>
                            @endforelse
                            </tbody>
                        </table>
                    </div>
                    {!! $data->links() !!}
                </div>
            </div>
        </div>
    </div>
@endsection

