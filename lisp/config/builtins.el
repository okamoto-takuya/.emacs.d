;; スペルチェック
;; 2011-03-09
(setq-default flyspell-mode t)
(setq ispell-dictionary "american")

;; 2012-03-18
;; c-modeやc++-modeなどcc-modeベースのモード共通の設定
(add-hook
 'c-mode-common-hook
 (lambda ()
   ;; BSDスタイルをベースにする
   (c-set-style "bsd")

   ;; スペースでインデントをする
   (setq indent-tabs-mode nil)

   ;; インデント幅を2にする
   (setq c-basic-offset 2)

   ;; 自動改行（auto-new-line）と
   ;; 連続する空白の一括削除（hungry-delete）を
   ;; 有効にする
   (c-toggle-auto-hungry-state 1)

   ;; CamelCaseの語でも単語単位に分解して編集する
   ;; GtkWindow         => Gtk Window
   ;; EmacsFrameClass   => Emacs Frame Class
   ;; NSGraphicsContext => NS Graphics Context
   (subword-mode 1)))

;;; C++11のキーワードに対応
(defun c++-mode-hooks()
  (font-lock-add-keywords
   nil '(
	 ("\\<\\(alignof\\|alignas\\|constexpr\\|decltype\\|noexcept\\|nullptr\\|static_assert\\|thread_local\\|override\\|final\\)\\>" . 'font-lock-keyword-face)
	 )))
(add-hook 'c++-mode-hook 'c++-mode-hooks)



;; 追加の設定をロード
;; 個別の設定があったら読み込む
;; 2012-03-18
;; (condition-case err
;;     (load "config/builtins/local")
;;   (error))
