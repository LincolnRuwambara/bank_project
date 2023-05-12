const {Router} = require ('express');
const controller = require('./controller');  
const router = Router();
router.get('/', controller.getCustomers);
router.get('/:id',controller.getCustomerById);
router.post('/',controller.addCustomer);
router.put('/:id',controller.updateCustomer);
router.delete('/:id',controller.deleteCustomer);


module.exports= router;