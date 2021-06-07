var exec = require('cordova/exec');

exports.initialize = function (cptoken, cpgroupname, cpname, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'initialize', [cptoken,cpgroupname,cpname]);
};

exports.doPostToken = function (arg0, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'doPostToken', [arg0]);
};

exports.pageView = function (utmdt, utmp, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'pageView', [utmdt, utmp]);
};

exports.productView = function (pName,pSku,utmp, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'productView', [pName,pSku,utmp]);
};

exports.add2Cart = function (pName, pSku, pQty, pUnitPrice, utmp, pimg, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'add2Cart', [pName, pSku, pQty, pUnitPrice, utmp, pimg]);
};

exports.removeFromCart = function (pName, pSku, pQty, pUnitPrice, utmp, pimg, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'removeFromCart', [pName, pSku, pQty, pUnitPrice, utmp, pimg]);
};

exports.setOrderData = function (oId, oValue, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'setOrderData', [oId, oValue]);
};

exports.addOrderItem = function (sku, name, quant, price, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'addOrderItem', [sku, name, quant, price]);
};

exports.placeOrder = function (utmp, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'placeOrder', [utmp]);
};

exports.postCart = function (arg0, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'postCart', [arg0]);
};

exports.postCustomCart = function (customCarts, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'postCustomCart', [customCarts]);
};

exports.postContactEmail = function (arg0, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'postContactEmail', [arg0]);
};

