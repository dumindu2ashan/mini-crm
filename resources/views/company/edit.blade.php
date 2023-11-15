@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Update Company</div>
                    <div class="card-body">
                        <form method="POST" action="{{ url('company').'/'.$data->id }}">
                            @csrf
                            @method('PUT')
                            <div class="row mb-3">
                                <label for="name"
                                       class="col-md-4 col-form-label text-md-end">Company Name</label>
                                <div class="col-md-6">
                                    <input id="name" type="text"
                                           class="form-control @error('name') is-invalid @enderror" name="name"
                                           value="{{ old('name',$data->name) }}" autocomplete="name" autofocus>
                                    @error('name')<span class="invalid-feedback"
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
                                <label for="website"
                                       class="col-md-4 col-form-label text-md-end">Website</label>
                                <div class="col-md-6">
                                    <input id="website" type="text"
                                           class="form-control @error('website') is-invalid @enderror" name="website"
                                           value="{{ old('website',$data->website) }}" autocomplete="website" autofocus>
                                    @error('website')<span class="invalid-feedback"
                                                           role="alert"><strong>{{ $message }}</strong></span>@enderror
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="logo"
                                       class="col-md-4 col-form-label text-md-end">Logo</label>
                                <div class="col-md-6">
                                    <input id="logo" type="file"
                                           class="form-control @error('logo') is-invalid @enderror" name="logo"
                                           value="{{ old('logo') }}" autocomplete="logo" autofocus>
                                    @error('logo')<span class="invalid-feedback"
                                                        role="alert"><strong>{{ $message }}</strong></span>@enderror
                                </div>
                            </div>
                            <div class="row mb-0">
                                <div class="col-md-8 offset-md-4">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

