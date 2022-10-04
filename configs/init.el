;; Asthetics
(setq frame-background-mode 'dark)

;; Required pacakges
(package-initialize)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/")
	     t)
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/")
	     t)

(autoload 'package-pinned-packages "package")

(setq required-packages '(
			  (ag . "melpa-stable")
			  (cider . "melpa-stable")
			  (clojure-mode . "melpa-stable")
			  (magit . "melpa-stable")
			  (projectile . "melpa-stable")
			  (smex . "melpa-stable")
			  (yaml-mode . "melpa-stable")
			  ))

(defun intstall-required-packages ()
  (interactive)
  (mapc (lambda (package)
	  (message "%s" (car package))
	  (package-install (car package)))
	required-packages))

;; Be explicit to kill-emacs
(global-unset-key (kbd "C-x C-c"))
;; Don't send mail
(global-unset-key (kbd "C-x m"))
;; Set smex
;;(global-set-key (kbd "M-x") 'smex)
;; enable ag via minibuffer
(autoload 'ag/read-from-minibuffer "ag")

;; Org
;; (require 'org-tempo)

;; Custom
(custom-set-variables
 '(global-hl-line-mode t)
 '(global-whitespace-mode t)
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(org-todo-keywords
   (quote
    ((sequence "TODO" "IN_PROGRESS" "|" "DONE" "CANCELED")
     (sequence "DELEGATED" "|" "DONE" "CANCELED"))))
 '(package-selected-packages
   (quote
    (fireplace orgit dockerfile-mode cider clojure-mode org yaml-mode smex makdown-mode magit fixme-mode ag terraform-mode)))
 '(search-default-mode (quote char-fold-to-regexp))
 '(sentence-end-double-space nil)
 '(sh-basic-offset 2)
 '(whitespace-style
   (quote
    (face trailing tabs newline empty space-after-tab space-before-tab tab-mark)))
 '(winner-mode t))

(custom-set-faces
 '(match ((t (:inherit secondary-selection))))
 '(secondary-selection ((t (:extend t :background "yellow1" :foreground "white")))))
