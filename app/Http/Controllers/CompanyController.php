<?php

namespace App\Http\Controllers;

use App\Http\Requests\CompanyStoreRequest;
use App\Http\Requests\CompanyUpdateRequest;
use App\Interfaces\CompanyRepositoryInterface;
use App\Interfaces\EmployeeRepositoryInterface;

class CompanyController extends Controller
{

    public function __construct(CompanyRepositoryInterface $company, EmployeeRepositoryInterface $employee)
    {
        $this->company = $company;
        $this->employee = $employee;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = $this->company->getPaginateCompanies();
        return view('company.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('company.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CompanyStoreRequest $request)
    {
        try {
            $data = $this->company->createCompany($request);
            return redirect('company')->with(['success'=>true,'success'=>'Company created successfully.']);
        }catch (\Exception $e){
            return redirect('company')->withErrors('Something went wrong. '.$e->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->company->getCompanyById($id);
        $emps = $this->employee->getEmployeesByCompanyId($id);
        return view('company.show',compact('data','emps'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->company->getCompanyById($id);
        return view('company.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(CompanyUpdateRequest $request, $id)
    {
        try {
            $data = $this->company->updateCompany($request,$id);
            return redirect('company')->with(['success'=>true,'success'=>'Company created successfully.']);
        }catch (\Exception $e){
            return redirect('company')->withErrors('Something went wrong. '.$e->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $this->company->deleteCompany($id);
            return redirect('company')->with(['success'=>true,'success'=>'Company Deleted successfully.']);
        }catch (\Exception $e){
            return redirect('company')->withErrors('Something went wrong. '.$e->getMessage());
        }
    }
}
