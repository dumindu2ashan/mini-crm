<?php


namespace App\Repositories;


use App\Interfaces\CompanyRepositoryInterface;
use App\Mail\CompanyCreatedEmail;
use App\Models\Company;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class CompanyRepository implements CompanyRepositoryInterface
{
    public function getAllCompanies()
    {
        return Company::orderBy('name', 'asc')->pluck('name', 'id');
    }

    public function getPaginateCompanies()
    {
        return Company::orderBy('name', 'asc')->paginate(10);
    }

    public function getCompanyById($id)
    {
        return Company::findOrFail($id);
    }

    public function deleteCompany($id)
    {
        try {
            Company::destroy($id);
        } catch (\Exception $e) {
            throw $e;
        }
    }

    public function createCompany($data)
    {
        try {
            DB::beginTransaction();
            $arr = $data->except(['_token', 'logo']);

            if ($data->hasFile('logo')) {
                $image_name = time() . '.' . $data->logo->extension();
                //image path storage/app/public
                $data->logo->storeAs('public', $image_name);

                $arr['logo'] = $image_name;
            }
            Company::create($arr);

            Mail::to(Auth::user()->email)->send(new CompanyCreatedEmail($arr));

            DB::commit();
        } catch (\Exception $e) {
            DB::rollback();
            throw $e;
        }
    }

    public function updateCompany($data, $id)
    {
        try {
            DB::beginTransaction();
            $arr = $data->except(['_token', '_method', 'logo']);
            if ($data->hasFile('logo')) {
                $image_name = time() . '.' . $data->logo->extension();
                //image path storage/app/public
                $data->logo->storeAs('public', $image_name);

                $arr['logo'] = $image_name;
            }
            Company::whereId($id)->update($arr);
            DB::commit();
        } catch (\Exception $e) {
            DB::rollback();
            throw $e;
        }
    }
}
