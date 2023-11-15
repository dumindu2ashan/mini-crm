<?php


namespace App\Repositories;


use App\Interfaces\EmployeeRepositoryInterface;
use App\Models\Employee;
use DB;

class EmployeeRepository implements EmployeeRepositoryInterface
{

    public function getPaginateEmployees()
    {
        return Employee::orderBy('first_name', 'asc')->paginate(10);
    }

    public function getEmployeeById($id)
    {
        return Employee::findOrFail($id);
    }

    public function getEmployeesByCompanyId($id){
        return Employee::where('company_id', $id)->paginate(10);
    }

    public function deleteEmployee($id)
    {
        try {
            Employee::destroy($id);
        } catch (\Exception $e) {
            throw $e;
        }
    }

    public function createEmployee($data)
    {
        try {
            DB::beginTransaction();
            $arr = $data->except(['_token']);

            Employee::create($arr);

            DB::commit();
        } catch (\Exception $e) {
            DB::rollback();
            throw $e;
        }
    }

    public function updateEmployee($data, $id)
    {
        try {
            DB::beginTransaction();
            $arr = $data->except(['_token', '_method']);
            Employee::whereId($id)->update($arr);
            DB::commit();
        } catch (\Exception $e) {
            DB::rollback();
            throw $e;
        }
    }
}
