import Foundation

@objc(FBSDKPlugin)
public class FBSDKPlugin : CDVPlugin {
    
    var gregorysConnector = cpConnectionService()
    let gregorysCPToken = "f5f49293fb634246b546ffc80d09cdc0"
    let gregorysCPGroupName = "Cp test"
    let gregorysCPName = "moirizw"
    
  @objc
  func initialize(_ command: CDVInvokedUrlCommand) {
    let token = command.argument(at: 0) as! String?
    self.gregorysConnector.initWithOptions(appscptoken:gregorysCPToken, appscpgroup:gregorysCPGroupName, appscpname: gregorysCPName, doPostCartScreenshot: "", isFIRAlreadyInc: "" )
    self.gregorysConnector.postFCMTokenToCP(fcmToken: token!)
    cpMainParameters.shared.isPushActive = true
    let pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: "OK")
    self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
  }

    @objc
    func doPostToken(_ command: CDVInvokedUrlCommand) {
        let token = command.argument(at: 0) as! String?
        self.gregorysConnector.resetcurSessionFCMTokenPosted(newValue: "no")
        self.gregorysConnector.postFCMTokenToCP(fcmToken: token!)
        let pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: "OK")
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
    }

    @objc
    func pageView(_ command: CDVInvokedUrlCommand) {
        let utmdt = "my simple Page View"
        let utmp = "/myiosapp/category/subcategory/mypage/"
        self.gregorysConnector.pageView(utmdt: utmdt, utmp: utmp)
        let pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: "OK")
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
    }

    @objc
    func productView(_ command: CDVInvokedUrlCommand) {
        let pName = "το προϊον μου"
        let pSku = "12345-abcd"
        let utmp = "/myiosapp/myprodpage/"
        self.gregorysConnector.productView(pName: pName, pSku: pSku, utmp: utmp)
        let pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: "OK")
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
    }

    @objc
    func add2Cart(_ command: CDVInvokedUrlCommand) {
        let pName = "το προϊον μου"
        let pSku = "12345-abcd"
        let pQty = 6
        let pUnitPrice = 12.36
        let utmp = "/myiosapp/myprodpage/"
        let pimg = ""
        self.gregorysConnector.add2cart(pName: pName, pSku: pSku, pQty: pQty, pUnitPrice: pUnitPrice, pImgURL: pimg, utmp: utmp)
        let pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: "OK")
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
    }
    
    @objc
    func removeFromCart(_ command: CDVInvokedUrlCommand) {
        let pName = "το προϊον μου"
        let pSku = "12345-abcd"
        let pQty = 2
        let pUnitPrice = 12.36
        let utmp = "/myiosapp/myprodpage/"
        let pimg = ""
        self.gregorysConnector.removefromcart(pName: pName, pSku: pSku, pQty: pQty, pUnitPrice: pUnitPrice, pImgURL: pimg, utmp: utmp)
        let pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: "OK")
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
    }
    
    
    @objc
    func placeOrder(_ command: CDVInvokedUrlCommand) {
        let utmp = ""
        self.gregorysConnector.setOrderData(oId: "oid-0008", oValue: 36.36)
        self.gregorysConnector.addOrderItem(sku: "81", name: "Four Punch Man T-Shirt", quant: 2, price: 149)
        self.gregorysConnector.addOrderItem(sku: "49", name: "Sassy, loose fit dual tone dress", quant: 5, price: 190)
        self.gregorysConnector.postOrder(utmp: utmp)
        let pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: "OK")
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
    }
    
    @objc
    func postCart(_ command: CDVInvokedUrlCommand) {
        self.gregorysConnector.postCart()
        let pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: "OK")
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
    }
    
    @objc
    func postContactEmail(_ command: CDVInvokedUrlCommand) {
        let cp_curEmail = "test@test.gr"
        let utmp = "/myiosapp/category/subcategory/mypage/"
        self.gregorysConnector.setContactMail(eMail: cp_curEmail, utmp: utmp)
        let pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: "OK")
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
    }

}
