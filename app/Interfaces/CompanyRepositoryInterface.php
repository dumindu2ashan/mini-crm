<?php


namespace App\Interfaces;


interface CompanyRepositoryInterface
{
    public function getAllCompanies();
    public function getPaginateCompanies();
    public function getCompanyById($id);
    public function deleteCompany($id);
    public function createCompany($data);
    public function updateCompany($data,$id);
}
