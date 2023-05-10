const pool=require('../../db');

const getCustomers= (req,res) =>{
pool.query("SELECT * FROM customer",(error,results)=>{
    if (error) throw error;
    res.status(200).json(results.rows);
});

};

module.exports={
    getCustomers,
};