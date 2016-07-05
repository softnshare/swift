// Playground - noun: a place where people can play

// You need import this for `UILabel`
import UIKit

var str = "Hello, playground"

var message1 = "Hello Swift! How can I get started?"
var message2 = "The best way to get started is to stop talking and code."

message1.uppercaseString
message2.lowercaseString + " Okay, I'm working on it 😐"

if message1 == message2 {
    print("Same message")
} else {
    print("Not the same message")
}

let messageLabel = UILabel(frame: CGRectMake(0, 0, 300, 50))
messageLabel.text = message1

messageLabel

messageLabel.backgroundColor = UIColor.orangeColor()
messageLabel.textAlignment = NSTextAlignment.Center

messageLabel.layer.cornerRadius = 10.0
messageLabel.clipsToBounds = true
messageLabel
