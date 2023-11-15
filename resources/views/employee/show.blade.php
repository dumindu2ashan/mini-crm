@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">View Employee</div>
                    <div class="card-body">

                        <div class="row mb-3">
                            <label for="first_name"
                                   class="col-md-4 col-form-label text-md-end">Name</label>
                            <div class="col-md-6">
                                <label class="col-md-4 col-form-label text-md-end">{{$data->fullname}}</label>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="company_id"
                                   class="col-md-4 col-form-label text-md-end">Company</label>
                            <div class="col-md-6">
                                <label class="col-md-4 col-form-label text-md-end">{{$data->company->name}}</label>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="email"
                                   class="col-md-4 col-form-label text-md-end">Email</label>
                            <div class="col-md-6">
                                <label class="col-md-4 col-form-label text-md-end">{{$data->email??'N/A'}}</label>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="phone"
                                   class="col-md-4 col-form-label text-md-end">Phone</label>
                            <div class="col-md-6">
                                <label class="col-md-4 col-form-label text-md-end">{{$data->phone??'N/A'}}</label>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

