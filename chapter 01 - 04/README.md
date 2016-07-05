# Swift 讀書會 Week 1

* Chp 1 - 環境設定
* Chp 2 - Playground 教學
* Chp 3 - 第一個APP 與Xcode環境認識
* Chp 4 - 第一個APP的運作原理

---

# 操作環境

* OS X 10.11.5
* Xcode 7.3.1
* Swift 2.2 (Xcode 7.3.1 Default)

---

# Chapter 1

工具準備：
1. 一台Mac
2. 將你的Apple id[註冊](https://developer.apple.com/register/)為開發者帳號（如果你想在實機上run app）
3. 從App Store 安裝Xcode最新版（此文件中為7.3.1）
4. 如果想上架App，才需要Devloper program（一年 $99 美金）

---

# Chpater 2

從Objective C說起：
```
[self transitionFromViewController: firstVC toViewController: secondVC duration: 1.5 options: UIViewAnimationOptionRepeat animations: ^() { // do animation } completion: nil];
```
* 語法起源於「small talk」
* 超長的命名
* **必須**宣告每個變數與常數的型態
* 屬於「動態語言」(OS 10.5 之後)

---

# Swift的野望

* 追求更快，更現代，更安全的程式語言
* 是一個「靜態語言」(Statically Typed Language)
* 不一定要宣告變數型態(Type Inference)
* 吸收JS, Python 等現代語言的優點
* Optional的觀念，用於處理null（在Swift和OC用 `nil` )

---

# 語法比一比

```objc
const int count = 10;
double price = 23.55;

NSString *firstMessage = @"Swift is awesome. ";
NSString *secondMessage = @"What do you think?";
NSString *message = [NSString stringWithFormat:@"%@%@", firstMessage, secondMessage];

NSLog(@"%@", message);
NSLog([firstMessage isEqualToString: secondMessage] ? @"YES": @"NO");
```

```swift
let count = 10
var price = 23.55

let firstMessage = "Swift is awesome. "
let secondMessage = "What do you think?"
var message: String = firstMessage + secondMessage

print(message)
print(firstMessage == secondMessage)
```

---

# 通用的命名法則

* `UIViewController`: UI (framework縮寫，此為UIKit) + ViewController（型別名稱）
* 型別命名使用 upper camel case，例：`NSString`
* property命名使用 lower camel case，例：`firstMessage`

---

# 可變與不可變

In Objectiv-C:

* `NSArray` v.s. `NSMutableArray`
* Mutable 代表本身可變

In Swift：

* let：常數不可變（但若指向一個reference type對象，則對象內成員可變）
* var：本身為可變

```swift
let str = "abcd"
str = "efgh"    // 此行Compiler會丟error警告
```

---

# Playground

* 顧名思義，試語法的地方
* 類似Python或Javascript的 shell和console
* 每打一個字就compile & run
* [Demo範例檔]()
* [Swift 2 basic tutorial 範例](https://www.dropbox.com/s/8kgxig3cgr4z2v4/SwiftIntro.zip?dl=0)

---

# 小撇步
1. 在變數上按住「alt + 左鍵」點擊變數，會出現變數型別與宣告處
2. 在變數上按住「command + 左鍵」點擊變數，會跳到宣告變數的地方
3. 游標停留在型態宣告的地方，打開右側Utilites欄位，會出現Quick Help並顯示文件
![Quick Help](http://i.imgur.com/axlV2ij.png)

---

# Chapter 3

[Demo 程式檔](https://www.dropbox.com/s/m5ayco4iatiba8e/HelloWorld.zip?dl=0)
[Xcode環境介紹](https://itisjoe.gitbooks.io/swiftgo/content/more/interface_intro.html)

---

# Chpater 4

![code explaination](http://i.imgur.com/tviBqSL.png)

---

# UIControlEvent

![UIControlEvent](http://i.imgur.com/IOpCeAc.png)

---

# Target-Action

![target-action](http://i.imgur.com/BweCg86.jpg)

---

# Target-Action

* Target: `ViewController`
* Action: `helloMessage()` (由 TouchUpInside 啟動)

---

# self

* 代表現在（本身）這個instance 或 object
* 在Swift中，大多時候可以省略（但要清楚到底是 property 或 local variable)
* Capturing: 在Closure裡，不可以省略self（compiler會叫），另需特別處理以免發生retain cycle（closure時再說明）

---

# 執行App

1. compile: Swift為靜態語言，大多數行為在此確定，將code編譯為machine code
2. package: 其實也算compile的一個階段，將各種資源(images, text)
3. run: 在simulator上執行，程式的進入點為 `AppDelegate.swift`
