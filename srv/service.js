const cds = require('@sap/cds');

class businessPartnerService extends cds.ApplicationService {
    async init() {
     const bpsrv = await cds.connect.to('API_BUSINESS_PARTNER');

     this.on('READ', this.entities.businessPartner, async(req) => {
        return bpsrv.run(req.query);
     });

     this.on('getDefaultValue', async (req) => {
        // Connect to the 'API_BUSINESS_PARTNER' service
        const bp = await cds.connect.to('API_BUSINESS_PARTNER');
      
        // Construct the base query
        req.query.SELECT = {
          from: req.query.SELECT.from,
          columns: req.query.SELECT.columns
        }
      
        // To delegate a query to the remote service and run the incoming query on the external service
        return bp.run(req.query);
      });
     

    //  this.before('UPDATE',this.entities.businessPartner,async(req) => {
    //     const {businessPartner} = req.params[0];
    //     if(req.http.res.statusCode===200){
    //         req.notify(200,`BusinessPartner(${businessPartner}) updated successfully.`)
    //     }
    //  })
    //  Handle the UPDATE event for business partners
        // this.on(this.entities.businessPartner, async (req) => {
        //     const { BusinessPartner } = req.params[0];
        //     console.log(BusinessPartner, 'BusinessPartner');
        //     try {
        //        const result = await bpsrv.send({
        //                         method: 'PATCH',
        //                         path: `A_BusinessPartner`,
        //                         data: {
        //                             BusinessPartner: 900010,
        //                             FirstName:'John'
        //                         }
        //     });
        //         console.log(result, 'result');
        //         return 'Business partner updated successfully'; 
        //     } catch (error) {
        //         console.log(error, 'error');
        //     } 
        // });
     super.init();
    }
}

module.exports = {businessPartnerService}
// const cds = require('@sap/cds');

// class BusinessPartnerService extends cds.ApplicationService {
//     async init() {
//         const bpsrv = await cds.connect.to('API_BUSINESS_PARTNER');

//         // Handle the READ event for business partners
//         this.on('READ', 'BusinessPartner', async (req) => {
//             return bpsrv.run(req.query);
//         });

//         // Handle the UPDATE event for business partners
//         this.on('UPDATE', 'BusinessPartner', async (req) => {
//             const { BusinessPartner } = req.params[0];
//             await bpsrv.send({
//                 method: 'PUT',
//                 path: `A_BusinessPartner('${BusinessPartner}')`,
//                 data: req.data 
//             });
//             return { message: 'Business partner updated successfully' }; 
//         });

//         super.init();
//     }
// }

// module.exports = { BusinessPartnerService };