<<<<<<< Updated upstream
Contents:
1. -[Goal](## Goal)
2. -[Database-Structure](## Database Structure)
3. -[Application-APIs](## Application APIs)



## Goal <a name="Goal"></a>
The goal of this project is to create the backend setup of a financial institution (Bank) application where the user of the application can log in as either a admin and as a customer.
 As an admin, you can add new customers and get a full view of the database. As a customer you can only view information about your current account, the loans that have been taken, 
 available and useful information like the interest rates and currencies

- ## Database Structure <a name='Database Structure'></a>
The project is going to be developing its database using PostgreSQL and the following schema is to be implemented:

- ### Customer:
This table stores information about the bank's customer. Contains essential information about the customer used to link the customer to their bank accounts and other services like loans. 
- ### Account:
Used to store customer's account details. Show the date the account was created or the account was delete and relevant information linking to the customer like customer id




- ### Loan:
The table serves the purpose of saving information about loans granted to the bank�s customers like amount, date issued, customer ID and branch where the loan was issued.<p>
Currency:
This table saves information about the currencies that the bank offers and other information that are usual in service delivery in the banking sector like exchange rate<p>.

## Application Use<a name='Application APIs'></a>
  
 - ### Log in Admin Account
http://localhost:3000/admin/login
METHOD: POST
status code: 201
Request
```
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
```
 - ### If not found:
 ```
{
"status": 404,
"data": "No_matching account"
}
```
- ### If data not correct
```
{
"status": 400,
"data": " No matching account "
}

```
- ### Admin registration
http://localhost:3000/admin/registration
METHOD: POST
status code: 201
Request
```
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
```






 - ### If user is already registered
```
{
"status": 409,
"data": "This user already exist"
}

```
- ### Retrieves a list of all customers
http://localhost:3000/customer/registration
  METHOD: GET 
 

| Parameter | Type   | Required | Description  |
|-----------|--------|----------|--------------|
| `userId`  | string | Yes      | The user ID. |


Response
```
{
"status": 200,
"data": [
{
"id": 1,
"Name": "John",
"Account Details": [{
  "Account id": 3,
  "Amount": "100 000",
  "Currency": PLN}]
}]
```
- ### Retrieves a list of all loans
http://localhost:3000/admin/loans
 METHOD: GET
 

| Parameter | Type     | Required | Description  |
|-----------|----------|----------|--------------|
| `loan_id  | bigserial| Yes      | The loan's ID. |

```
"Loan": [
{
"Loan id": 3,
"account_balance": "100 000",
"Currency": PLN,
"Date Issued": 07-09-2023,
"Interest rate": 20%

}]}
```




- ### Log in Customer account
http://localhost:3000/customer/login
METHOD: POST
status code: 201
Request
```
{
"userName": "userName",
"password": "password"
}
```
Response
```
{
"status": 200 OK,
"data": {
"id":1,
"userName": "userName"
// other details
}
}
```

 - ### If not found:
```
{
"status": 404,
"data": "No_matching account"
}

```
 - ### if data provided is incorrect:
```
{
"status": 400,
"data": " No matching account "
}

```


- ## Customer registration:
http://localhost:3000/customer/registration
METHOD: POST
status code: 201
Request
```
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
```
 - ### If user is already registered
 ```
{
"status": 409,
"data": "This user already exist"
}

```

- ### Retrieve information about customer account
http://localhost:3000/customer/account
METHOD:GET 

| Parameter   | Type   | Required | Description   |
|-------------|--------|----------|-------------- |
|`account_id` | string | Yes      | The account ID|





Response
```
{
"status": 200,
"data": [
{
"id": 1,
"Name": "John",
"Account Details": [{
{
"Account id": 3,
"account_balance": "100 000",
"Currency": PLN,
}],
```







=======
The goal is to create a financial institution ie BANK and the project aims to impliment the following functions 
 How much money can the bank's cutomer take as a loan based on the customer's salary and income.The currency that the custmoer can get from the bank and the yearly interest.
>>>>>>> Stashed changes
