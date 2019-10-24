const Router = require('express').Router();
var db = require('../model/database')

Router.get('/', (req, res) => {
    res.send("hahahas")
})
Router.get('/rest/v1/getDanhMuc', (req, res) => {
    db.getDanhMuc((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        res.json(result)
    })
})
Router.get('/rest/v1/countProducts', (req, res) => {
    db.countProducts((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        res.json(result[0])
    })
})
Router.post('/rest/v1/getProducts', (req, res) => {
    let params = {
        offset:req.body.numberShow,
        numberLoad:req.body.numberLoad
    }
    db.getProducts((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        // console.log(req.body)
        // console.log(result.length)
        // if(req.body.numberShow+20>result.length){
        //     result=result.slice(req.body.numberShow)
        // }
        // else{
        //     result=result.slice(req.body.numberShow,req.body.numberShow+20)
        // }
        res.json(result)

    },params)
})
Router.post('/rest/v1/searchProducts', (req, res) => {
    console.log('---------------/rest/v1/searchProducts-----------------------')
    console.log(req.body.TenSP);
    let params = req.body.TenSP
    db.searchProducts((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        res.json(result)

    },params)
})
Router.post('/rest/v1/addProduceToComment', (req, res) => {
    console.log('---------------/rest/v1/addProduceToComment-----------------------')
    // console.log(req.body.data);
    let params = req.body.data
    // console.log(params);
    db.addProduceToComment((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        res.json(result)

    },params)
})

Router.post('/rest/v1/getDataComment', (req, res) => {
    console.log('---------------/rest/v1/getDataComment-----------------------')
    // console.log(req.body.data);
    let params = req.body.data
    // console.log(params);
    db.getDataComment((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        res.json(result)

    },params)
})

Router.post('/rest/v1/addComment', (req, res) => {
    console.log('---------------/rest/v1/addComment-----------------------')
    // console.log(req.body.data);
    let params = {
        NoiDung:req.body.NoiDung,
        Sao:req.body.Sao,
        IDSP:req.body.IDSP,
        IDLogin:req.body.IDLogin
    }
    // console.log(params);
    db.addComment((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        res.json(result)

    },params)
})

Router.post('/rest/v1/addProducts', (req, res) => {
    console.log(req.body)
    let params = req.body
    console.log(params)
    db.addProducts((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        res.json(result)

    },params)
})
Router.post('/rest/v1/deleteProducts', (req, res) => {

    console.log(req.body)
    let params = {
        IDSP:req.body.IDSP,
        IDNBH:req.body.IDNBH
    }
    console.log(params)
    db.getProductsIDSP((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        console.log("ressssssssssss-----------",result)
       if(result.length>0){
        db.deleteProducts((result1, err) => {
            if (err) {
                res.json(err)
                return;
            }
            res.json(result)
        },params)
       }
       else{
           res.json({
               result_code:5000,
               message_error:"Sản phẩm không tồn tại"
           })
       }
        
    },params)
    
})
Router.post('/rest/v1/getProductsNBH', (req, res) => {
    let params = {
        idNBH:req.body.idNBH,
    }
    db.getProductsNBH((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        // console.log(req.body)
        // console.log(result.length)
        // if(req.body.numberShow+20>result.length){
        //     result=result.slice(req.body.numberShow)
        // }
        // else{
        //     result=result.slice(req.body.numberShow,req.body.numberShow+20)
        // }
        res.json(result)

    },params)
})

Router.post('/rest/v1/getProductCard', (req, res) => {
    let params = {
        idNBH:req.body.idNBH,
    }
    db.getProductCard((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        res.json(result)

    },params)
})

Router.post('/rest/v1/checkLogin', (req, res) => {
    let params = {
        user_name:req.body.user_name,
        password:req.body.password
    }
    db.checkLogin((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        // console.log(req.body)
        // console.log(result.length)
        // if(req.body.numberShow+20>result.length){
        //     result=result.slice(req.body.numberShow)
        // }
        // else{
        //     result=result.slice(req.body.numberShow,req.body.numberShow+20)
        // }
        res.json(result)

    },params)
})

Router.post('/rest/v1/updateAddress', (req, res) => {
    let params = {
        id_user:req.body.id_user,
        new_address:req.body.new_address,
    }
    db.updateAddressUser((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        // console.log(req.body)
        // console.log(result.length)
        // if(req.body.numberShow+20>result.length){
        //     result=result.slice(req.body.numberShow)
        // }
        // else{
        //     result=result.slice(req.body.numberShow,req.body.numberShow+20)
        // }
        res.json(result)

    },params)
})
Router.post('/rest/v1/updateProfile', (req, res) => {
    let params = {
        id_user:req.body.id_user,
        new_name:req.body.new_name,
        new_email:req.body.new_email
    }
    db.updateprofileUser((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        // console.log(req.body)
        // console.log(result.length)
        // if(req.body.numberShow+20>result.length){
        //     result=result.slice(req.body.numberShow)
        // }
        // else{
        //     result=result.slice(req.body.numberShow,req.body.numberShow+20)
        // }
        res.json(result)

    },params)
})
Router.post('/rest/v1/getHistoryCardUser', (req, res) => {
    let params = {
        id_user:req.body.id_user
    }
    db.getHistoryCardUser((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        res.json(result)

    },params)
})
Router.post('/rest/v1/cancelCard', (req, res) => {
    let params = {
        stt_card:req.body.stt_card,
        new_delete:req.body.new_delete
    }
    db.cancelProductUser((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        res.json(result)

    },params)
})
Router.post('/rest/v1/checkLoginUser', (req, res) => {
    let params = {
        user_name:req.body.user_name,
        password:req.body.password
    }
    db.checkLoginUser((result, err) => {
        if (err) {
            res.json(err)
            return;
        }
        // console.log(req.body)
        // console.log(result.length)
        // if(req.body.numberShow+20>result.length){
        //     result=result.slice(req.body.numberShow)
        // }
        // else{
        //     result=result.slice(req.body.numberShow,req.body.numberShow+20)
        // }
        res.json(result)

    },params)
})
Router.post('/rest/v1/signupUser', (req, res) => {
    var req = req.body
    var param = {
        SDT: req.sdt,
        Pwd: req.pwd,
        Role: req.role,
        Ten: req.ten,
        Email: req.email,
        Tuoi: req.tuoi,
        Image:req.image
    }

    var promise = new Promise(function (resolve, reject) {
        // Do async job
        db.getUser((result, err) => {

            if (err) {
                res.json(err)
                return;
            }
            var check = 0;
            result.forEach(element => {
                if (element.SDT == param.SDT) {
                    check = 1;
                }
            });

            if (check == 0) {
                resolve(0)
            }
            else {
                reject("duplicate phone number")
            }

        })

    })

    promise.then((result) => {
        db.registerUser((result, err) => {
            if (err) {
                res.json(err)
                return;
            }
            let Respone = {
                resultCode: 0,
                sdt: param.SDT,
                role: param.Role,
                ten: param.Ten,
                email: param.Email,
                tuoi: param.Tuoi,
                image:param.Image
            }
            res.json(Respone)
        }, param)
    }, (err) => {
        res.json({
            resultCode: 5555,
            message: "duplicate phone number"
        })
    })
    console.log(req)

})
module.exports = Router