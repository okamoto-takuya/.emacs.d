
;; パッケージ管理ステム
;; 2012-03-15
;; (add-to-list 'load-path "~/.emacs.d/el-get/el-get")
;; (unless (require 'el-get nil t)
;;   (with-current-buffer
;;       (url-retrieve-synchronously
;;        "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
;;     (end-of-buffer)
;;     (eval-print-last-sexp)))

;; レシピ置き場
;; (add-to-list 'el-get-recipe-path
;;              (concat (file-name-directory load-file-name) "/el-get/recipes"))
;; 追加のレシピ置き場
;; (add-to-list 'el-get-recipe-path
;;              "~/.emacs.d/config/el-get/local-recipes")


;;; 自動補完
;; (el-get 'sync '(auto-complete))
;; (add-hook 'auto-complete-mode-hook
;;           (lambda ()
;;             (define-key ac-completing-map (kbd "C-n") 'ac-next)
;;             (define-key ac-completing-map (kbd "C-p") 'ac-previous)))


;; 追加の設定をロード
;; 個別の設定があったら読み込む
;; 2012-03-15
(condition-case err
    (load "config/packages/local")
  (error))
