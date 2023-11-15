<?php


namespace App\Interfaces;


interface EmployeeRepositoryInterface
{
    public function getPaginateEmployees();
    public function getEmployeeById($id);
    public function getEmployeesByCompanyId($id);
    public function deleteEmployee($id);
    public function createEmployee($data);
    public function updateEmployee($data,$id);
}
