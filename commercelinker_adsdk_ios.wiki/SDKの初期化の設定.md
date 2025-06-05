アプリ起動時の初期化において、各種設定が可能です。
### 環境変数 (CLADEnvironment)
テスト、リリースなどに応じて設定をします。SDKの接続先URLなどが決定されます。

(デフォルト設定は`.production`で、こちらを選択してください。他の環境は、弊社のSDK開発のテストにて利用されます。)
本番環境(.production)は、アプリのリリース時、貴社との結合テスト時に利用します。

実装例
```
CLADConstant.setEnvironment(env: .production)
```

***

### 全般設定 (CLADConfig)
アプリ全体のSDKにて利用される設定情報です。
* サイトコード (siteCode) ： 弊社が連携した値を入力してください。
* デバッグフラグ (debug) ：　デバッグを有効にするかどうかを設定します。(trueの場合、error, warning時にログが落ちます。デフォルト設定：false)
* リワードID (rewardId) ：　リワード広告にて利用されます。媒体訪問者を一意に特定する値を設定します。(ユーザがトラッキングを許可していない場合、値が設定されません。)
* 広告ID利用フラグ (useAdId) ：　広告IDを取得するかどうかを設定します。広告IDは広告配信の最適化に利用されます。(デフォルト設定：true)

リワードIDは、初期化後に再設定が可能です。

全般設定には、他にも設定可能な項目がありますが、未設定にしてください。

また、全般設定の初期化時に、Appleの広告識別子（IDFA）とiOS端末のベンダー識別子(IDFV)を取得しています。これは、広告配信の最適化や広告の効果計測に用いられます。(※ ユーザがアプリのトラッキングの許可をした場合のみ、IDFAを取得します。)

実装例
```
CLADConfig.shared.initialize(siteCode: "xxxxx", debug: true)

CLADConfig.shared.setUserCode(userCode: "xxxxx")
CLADConfig.shared.setRewardId(rewardId: "xxxxx")
```