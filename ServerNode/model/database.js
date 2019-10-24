var mysql      = require('mysql');
const config = require('../config/config')
var connection = mysql.createConnection(config);
function connect(callback){
    connection.connect(function(err) {
        if (err) {
            // console.error('Error connecting: ' + err.stack);
            callback(null,err)
            return;
        }
        callback(connection,null)
        // console.log('Connected as id ' + connection.threadId);
    });
}
function getDanhMuc(callback){
    connection.query('SELECT * FROM danhmuc', function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}

function getProducts(callback,params){
    
    connection.query(`SELECT * FROM sanpham LIMIT ${params.offset},${params.numberLoad}`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}

function searchProducts(callback,params){
    // console.log("searchProducts--database");
    connection.query(`SELECT * FROM sanpham WHERE TenSP LIKE '%${params}%'`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}

function addProducts(callback,params){
    console.log("paaaa",params)
    connection.query(`INSERT INTO sanpham ( TenSP, GiaSP, Anh, DacTinh, DacDiemNoiBat, MoTaSP, IDDM, ID_NBH) VALUES ( "${params.TenSP}", "${params.GiaSP}", "${params.Anh}", "${params.DacTinh}", "${params.DacDiemNoiBat}", "${params.MoTaSP}",'202', "${params.ID_NBH}");`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}
function deleteProducts(callback,params){
    console.log("paaaa",params)
    connection.query(`delete from sanpham where IDSP=${params.IDSP}`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}
function getProductsIDSP(callback,params){
    
    connection.query(`SELECT * FROM sanpham where IDSP=${params.IDSP} and ID_NBH=${params.IDNBH}`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}

function getProductsNBH(callback,params){
    
    connection.query(`SELECT * FROM sanpham where ID_NBH=${params.idNBH}`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}

function checkLogin(callback,params){
    
    connection.query(`SELECT * FROM mozala.nguoibanhang where user_name="${params.user_name}" and password="${params.password}"`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}
function checkLoginUser(callback,params){
    
    connection.query(`SELECT * FROM login where SDT="${params.user_name}" and Pwd="${params.password}"`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}
function countProducts(callback){
    
    connection.query("select count(*) as productsCount from sanpham ", function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}
function updateAddressUser(callback,params){
    
    connection.query(`update login set Address='${params.new_address}' where ID="${params.id_user}"`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}
function updateprofileUser(callback,params){
    
    connection.query(`update login set Ten='${params.new_name}',Email='${params.new_email}' where ID="${params.id_user}"`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}
function registerUser(callback,params){
    console.log(params)
    var query = "INSERT INTO login (SDT,Pwd,Role,Ten,Email,Tuoi,Image) VALUES ?";
    console.log(query)
    connection.query('INSERT INTO login SET ?',params, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}
function getUser(callback){
    connection.query('SELECT * FROM login', function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}

function getProductCard(callback,params){
    
    connection.query(` SELECT * FROM mozala.giohang,sanpham,(select ID,SDT,Role,Ten,Email,Tuoi,Image from login)as login where giohang.IDSP=sanpham.IDSP and ID_NBH=${params.idNBH} and giohang.IDLogin=login.ID;`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}

function getHistoryCardUser(callback,params){
    
    connection.query(`select * from giohang,sanpham,nguoibanhang where giohang.IDSP=sanpham.IDSP and IDLogin="${params.id_user}" and sanpham.ID_NBH=nguoibanhang.ID`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}
function cancelProductUser(callback,params){
    
    connection.query(`update giohang set isDelete='${params.new_delete}' where STT="${params.stt_card}"`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}
function addProduceToComment(callback,params){
    params.forEach(i => {
        connection.query(`INSERT INTO binhluansp(IDSP,IDLogin) VALUES(${i.IDSP},${i.IDLogin})`)
    });
    callback('Thành công');
}

function getDataComment(callback,params){
    connection.query(`SELECT * FROM binhluansp,sanpham,nguoibanhang WHERE binhluansp.IDSP=sanpham.IDSP AND sanpham.ID_NBH=nguoibanhang.ID`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}

function addComment(callback,params){
    // console.log(params)
    connection.query(`UPDATE binhluansp SET NoiDung='${params.NoiDung}', Sao=${params.Sao}, isComment=1 WHERE IDSP=${params.IDSP} and IDLogin=${params.IDLogin}`, function (error, results, fields) {
        if (error){
            callback(null,error)
        }
        callback(results)
    });
}

module.exports = {
    connection:connection,
    connect:connect,
    getDanhMuc:getDanhMuc,
    getProducts:getProducts,
    registerUser:registerUser,
    getUser:getUser,
    countProducts:countProducts,
    checkLogin:checkLogin,
    getProductsNBH:getProductsNBH,
    addProducts:addProducts,
    getProductsIDSP:getProductsIDSP,
    deleteProducts:deleteProducts,
    checkLoginUser:checkLoginUser,
    getProductCard:getProductCard,
    updateAddressUser:updateAddressUser,
    updateprofileUser:updateprofileUser,
    getHistoryCardUser:getHistoryCardUser,
    cancelProductUser:cancelProductUser,
    searchProducts,
    addProduceToComment,
    getDataComment,
    addComment
}
