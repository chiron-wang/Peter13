import UIKit

//"穿者拖鞋逛夜市，拿出百元買臭豆腐，吃飽才有力氣寫App"
//"，來到台灣爬上台北101寫出87個App，從此帶者彩虹過者美麗人生"
let strs = ["穿者", "逛", "，拿出", "買", "，吃飽才有力氣寫App"]
let imageNames = [
    "Blue-and-whie_Slippers_250x250",
    "Night_Market_250x250",
    "NTD_250x250",
    "Stinky_Tofu_250x250"]

let content = NSMutableAttributedString(string: "")
let textAttachment1 = NSTextAttachment()
textAttachment1.image = UIImage(named: "87_Points_250x250")
textAttachment1.bounds = CGRect(x: 0, y: 0, width: 30, height: 30)

for i in 0 ..< imageNames.count {
    let textAttachment = NSTextAttachment()
    textAttachment.image = UIImage(named: imageNames[i])
    textAttachment.bounds = CGRect(x: 0, y: -10, width: 30, height: 30)
    content.append(NSAttributedString(string: strs[i]))
    content.append(NSAttributedString(attachment: textAttachment))
}
// add end str
content.append(NSAttributedString(string: strs[strs.count - 1]))

let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
label.numberOfLines = 0
label.attributedText = content

label
