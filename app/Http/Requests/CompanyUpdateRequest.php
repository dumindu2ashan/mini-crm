<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CompanyUpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'name'=>'required|string|max:191',
            'email'=>'nullable|email|max:191|unique:companies,email,'.$this->company,
            'logo'=>'nullable|image|mimes:jpg,png,jpeg|dimensions:min_width=100,min_height=100',
            'website'=>'nullable|string|max:191',
        ];
    }
}
