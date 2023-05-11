const addCustomer="INSERT INTO customer(first_name,last_name,customer_id,city,dob,salary,mobile_no) VALUES($1,$2,$3,$4,$5,$6,$7)";
const addLoan = "INSERT INTO customer VALUES($1,$2,$3,$4,$5,$6,$7)";
const getCustomers ="SELECT * FROM customer";
const getCustomerById = "SELECT * FROM customer WHERE customer_id =$1";
const getLoans = "SELECT * FROM loans WHERE customer_id =$1";
const getLoanById = "SELECT * FROM loans WHERE loan_id =$1";
const deleteCustomer="DELETE FROM customer WHERE customer_id=$!";
const updateCustomer="UPDATE customer SET mobile_no=$1 WHERE customer_id=$1"; 
const checkIdExists="SELECT s FROM customer s WHERE s.customer_id =$1 ";

module.exports={
getCustomers,
getCustomerById,
getLoans,
getLoanById,
addCustomer,
addLoan,
deleteCustomer,
checkIdExists,
updateCustomer,

};