## 概要
Commerce Linker AdSDKは、[バリューコマース株式会社](https://www.valuecommerce.co.jp/)のサービスの1つであるCommerce Linkerをネイティブアプリで運用するためのSDKです。このSDKは、Commerce Linkerの広告配信と効果計測のための情報連携を容易にするために用いられます。

## 確認済動作環境
* Xcode 16.2
* iOS 14.0 以降

## 広告フォーマット
最新バージョンのCommerce Linker AdSDK (v0.0.1)では、以下の広告種別、フォーマットに対応しています。
### 広告種別
* プロダクト広告 
* ブランド広告
* リワード広告
### フォーマット
* インライン広告  ([実装方法)](https://ghe.valuecommerce.com/sprk/commercelinker_adsdk_ios_distribution/wiki/%E3%82%A4%E3%83%B3%E3%83%A9%E3%82%A4%E3%83%B3%E5%BA%83%E5%91%8A%E3%81%AE%E8%A1%A8%E7%A4%BA)
* オーバーレイ広告  ([実装方法](https://ghe.valuecommerce.com/sprk/commercelinker_adsdk_ios_distribution/wiki/%E3%82%AA%E3%83%BC%E3%83%90%E3%83%BC%E3%83%AC%E3%82%A4%E5%BA%83%E5%91%8A%E3%81%AE%E8%A1%A8%E7%A4%BA))
* ネイティブ広告  ([実装方法](https://ghe.valuecommerce.com/sprk/commercelinker_adsdk_ios_distribution/wiki/%E3%83%8D%E3%82%A4%E3%83%86%E3%82%A3%E3%83%96%E5%BA%83%E5%91%8A))

## 導入方法
### Swift Package Manager
1. XcodeのFile > Add Package Dependencies...を選択する
2. 検索バーに以下のURLを入力し、利用するバージョンを選択してインストールする
   * 新しいプロジェクトの場合、最新のバージョンを推奨

```
https://github.com/valuecommerce/CommerceLinkerAdSDK_swift
```
### 手動
1. このリポジトリの[Releases](https://ghe.valuecommerce.com/sprk/commercelinker_adsdk_ios_distribution/releases)から、利用するバージョンのSDKのzipファイルをダウンロードする
2. zipファイルを展開し、利用するプロジェクトに導入する

## サンプルアプリの実行方法
1. 本リポジトリをcloneする
2. サンプルコード中のsiteCodeを弊社が連携した値に、adspaceIdをご利用者様のご要望に応じて発行した値に置き換える
3. 必要に応じて、検索キーワードや検索カテゴリIDを設定する
4. Commerce Linker AdSDKをプロジェクトに導入する
5. ビルドを実行する

***

iOS向けCommerce Linker AdSDKは、iOSデベロッパープログラムライセンス契約に記載されているガイドラインに従って、Appleの広告識別子（IDFA）とiOS端末のベンダー識別子(IDFV)を使用します。([バリューコマース株式会社 個人情報保護方針](https://www.valuecommerce.co.jp/privacy_policy/)) 

これは、広告配信の最適化や広告の効果計測に用いられます。
