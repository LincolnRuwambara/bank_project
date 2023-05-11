const { response } = require('express');
const pool=require('../../db');
const queries= require('./queries');

const getCustomers= (req,res) =>{
pool.query(queries.getCustomers,(error,results)=>{
    if (error) throw error;
    res.status(200).json(results.rows);
});

};

const getCustomerById=(req,res) =>{
 const customer_id= parseInt(req.params.id);
//query to get a customer's information using the customer ID
 pool.query(quiries.getCustomerById,[customer_id],(error,results)=>{
  if (error) throw error;
  res.status(200).json(results.rows);   
});
};
//query to ADD a  new customerusing the customer
const addCustomer=(req,res) =>{
 const{first_name,last_name,customer_id,city,dob,salary,mobile_no}= req.body;
//checking if customer id already exists
pool.query(quiries.checkIdExists,[customer_id],(error,results)=>{

if(results.rows.length){
  res.send("The customer ID already exists");
}
// adding customer info if customer_id doesnt exist
pool.query(queries.addCustomer,[first_name,last_name,customer_id,city,dob,salary,mobile_no],(error,results)=>{
   if (error) throw error;
   res.status(201).send("Customer saved successfully!");
});
});

// deleting a customer using customer_id
};
const deleteCustomer = (req,res)=>{
 const customer_id= parseInt(req.params.customer_id);

pool.query(queries.getCustomerById,[customer_id],(error,results)=>{
   if (constNoCustomer=!results.rows.length) {

    res.send("Customer Does Not exist in the database")


   }

   pool.query(queries.deleteCustomer,[customer_id],(error,results)=>{

     if(error) throw error;
     res.command(200).send("Customer Successfully saved");


   });

});



};

const updateCustomer=(res,req)=>{
    const customer_id=parseInt(res.params.customer_id);
    const{name}=req.body;
    pool.query(queries.getCustomerById,[customer_id],(error,response)=>{
     if(!results.rows.length){
    
res.send("Customer not found");
     }

pool.query(queries.updateCustomer,[mobile_no,customer_id],(error,results)=>{
 if (error) throw error;
 res.status(200).send("Customer Saved Successfully");
});


    });

};

module.exports={
    getCustomers,
    getCustomerById,
    addCustomer,
    deleteCustomer,
    updateCustomer,
};