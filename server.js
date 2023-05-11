const express= require('express');
const app = express();
const port = 3000;
const customerRoutes = require('./src/customer/routes');   

app.get('/',(req,res) =>{
res.send('Banking Application');

});
app.use(express.json());
app.use('/customer',customerRoutes);

app.listen(port,() =>console.log(`app listening on port ${port}`));
