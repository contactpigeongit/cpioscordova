var exec = require('cordova/exec');

exports.initialize = function (token, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'initialize', [token]);
};

exports.doPostToken = function (arg0, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'doPostToken', [arg0]);
};

exports.pageView = function (arg0, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'pageView', [arg0]);
};

exports.productView = function (arg0, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'productView', [arg0]);
};

exports.add2Cart = function (arg0, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'add2Cart', [arg0]);
};

exports.removeFromCart = function (arg0, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'removeFromCart', [arg0]);
};

exports.placeOrder = function (arg0, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'placeOrder', [arg0]);
};

exports.postCart = function (arg0, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'postCart', [arg0]);
};

exports.postContactEmail = function (arg0, success, error) {
    exec(success, error, 'fbsdkiosplugin', 'postContactEmail', [arg0]);
};

