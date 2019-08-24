using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Day_5_6
{
    public class ConstantMessages
    {
        public string strEmpDL = "select FirstName from Employees";
        public string strEmp = "select EmployeeID,  CONCAT(FirstName, ' ', LastName) as Name, Address, Salary from employees";
        public string strDL = "select EmployeeID, FirstName, Address, Salary from employees where FirstName= '";
        public string strCache_Ex7Page = "Cache_Ex7.aspx";
        public string strAlertEmployeeName = "Please Select Employee Name";
    }
}