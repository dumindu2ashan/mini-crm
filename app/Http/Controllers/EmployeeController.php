<?php

namespace App\Http\Controllers;

use App\Http\Requests\EmployeeStoreRequest;
use App\Http\Requests\EmployeeUpdateRequest;
use App\Interfaces\CompanyRepositoryInterface;
use App\Interfaces\EmployeeRepositoryInterface;
use App\Models\Employee;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{

    public function __construct(EmployeeRepositoryInterface $employee,CompanyRepositoryInterface $company)
    {
        $this->employee = $employee;
        $this->company = $company;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = $this->employee->getPaginateEmployees();
        return view('employee.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $companies = $this->company->getAllCompanies();
        return view('employee.create',compact('companies'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(EmployeeStoreRequest $request)
    {
        try {
            $data = $this->employee->createEmployee($request);
            return redirect('employee')->with(['success'=>true,'success'=>'Employee created successfully.']);
        }catch (\Exception $e){
            return redirect('employee')->withErrors('Something went wrong. '.$e->getMessage());
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
        $data = $this->employee->getEmployeeById($id);
        return view('employee.show',compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->employee->getEmployeeById($id);
        $companies = $this->company->getAllCompanies();
        return view('employee.edit',compact('data','companies'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(EmployeeUpdateRequest $request, $id)
    {
        try {
            $data = $this->employee->updateEmployee($request,$id);
            return redirect('employee')->with(['success'=>true,'success'=>'Employee updated successfully.']);
        }catch (\Exception $e){
            return redirect('employee')->withErrors('Something went wrong. '.$e->getMessage());
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
            $this->employee->deleteEmployee($id);
            return redirect('employee')->with(['success'=>true,'success'=>'Employee Deleted successfully.']);
        }catch (\Exception $e){
            return redirect('employee')->withErrors('Something went wrong. '.$e->getMessage());
        }
    }
}
