@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">View Company</div>
                    <div class="card-body">
                        <div class="row mb-3">
                            <label for="name"
                                   class="col-md-4 col-form-label text-md-end">Company Name</label>
                            <div class="col-md-6">
                                <label for="name" class="col-md-4 col-form-label text-md-end">{{$data->name}}</label>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="email"
                                   class="col-md-4 col-form-label text-md-end">Email</label>
                            <div class="col-md-6">
                                <label for="name"
                                       class="col-md-4 col-form-label text-md-end">{{$data->email??'N/A'}}</label>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="website"
                                   class="col-md-4 col-form-label text-md-end">Website</label>
                            <div class="col-md-6">
                                <label for="name"
                                       class="col-md-4 col-form-label text-md-end">{{$data->website??'N/A'}}</label>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="logo"
                                   class="col-md-4 col-form-label text-md-end">Logo</label>
                            <div class="col-md-6">
                                @if($data->logo != null)
                                    <img src="{{asset('storage')}}/{{ $data->logo }}" width="300" height="300">
                                @else
                                    <label for="name"
                                           class="col-md-4 col-form-label text-md-end">N/A</label>
                                @endif
                            </div>
                        </div>
                        <div class="card-header">Employees</div>
                        <div class="card-body">
                            <table id="example" class="table table-striped" style="width:100%">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Company</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                </tr>
                                </thead>
                                <tbody>
                                @forelse($emps as $val)
                                    <tr>
                                        <td>{{$val->fullname}}</td>
                                        <td>{{$val->company->name}}</td>
                                        <td>{{$val->email??'N/A'}}</td>
                                        <td>{{$val->phone??'N/A'}}</td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="8">No data found.</td>
                                    </tr>
                                @endforelse
                                </tbody>
                            </table>
                        </div>
                        {!! $emps->links() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

