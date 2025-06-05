## コンバージョンAPI
効果計測を行うため、購買が発生した場合に情報の連携をお願いします。

## 実装方法
1. 購買された商品の商品コード(productCode)、購入数(count)、合計金額(amount)を購入商品情報として設定してください。
```
import SwiftUI
import CommerceLinkerAdSDK
...
var productInfos: [CLADPurchaseProductInfo] = []
productInfos.append(CLADPurchaseProductInfo(productCode: "sample_1", count: 1, amount: 200))
productInfos.append(CLADPurchaseProductInfo(productCode: "sample_2", count: 2, amount: 1000))
```
2. 関数を用いてコンバージョンAPIを呼び出してください。
```
CLADConversionCall(productInfos: productInfos, orderId: "xxxxxx")
```
注文ID(orderId)には注文ごとに一意の値を設定してください。

※未設定の場合は、不正操作時にコンバージョン計測が重複してしまう可能性があります。