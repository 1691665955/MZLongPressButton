# MZLongPressButton
MZLongPressButton是兼容长按与点击事件、类似购物车加减按钮的控件

<div align=center>
<img src="1.gif" width="300px" />
</div>

#### Cocoapods 引入
```
pod 'MZLongPressButton', '~> 0.0.1'
```

#### 使用
```
let minusBtn = MZLongPressButton(type: .custom)
minusBtn.frame = CGRect(x: 40, y: 100, width: 80, height: 40)
minusBtn.setTitle("-", for: .normal)
minusBtn.setTitleColor(.brown, for: .normal)
// 触发长按时间需要长按的时间
btn.timeStart = 0.3
// 出发长按事件后每隔多长时间执行longPress回调
btn.timeGap = 0.1
// 点击或长按事件回调
minusBtn.longPress = {
    // 长按连续触发
    print("我被点击了")
}
self.view.addSubview(minusBtn)
```
