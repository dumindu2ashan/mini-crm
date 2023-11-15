@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Edit Employee</div>
                    <div class="card-body">
                        <form method="POST" action="{{ url('employee').'/'.$data->id }}">
                            @csrf
                            @method("PUT")
                            <div class="row mb-3">
                                <label for="first_name"
                                       class="col-md-4 col-form-label text-md-end">First Name</label>
                                <div class="col-md-6">
                                    <input id="first_name" type="text"
                                           class="form-control @error('first_name') is-invalid @enderror" name="first_name"
                                           value="{{ old('first_name',$data->first_name) }}" autocomplete="first_name" autofocus>
                                    @error('first_name')<span class="invalid-feedback"
                                                              role="alert"><strong>{{ $message }}</strong></span>@enderror
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="last_name"
                                       class="col-md-4 col-form-label text-md-end">Last Name</label>
                                <div class="col-md-6">
                                    <input id="last_name" type="text"
                                           class="form-control @error('last_name') is-invalid @enderror" name="last_name"
                                           value="{{ old('last_name',$data->last_name) }}" autocomplete="last_name" autofocus>
                                    @error('last_name')<span class="invalid-feedback"
                                                             role="alert"><strong>{{ $message }}</strong></span>@enderror
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="company_id"
                                       class="col-md-4 col-form-label text-md-end">Company</label>
                                <div class="col-md-6">
                                    <select class="form-control @error('company_id') is-invalid @enderror" name="company_id">
                                        <option selected value="">Select a company</option>
                                        @foreach($companies as $key => $value)
                                            <option value="{{$key}}" @if(old('company_id',$data->company_id) == $key) selected @endif>{{$value}}</option>
                                        @endforeach
                                    </select>
                                    @error('company_id')<span class="invalid-feedback"
                                                              role="alert"><strong>{{ $message }}</strong></span>@enderror
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="email"
                                       class="col-md-4 col-form-label text-md-end">Email</label>
                                <div class="col-md-6">
                                    <input id="email" type="text"
                                           class="form-control @error('email') is-invalid @enderror" name="email"
                                           value="{{ old('email',$data->email) }}" autocomplete="email" autofocus>
                                    @error('email')<span class="invalid-feedback"
                                                         role="alert"><strong>{{ $message }}</strong></span>@enderror
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="phone"
                                       class="col-md-4 col-form-label text-md-end">Phone</label>
                                <div class="col-md-6">
                                    <input id="phone" type="text"
                                           class="form-control @error('phone') is-invalid @enderror" name="phone"
                                           value="{{ old('phone',$data->phone) }}" autocomplete="phone" autofocus>
                                    @error('phone')<span class="invalid-feedback"
                                                         role="alert"><strong>{{ $message }}</strong></span>@enderror
                                </div>
                            </div>

                            <div class="row mb-0">
                                <div class="col-md-8 offset-md-4">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

