http://www.clear-code.com/blog/2012/3/20.html

.emacs.d
|-- init.el                ;; 基本的な設定を記述
|-- local.el               ;; （カスタマイズ用）
|-- config                 ;; 特定のモードや非標準のElispの設定をこの下に置く
|   |-- builtins.el        ;; 標準Elispの設定
|   |-- builtins           ;; 標準Elispのうち、設定が多くなるものはこの下に置く
|   |   |-- local.el       ;; （カスタマイズ用）
|   |   `-- cc-mode.el     ;; （例）標準Elispであるcc-modeの設定
|   |-- packages.el        ;; 非標準Elispの設定
|   |-- packages           ;; 非標準Elispのうち、設定が多くなるものはこの下に置く
|   |   |-- local.el       ;; （カスタマイズ用）
|   |   `-- sdic.el        ;; （例）非標準Elispであるsdicの設定
|   `-- el-get             ;; el-getの設定はこの下に置く
|       |-- recipies       ;; el-getのレシピはこの下に置く
|       `-- local-recipies ;; （カスタマイズ用）
`-- el-get                 ;; el-get管理のパッケージをこの下に置く
