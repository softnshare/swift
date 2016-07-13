# Swift 讀書會 Week 2
* Chp 5 - Auto Layout的介紹
* Chp 6 - 使用堆疊視圖設計UI

---

# Auto Layout的介紹

* Auto Layout是一個以約束條件為基礎的佈局系統（constraint-based layout system）
* 它讓開發者能夠開發一個能自我調整型的UI，可以依照螢幕的尺寸以及裝置的方向來調整。

---

# 現行iPhone各機型規格
![](https://i.imgur.com/vlekyyd.png)

---

* 2007，Apple推出的最原始iPhone，3.5英吋、320×480像素的畫面解析度的顯示器。

* 之後Apple推出了iPhone 4搭配視網膜（retina）顯示器。畫面的解析度變成兩倍到640×960像素。也就是一個點相對應兩個像素。

* 這些點與像素間的轉換工作，則由iOS處理。

---

* 以Hello World按鈕為例，如果要把它擺在視圖中間應會得到兩個約束條件：
水平置中
垂直置中
這些約束條件顯示了按鈕在介面中的佈局。

---

# 啟動尺寸類別
* 檔案檢閱器（File Inspector）中，勾選「Use Size Classes」功能來啟動它。提示出現後，點選「Enable Size Classes」來確認這個變更

---

# 兩種定義Auto Layout的方式

* Auto Layout選單。
* Control鍵加上拖曳。

* ![](https://i.imgur.com/6JZIm39.png)

每一個按鈕有它自己的功能：

Align – 建立對齊的約束條件，例如：對齊兩個視圖的左側。
Pin – 建立間距的約束條件，例如：訂出UI控制的寬度。
Issues – 解決佈局問題。
Stack – 視圖嵌入至堆疊視圖（stack view）。堆疊視圖是Xcode 7的新功能。

---

# 解決佈局約束條件問題

* 當有任何的佈局問題，文件大綱視圖會顯示出一個紅／橘色的揭露箭頭（disclosure arrow），按下這個揭露箭頭，你會看見問題清單。
* 介面建構器可以聰明地幫助我們解決佈局問題，點選問題旁邊的指示圖標，選取「Update Frame」選項，然後點選「Fix Misplacement」按鈕。按鈕便會移 到視圖中間。
* 另一種解決佈局的方式-Issue，如下圖所示
![](https://i.imgur.com/0glKXST.png)

---
# Storyboard預覽
* Xcode 7中，它提供開發者預覽（Preview）功能，讓開發者可以直接在Xcode中可以取得UI的預覽圖。

* 在介面建構器中，打開Assistant彈出式選單→Preview(1)，按住option鍵，然後點選「Main.storyboard(Preview)」。

* 點擊助理編輯器左下角的「+」按鈕來加入iOS裝置（例如：iPhone 4.7英吋）來閱覽。如果你想觀察在橫向方向的顯示狀態，只要點選旋轉按鈕即可。

---

# 頂部與底部佈局導引

* 底部佈局導引（Bottom Layout Guide）位置是以視圖底部為準

* 頂部佈局導引（Top Layout Guide），則從視圖最上方往下設定20點距離，也就是狀態欄（status bar）的高度

---

# 使用堆疊視圖設計UI

* 堆疊視圖提供一個簡化的介面，以行或列來佈局視圖的集合。在Keynote或者是微軟的Power Point，你可以將多個物件群組起來，讓它們可以使用一個單一物件來移動或調整大小。堆疊視圖提供了一個非常相似的功能。

* 這個堆疊視圖會管理它的子視圖（subview）的佈局，並且自動幫你採用佈局約束條件。這表示，這些子視圖準備適應各種不同螢幕尺寸。

---

# StackView Sample

* 排列方式
  UIStackViewDistributionFill -填滿StackView高度或寬度
  UIStackViewDistributionFillEqually -SubView平均分配高度或寬度
  UIStackViewDistributionFillProportionally -依據SubView高度或寬度分配
  UIStackViewDistributionEqualSpacing -SubView間之間距相等
  UIStackViewDistributionEqualCentering -SubView中心之間距相等

* https://youtu.be/o8J1SIWHk2Q





