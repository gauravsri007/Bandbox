//
//  Constant.swift
//  RozgaarIndia
//
//  Created by KUMAR GAURAV on 22/08/19.
//  Copyright © 2019 KUMAR GAURAV. All rights reserved.
//
#if DEBUG
//    print(body)
#endif
import UIKit
import Foundation
//import SVProgressHUD
//import AFNetworking
import MBProgressHUD
import AVFoundation

//class Constant: NSObject {

var progressHUD = MBProgressHUD()//https://onecorp.co.in/assets/img/download.png
let default_image = "https://onecorp.co.in/assets/img/download.png"

let kStatic_Key = "rozToken2334checkApi111ReQusetHello1212"
let kBaseURL_copy = "https://chat.rozgaarindia.com/webapi/"
let kBaseURL_Chat = "https://onecorp.co.in:1111/user/"
let kBaseURL_Chat_test = "https://core.onecorp.co.in:1111/user/"

let placeholder = "Please enter your description for Appointment."
let msg_logout = "Do you want logout!"
let msg_reminder_accepted = "Reminder has been Accepted"
let msg_reminder_rejected = "Reminder has been Rejected"
let msg_on_reminder_set = "Reminder has been set"
let msg_if_textField_empty = "TextField cannot empty!"
let REMARKS = "agenda"
let USER_ID = "user_id"
let USER_NAME = "username"//username
let EMAIL = "email"
let MOBILE = "mobile"
let PROFILE_PIC = "profile_pic"//profilepicture//profilepicture
let LOGIN_TYPE = "login_type"
let USER_ID_LOGIN = "USERID"
let DEVICE_TOKEN = "Device_token"
let LOGIN_TOKEN = "token"
let MUSIC_AND_VIDEO = "Music & Video"
let MUSIC_AND_AUDIO = "Music & Audio"
let VIDEO_AND_ANIMATION = "Video & Animation"
//UserDefaults Keys
let SCREEN_NOTIFICATION = "NOTIFICATION"
let SCREEN_MESSAGEBOARD = "MESSAGE_BOARD"
let SCREEN_PROFILE = "PROFILE"
let SCREEN_ORDER_NOW = "ORDER_NOW"
let SCREEN_MY_ORDER = "MY_ORDER"
let IS_LOGIN = "isLogin"
let isAvailble = "isAvailble"
let isMsgAlert = "isMsgAlert"
let device_token = "device_token"

//------------* Cell *------------
//let Cell_Meeting  = "MyMeeting_cell"
let CELL_FEATURED = "featured"
let CELL_TRENDING = "trending"
let CELL_TOP_CATEGORY = "top_cell"
let CELL_BOTTOM_CATEGORY = "bottom_cell"
let CELL_SEARCH = "search"
let CELL_PROFILE = "profile_cell"
let CELL_PROFILE_PERSONAL_INFO = "persoanl_info"
let CELL_JOB_LIST = "seller_list"
let CELL_OTHER = "Other"
let CELL_ORDER = "order_cell"
let CELL_ORDER_ACTIVE = "active"
let CELL_ORDER_DELIVERED = "delivered"
let CELL_ORDER_COMPLETED = "completed"
let CELL_ORDER_CANCELLED = "cancelled"
let CELL_CATEGORIES = "categories_cell"
let CELL_ORDER_LIST = "orderList_cell"


let CELL_Text_R = "text_messege_reciever"
let CELL_Text_S = "text_messege_sender"

let CELL_Media_R = "media_Rcell"
let CELL_Media_S = "media_Scell"
let CELL_Audio_R = "audio_Rcell"
let CELL_Audio_S = "audio_Scell"
let CELL_Docs_R = "Docs_R_Cell"
let CELL_Docs_S = "Docs_S_Cell"
let CELL_Zip_R = "Zip_R_Cell"
let CELL_Zip_S = "Zip_S_Cell"
let CELL_Action_ContactMe = "contact_me"


//----- NOTIFICATION ---------
let CELL_NOTIFATION = "notification"
let CELL_SECTION_NOTI = "section"
let CELL_NO_DATA_NOTI = "no_data"
let RS = "\u{20B9}"
let CELL_SECTION_SEARCH = "search_section"
let CELL_NO_REVIEW = "no_review"

//----- PORTFOLIO ---------
let CELL_PORTFOLIO_SELLER_INFO = "seller_info"
let CELL_PORTFOLIO_USER_INFO = "user_information"
let CELL_PORTFOLIO_TAB_CELL = "tab_cell"
let CELL_PORTFOLIO = "portfolio"
let CELL_PORTFOLIO_DETAILS = "portfolio_details"

let CELL_PORTFOLIO_LOGOS = "logos"
let CELL_PORTFOLIO_ACTIVE_JOBS = "active_jobs"

//----- Order Summary ---------
let INVOICE_HEADING = "heading_order"
let INVOICE_FILE = "file_order"
let INVOICE_AUDIO = "audio_order"
let INVOICE_WEBINAR = "webinar_order"
let INVOICE_DELIVERY = "delivery_order"
let INVOICE_REVISION = "revision_order"
let INVOICE_PRICE = "price_order"

let formatDate_Time: String = "yyyy-MM-dd HH:mm:ss"//yyyy-MM-dd HH:mm:ss
let nc = NotificationCenter.default
let defaults = UserDefaults.standard
//---------------- * PAYU MONEY *--------------

let MERCHENT_ID = "6612396"
let MERCHENT_KEY = "0MIVujbg"
let MERCHENT_SALT = "Ao7rAfEbnZ"

let themeColor = UIColor(red: 227.0/255.0, green: 125.0/255.0, blue: 48.0/255.0, alpha: 1.0)
let themeColor_blue = UIColor(red: 0/255.0, green: 174.0/255.0, blue: 239.0/255.0, alpha: 1.0)


let GreenColor = UIColor( red: CGFloat(33/255.0), green: CGFloat(174/255.0), blue: CGFloat(80/255.0), alpha: CGFloat(1.0))
let RedColor = UIColor(red: 226.0/255.0, green: 43.0/255.0, blue: 40.0/255.0, alpha: 1.0)

// Screen width.
public var screenWidth: CGFloat {
    return UIScreen.main.bounds.width
}

// Screen height.
public var screenHeight: CGFloat {
    return UIScreen.main.bounds.height
}


enum ErrorBank: Error {
    case insufficientFunds
    case invalidTransaction
    case duplicateTransaction
    case unknown
}

public enum DefaultStyle {

    public enum Colors {

        public static let label: UIColor = {
            if #available(iOS 13.0, *) {
                return UIColor.label
            } else {
                return .black
            }
        }()
    }
}


func replace(myString: String, _ index: Int, _ newChar: Character) -> String {
    var chars = Array(myString)     // gets an array of characters
    chars[index] = newChar
    let modifiedString = String(chars)
    return modifiedString
}

let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!


func localFilePath(for url: URL) -> URL {
   return documentsPath.appendingPathComponent(url.lastPathComponent)
 }

//------------------ Code for OTP ----------------
protocol MyTextFieldDelegate: class {
    func textFieldDidDelete()
}

//func isValidEmail(emailStr:String) -> Bool {
//    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//    return emailPred.evaluate(with: emailStr)
//}

var str_UserID : String?
func getUserID()->String{
    if let str_UserID = (UserDefaults.standard.value(forKey: USER_ID_LOGIN) as? String){
    return str_UserID
    }
    else{
        return ""
    }
}

var str_Token : String?
func getToken()->String{
    if let str_Token1 = UserDefaults.standard.value(forKey: LOGIN_TOKEN) as? String{
        return str_Token1
    }
    else{
        return ""
    }
}

var str_Email : String?
func getEmail()->String{
    if let str_Email = (UserDefaults.standard.value(forKey: EMAIL) as? String){
        return str_Email
    }
    else{
        return ""
    }
}

var str_Mobile : String?
func getMobile()->String{
    if let str_Mobile = (UserDefaults.standard.value(forKey: MOBILE) as? String){
        return str_Mobile
    }
    else{
          return ""
      }
}

var str_UserName : String?
func getUserName()->String{
    if let str_UserName = (defaults.value(forKey: USER_NAME) as? String){
        return str_UserName
    }
    else{
          return ""
      }
}

var str_rating : String = "0"
func getRating()->String{
    if (defaults.value(forKey: "rating") as? String) != nil{
        str_rating = defaults.value(forKey: "rating") as! String
    }
    return str_rating
}

var str_rating_count : String = "0"
func getRating_count()->String{
    if let rating_count = (defaults.value(forKey: "ratingcount") as? String){
        str_rating_count = rating_count
    }
    return str_rating_count
}

var arr_DefaultImage = ["https://res.cloudinary.com/rozgaarindia/image/upload/v1566309940/categorysample/gwqpitvvcivrq3964sba.jpg","https://res.cloudinary.com/rozgaarindia/image/upload/v1566366566/categorysample/toads9mphrpxe6pkhyph.jpg","https://res.cloudinary.com/rozgaarindia/image/upload/v1566310021/categorysample/jndtrm7ehfihfdiyei4y.jpg","https://res.cloudinary.com/rozgaarindia/image/upload/v1566366656/categorysample/sdnjkkszilblwxsgfy9q.jpg","https://res.cloudinary.com/rozgaarindia/image/upload/v1566310083/categorysample/jj0qhlxkg1buebzoenf0.jpg","https://res.cloudinary.com/rozgaarindia/image/upload/v1566366732/categorysample/d3nsikwrlbbxwkjpmz2r.jpg","https://res.cloudinary.com/rozgaarindia/image/upload/v1566366812/categorysample/sgegw7nhxudmyr6ucagt.jpg","https://res.cloudinary.com/rozgaarindia/image/upload/v1580119138/categorysample/more_category_image_anwjaw.jpg","https://res.cloudinary.com/rozgaarindia/image/upload/v1580119233/categorysample/programming_tech_category_image_gwauic.jpg","https://res.cloudinary.com/rozgaarindia/image/upload/v1580119294/categorysample/graphic_design_category_image_aolhmc.jpg","https://res.cloudinary.com/rozgaarindia/image/upload/v1580119359/categorysample/lifestyle_category_image_xrb75p.jpg","https://res.cloudinary.com/rozgaarindia/image/upload/v1580119434/categorysample/business_consultancy_category_image_fwd2sz.jpg","https://res.cloudinary.com/rozgaarindia/image/upload/v1580119597/categorysample/music_video_category_image_vwijre.jpg","https://res.cloudinary.com/rozgaarindia/image/upload/v1580130167/categorysample/video_animation_category_image_da9psx.jpg"]

let arr_video_format = ["wmv", "mp4", "avi", "mov"]
let arr_audio_format = ["mp3", "wav"]
let arr_image_format = ["png", "jpg", "jpeg", "gif"]
let arr_docs_format = ["xlsx", "xls", "txt", "pdf", "pptx","docx","doc","ppt","3gpp"]
let arr_zip_format = ["csv","wma","rar","zip"]

//'jpg|png|mp3|mp4|3gp|pdf|doc|docx|xlsx|xls|zip|txt|wma|text|rar|ppt|pptx|csv|3gpp|m4a|wmv|avi|mov|wav|gif';

let arr_category = ["Pay less Get more. Extraordinary design by our great creators", "jpg", "jpeg", "gif"]

let arr_categories_header = ["Graphic & Design":"Pay less Get more. Extraordinary design by our great creators",
    "Programming & Tech":"Get Professional Technical services in one click, paying per task & getting things done Real Quick!",
    "Business & Consultancy":"Be at the Top of your game with our Professional Development, Consulting, Advising & Training services",
    "Music & Video":"Express Your BIG Ideas, Draw Attention & Inspire. Bring your ideas to life with our video & animation services",
    "Music & Audio":"Express Your BIG Ideas, Draw Attention & Inspire. Bring your ideas to life with our video & animation services",
    "Video & Animation":"Express Your BIG Ideas, Draw Attention & Inspire. Bring your ideas to life with our video & animation services",
    "Lifestyle":"Personalised services to make your life beautiful",
    "More":"Lots of other online service to ease up your work & personal life"]
//Video & Animation

var color1 = hexStringToUIColor(hex: "#ffebee")
var color2 = hexStringToUIColor(hex: "#e3f2fd")
var color3 = hexStringToUIColor(hex: "#f9fbe7")
var color4 = hexStringToUIColor(hex: "#eeeeee")
var color5 = hexStringToUIColor(hex: "#f3e5f5")
var color6 = hexStringToUIColor(hex: "#0099cc")

let msgThemeColor : UIColor = color6// UIColor(hexString: "0099cc")

var arr_DefaultColors = [color1,color2,color3,color4,color5]

func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

//------------- For country code ---------------
func flag(country:String) -> String {
    let base : UInt32 = 127397
    var s = ""
    for v in country.unicodeScalars {
        s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
    }
    return String(s)
}

// 1. subclass UITextField and create protocol for it to know when the backButton is pressed
class MyTextField: UITextField {
    
    weak var myDelegate: MyTextFieldDelegate? // make sure to declare this as weak to prevent a memory leak/retain cycle
    override func deleteBackward() {
        super.deleteBackward()
        myDelegate?.textFieldDidDelete()
    }
    // when a char is inside the textField this keeps the cursor to the right of it. If the user can get on the left side of the char and press the backspace the current char won't get deleted
    override func closestPosition(to point: CGPoint) -> UITextPosition? {
        let beginning = self.beginningOfDocument
        let end = self.position(from: beginning, offset: self.text?.count ?? 0)
        return end
    }
}



func heightForView(text:String, font:UIFont, width:CGFloat) -> CGFloat{
    let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
    label.numberOfLines = 0
    label.lineBreakMode = NSLineBreakMode.byWordWrapping
    label.font = font
    label.text = text
    label.sizeToFit()
    return label.frame.height
}

func widthForView(text:String, font:UIFont) -> CGRect{
    let label = UILabel()
    label.text = text
    label.textAlignment = .center
    label.font = font
    label.frame = CGRect(x:0,y:0,width:label.intrinsicContentSize.width,height:label.intrinsicContentSize.height)
    return label.frame
}

func universalWhite() -> UIColor {
  let defaults = UserDefaults.standard
  let darkMode = defaults.bool(forKey: "darkMode")
  if darkMode {
      return .black
  } else {
      return .white
   }
}



func array_to_string(str :String ,index : Int )->String{
    var result_str:String!
    var arr = str.components(separatedBy: " ")
    result_str = arr[index]
    return result_str
}


// MARK: - Method to convert JSON String into Dictionary
func convertToDictionary(text: String) -> [String: Any]? {
    if let data = text.data(using: .utf8) {
        do {
            return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        } catch {
//            print(error.localizedDescription)
        }
    }
    return nil
}



class CheckBoxButton: UIButton {
    
    // Images
    let checkedImage = UIImage(named: "checked")! as UIImage
    let uncheckedImage = UIImage(named: "unchecked")! as UIImage
    
    // Bool property
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(uncheckedImage, for: .normal)
            } else {
                self.setImage(checkedImage, for: .normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.isUserInteractionEnabled = false
        //        self.addTarget(self, action: #selector(CheckBoxButton.buttonClicked(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        //        self.isChecked = false
    }
    
    func buttonClicked(sender: UIButton) {
        if sender == self {
            if isChecked == true {
                isChecked = false
            } else {
                isChecked = true
            }
        }
    }
    
}

extension Date {
    
    func isEqualTo(_ date: Date) -> Bool {
        return self == date
    }
    
    func isGreaterThan(_ date: Date) -> Bool {
        return self > date
    }
    
    func isSmallerThan(_ date: Date) -> Bool {
        return self < date
    }
    
    
}




extension Int{
    func stringToInt(str:String)->Int{
        let num:Int? = Int(str)
        return num!
    }
}

extension UIView{
    func addGradient(){
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [UIColor(red: 146/255.0, green: 108/255.0, blue: 208/255.0, alpha: 1.0).cgColor, UIColor(red: 238/255.0, green: 63/255.0, blue: 119/255.0, alpha: 1.0).cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        self.layer.insertSublayer(gradient, at: 0)
    }
    
    func addGradient_withBlue(){
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [themeColor.cgColor, UIColor(red: 238/255.0, green: 63/255.0, blue: 119/255.0, alpha: 1.0).cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        self.layer.insertSublayer(gradient, at: 0)
    }
    
    func fadeIn(_ duration: TimeInterval = 1.0, delay: TimeInterval = 4.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: completion)  }
    
    func fadeOut(_ duration: TimeInterval = 1.0, delay: TimeInterval = 4.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 0.0
        }, completion: completion)
    }
    
    func MyToast(){
        let label = UILabel(frame: CGRect(x:0, y:self.frame.size.height / 2, width:220, height:40))
        label.backgroundColor = UIColor.red
        label.center = self.center
        label.textAlignment = NSTextAlignment.center
        label.clipsToBounds  = true
        label.layer.cornerRadius = 10
        label.textColor = UIColor.white
        self.addSubview(label)
        label.fadeIn(completion: {
            (finished: Bool) -> Void in
            label.text = "Network Unavailble !"
            label.fadeOut()
        })
    }
    
    func addShadow(color:UIColor){
        layer.shadowRadius = 2.0
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.init(width: 0, height:0)//CGSize.zero
    }
    func addSideShadow(color:UIColor){
        layer.shadowRadius = 2.0
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.init(width: 1.5, height: 1.5)//CGSize.zero
    }
    func addShadowWithExtraWidth(color:UIColor){
        layer.shadowRadius = 4.0
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.init(width: 3, height:3)//CGSize.zero
    }
    
}


extension UIDatePicker {
    
    func setDate(from string: String, format: String, animated: Bool = true) {
        
        let formater = DateFormatter()
        
        formater.dateFormat = format
        
        let date = formater.date(from: string) ?? Date()
        
        setDate(date, animated: animated)
    }
}

extension UIView {
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}


//func showAlert_banner(msg:String,bgColor:UIColor,type:String){
//    let strMessage = msg
//    let banner: Banner
//    if type == "success" {
//        banner = Banner(title: "Succes", subtitle: strMessage, image: UIImage(named: "approved"), backgroundColor: bgColor)
//    }
//    else{
//        banner = Banner(title: "Alert", subtitle: strMessage, image: UIImage(named: "rejected"), backgroundColor: bgColor)
//    }
//    banner.dismissesOnTap = true
//    banner.show(duration: 3.0)
//}


extension UIView {
    func roundCorners_AtTop( radius: CGFloat) {
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
        if #available(iOS 11.0, *) {
            self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        } else {
            let corners = CACornerMask()
            var cornerMask = UIRectCorner()
                 if(corners.contains(.layerMinXMinYCorner)){
                     cornerMask.insert(.topLeft)
                 }
                 if(corners.contains(.layerMaxXMinYCorner)){
                     cornerMask.insert(.topRight)
                 }
//                 if(corners.contains(.layerMinXMaxYCorner)){
//                     cornerMask.insert(.bottomLeft)
//                 }
//                 if(corners.contains(.layerMaxXMaxYCorner)){
//                     cornerMask.insert(.bottomRight)
//                 }
                 let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: cornerMask, cornerRadii: CGSize(width: radius, height: radius))
                 let mask = CAShapeLayer()
                 mask.path = path.cgPath
                 self.layer.mask = mask
            
        }
    }
}


extension UIImageView {
    func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit) {  // for swift 4.2 syntax just use ===> mode: UIView.ContentMode
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                self.image = image
            }
        }.resume()
    }
    func downloaded(from link: String, contentMode mode: UIView.ContentMode = .scaleToFill) {  // for swift 4.2 syntax just use ===> mode: UIView.ContentMode
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}
extension Data {
    var html2AttributedString: NSAttributedString? {
        do {
            return try NSAttributedString(data: self, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
//            print("error:", error)
            return  nil
        }
    }
    var html2String: String {
        return html2AttributedString?.string ?? ""
    }
}


extension DispatchQueue {
    
    static func background(delay: Double = 0.0, background: (()->Void)? = nil, completion: (() -> Void)? = nil) {
        DispatchQueue.global(qos: .background).async {
            background?()
            if let completion = completion {
                DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: {
                    completion()
                })
            }
        }
    }
}

extension String {
    
        func isValidEmail() -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailPred.evaluate(with: self)
        }
        
        var isAlphanumeric: Bool {
            return range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil
        }
        var isNumeric_not: Bool {
               return range(of: "[0-9]", options: .regularExpression) == nil
           }
        
        var html2AttributedString: NSAttributedString? {
            return Data(utf8).html2AttributedString
        }
        var html2String: String {
            return html2AttributedString?.string ?? ""
        }
        
        func date_to_CreatedAt()->String{
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = formatDate_Time
          
            var date  = Date()
            if dateFormatter.date(from: self) != nil {
                date = dateFormatter.date(from: self)!
            } else {
                // invalid format
            
            }
            let interval = Calendar.current.dateComponents([.year, .month, .day], from: date, to: Date())
            
            if let year = interval.year, year > 0 {
                return year == 1 ? "\(year)" + " " + "year ago" :
                    "\(year)" + " " + "years ago"
            } else if let month = interval.month, month > 0 {
                return month == 1 ? "\(month)" + " " + "month ago" :
                    "\(month)" + " " + "months ago"
            } else if let day = interval.day, day > 0 {
                return day == 1 ? "\(day)" + " " + "day ago" :
                    "\(day)" + " " + "days ago"
            } else if let hour = interval.hour, hour > 0 {
                return hour == 1 ? "\(hour)" + " " + "day ago" :
                    "\(hour)" + " " + "hour ago"
            }
            else if let minute = interval.minute, minute > 0 {
                return minute == 1 ? "a moment ago" :
                    "\(minute)" + " " + "minute ago"
            }
            else{
                return self
            }
        }
        
        func date_chat_section()->String{
           let dateFormatter = DateFormatter()
               dateFormatter.dateFormat = "yyyy-mm-dd"
              dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX

            var date = Date()
       
            if dateFormatter.date(from: self) != nil {
                  date = dateFormatter.date(from: self)!
              } else {
                  // invalid format
                #if DEBUG
    //            print("invalid format")
                #endif
              }

            var resultString : String = self
            let interval = Calendar.current.dateComponents([.year, .month, .day], from: date, to: Date())
            if let day = interval.day, day == 1{
                resultString = "Yesterday"
            }
            else if let day = interval.day, day == 0 {
                resultString = "Today"
            }
//            let calendar = Calendar.current
//            if calendar.isDateInYesterday(date){
//                resultString = "Yesterday"
//            }
//            else if calendar.isDateInToday(date){
//                resultString = "Today"
//            }
            else{
                dateFormatter.dateFormat = "dd MMM, yyyy"
                resultString =  dateFormatter.string(from: date as Date)
            }
            return resultString
        }

        
         func convertDateFormater(date : NSDate) -> String
        {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = formatDate_Time
            //           let date = dateFormatter.date(from: self)
            dateFormatter.dateFormat = "dd MMM, yyyy"
            return  dateFormatter.string(from: date as Date)
        }

        
         func convertDateFormater_DDMMYYYY() -> String
        {
            let dateFormatter = DateFormatter()
                 dateFormatter.dateFormat = "dd MMM, yyyy"
                 var previous = Date()
                 if dateFormatter.date(from: self) != nil {
                     previous = dateFormatter.date(from: self)!
                 }
               dateFormatter.dateFormat = "dd/MM/yyyy"
               if dateFormatter.string(from: previous) != nil{
                 return  dateFormatter.string(from: previous)
               }
               else{
                 return self
               }
        }
        
        
        func convertDateFormater_MMMM_DD_YYYY() -> String
        {
            let dateFormatter = DateFormatter()
              dateFormatter.dateFormat = formatDate_Time
              var previous = Date()
              if dateFormatter.date(from: self) != nil {
                  previous = dateFormatter.date(from: self)!
              }
            dateFormatter.dateFormat = "MMM dd, yyyy"
            if dateFormatter.string(from: previous) != nil{
              return  dateFormatter.string(from: previous)
            }
            else{
              return self
            }
        }
    
    func am_pm()->String{
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        var date  = Date()
        if formatter.date(from: self) != nil {
            date = formatter.date(from: self)!
        } else {
            // invalid format
        }
        formatter.dateFormat = "h:mm a"
        if formatter.string(from: date) != nil{
            return  formatter.string(from: date)
        }
        else{
            return self
        }
    }
    
    func am_pm_withFormaater()->String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        formatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX

        var date  = Date()
        if formatter.date(from: self) != nil {
            date = formatter.date(from: self)!
            print("OK")
        } else {
            // invalid format
            date = formatter.date(from: self)!

            print("invalid format")

        }
        formatter.dateFormat = "h:mm a"
//        print("self date",self)
//        print("date",formatter.string(from: date))
        if formatter.string(from: date) != nil{
            return  formatter.string(from: date)
        }
        else{
            return self
        }
    }
    
    var isNumber: Bool {
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
    
  func toDate(withFormat format: String = "yyyy-MM-dd HH:mm:ss Z") -> Date {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    guard let date = dateFormatter.date(from: self) else {
      preconditionFailure("Take a look to your format")
    }
    return date
  }
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

extension UISearchBar {

    var textField : UITextField? {
        if #available(iOS 13.0, *) {
            return self.searchTextField
        } else {
            // Fallback on earlier versions
            for view : UIView in (self.subviews[0]).subviews {
                if let textField = view as? UITextField {
                    return textField
                }
            }
        }
        return nil
    }
}


extension UIImageView {
//1 st option
    func setCustomImage(_ imgURLString: String?) {
        guard let imageURLString = imgURLString else {
            self.image = UIImage(named: "placeholder_user")
            return
        }
        DispatchQueue.global().async { [weak self] in
            let data = try? Data(contentsOf: URL(string: imageURLString)!)
            DispatchQueue.main.async {
                self?.image = data != nil ? UIImage(data: data!) : UIImage(named: "placeholder_user")
            }
        }
    }
    
    //2nd option
        func load(url: URL) {
            DispatchQueue.global().async { [weak self] in
                if let data = try? Data(contentsOf: url) {
                    if let image = UIImage(data: data) {
                        DispatchQueue.main.async {
                            self?.image = image
                        }
                    }
                }
            }
        }
    
    //------------- 3rd Option --------------
    
    func dowloadFromServer(url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
           contentMode = mode
           URLSession.shared.dataTask(with: url) { data, response, error in
               guard
                   let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                   let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                   let data = data, error == nil,
                   let image = UIImage(data: data)
                   else { return }
               DispatchQueue.main.async() {
                   self.image = image
               }
               }.resume()
       }
    func dowloadFromServer(link: String, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
           guard let url = URL(string: link) else { return }
           dowloadFromServer(url: url, contentMode: mode)
       }
}

//----------- Paste the following code -------------

//let url = URL(string: arr[indexPath.row] as! String)
//if url != nil {
//    DispatchQueue.global().async {
//        let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
//        DispatchQueue.main.async {
//            if data != nil {
//                cell.imgView.image = UIImage(data:data!)
//            }else{
//                cell.imgView.image = UIImage(named: "default.png")
//            }
//        }
//    }
//}
class TestButton: UIButton, UIKeyInput {

    var hasText: Bool = true

    override var textInputContextIdentifier: String? { "" } // return non-nil to show the Emoji keyboard ¯\_(ツ)_/¯

    func insertText(_ text: String) {
        #if DEBUG
//        print("\(text)")
        #endif

    }

    func deleteBackward() {}

    override var canBecomeFirstResponder: Bool { return true }

    override var canResignFirstResponder: Bool { return true }

    override var textInputMode: UITextInputMode? {
        for mode in UITextInputMode.activeInputModes {
            if mode.primaryLanguage == "emoji" {
                return mode
            }
        }
        return nil
    }
}


extension UITableView
{
    func indexPathExists(indexPath:IndexPath) -> Bool {
        if indexPath.section >= self.numberOfSections {
            return false
        }
        if indexPath.row >= self.numberOfRows(inSection: indexPath.section) {
            return false
        }
        return true
    }
}


struct Constants {
    static let actionFileTypeHeading = "Add a File"
    static let actionFileTypeDescription = "Choose a filetype to add..."
    static let camera = "Camera"
    static let phoneLibrary = "Phone Library"
    static let video = "Video"
    static let file = "File"
    
    
    static let alertForPhotoLibraryMessage = "App does not have access to your photos. To enable access, tap settings and turn on Photo Library Access."
    
    static let alertForCameraAccessMessage = "App does not have access to your camera. To enable access, tap settings and turn on Camera."
    
    static let alertForVideoLibraryMessage = "App does not have access to your video. To enable access, tap settings and turn on Video Library Access."
    
    
    static let settingsBtnTitle = "Settings"
    static let cancelBtnTitle = "Cancel"
    
}

extension Float {
    var clean: String {
       return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}


extension Double {
    func string(maximumFractionDigits: Int = 2) -> String {
        let s = String(format: "%.\(maximumFractionDigits)f", self)
        for i in stride(from: 0, to: -maximumFractionDigits, by: -1) {
            if s[s.index(s.endIndex, offsetBy: i - 1)] != "0" {
                return String(s[..<s.index(s.endIndex, offsetBy: i)])
            }
        }
        return String(s[..<s.index(s.endIndex, offsetBy: -maximumFractionDigits - 1)])
    }
}


