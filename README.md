Contents
Goal	2
Database:	2
Database Structure:	2
Application Use:	3
Log in Admin Account	3
/Admin/admin login	3
Admin registration	4
/admin/create admin	4
Users	5
GET /customers	5
Log in Customer account	7
/customer/customer Login	7
Customer registration:	8
/customer/customer registration	8














Goal
The goal of this project is to create the backend setup of a financial institution (Bank) application.

Database:
Database Structure:
The project is going to be developing its database using PostgreSQL and the following schema is to be implemented:

Customer:
This table stores information about the bank’s customer. Contains essential information about the customer used to link the customer to their bank accounts and other services like loans. 
Account:
Used to store customer’s account details. Show the date the account was created or the account was delete and relevant information linking to the customer like customer id




Transactions:
All transactions done by the customer are stored in this table. Shows the transaction ID, Account sent the money, transaction medium and amount.
Loan:
The table serves the purpose of saving information about loans granted to the bank’s customers like amount, date issued, customer ID and branch where the loan was issued.
Branch:
This table saves information about the branches that the bank has and other information that are usual in service delivery in the banking sector like branch location

Application Use:
  
Log in Admin Account
/Admin/admin login
METHOD: POST
status code: 201
Request
{
"userName": "userName",
"password": "password"
}
Response
{
"status": 201,
"data": {
"id":1,
"userName": "userName"
// other details
}
}
If not found:
{
"status": 404,
"data": "No_matching account"
}

If data not correct
{
"status": 400,
"data": " No matching account "
}
Admin registration
/admin/create admin
METHOD: POST
status code: 201
Request
{
"userName": "newUser",
"password": "password"
}
Response
{
"status": 201,
"data": {
"id":2,
"userName": "newUser"
// other details
}
}






If user is already registered
{
"status": 400,
"data": "This user already exist"
}
GET /customers
Retrieves a list of all customers
Query Parameters
ParameterTypeRequiredDescriptionidnumberyesThe customer’s  idResponse
{
"status": 200,
"data": [
{
"id": 1,
"Name": "John",
"Account Details": [{
{
"Account id": 3,
"Amount": "100 000",
"Currency": PLN,
}],

"Loan": [{
{
"Loan id": 3,
"Amount": "100 000",
"Currency": PLN,
"Date Issued": 07-09-2023,

}],








Log in Customer account
/customer/customer Login
METHOD: POST
status code: 201
Request
{
"userName": "userName",
"password": "password"
}
Response
{
"status": 201,
"data": {
"id":1,
"userName": "userName"
// other details
}
}
If not found:
{
"status": 404,
"data": "No_matching account"
}

If data provided is incorrect
{
"status": 400,
"data": " No matching account "
}







Customer registration:
/customer/customer registration
METHOD: POST
status code: 201
Request
{
"userName": "newUser",
"password": "password"
}
Response
{
"status": 201,
"data": {
"id":2,
"userName": "newName"
// other details
}
}
If user is already registered
{
"status": 400,
"data": "This user already exist"
}




GET /account details
Retrieves a list of all customers
Query Parameters
ParameterTypeRequiredDescriptionidnumberyesThe customer’s  id
Response
{
"status": 200,
"data": [
{
"id": 1,
"Name": "John",
"Account Details": [{
{
"Account id": 3,
"Amount": "100 000",
"Currency": PLN,
}],









