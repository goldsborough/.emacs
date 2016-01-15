;; MELPA


(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; Added by Emacs

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-matching-delay 0.1)
 '(blink-matching-paren t)
 '(custom-enabled-themes (quote (molokai)))
 '(custom-safe-themes
	 (quote
	 ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "b04425cc726711a6c91e8ebc20cf5a3927160681941e06bc7900a5a5bfe1a77f" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "aed73c6d0afcf2232bb25ed2d872c7a1c4f1bda6759f84afc24de6a1aec93da8" "d69a0f6d860eeff5ca5f229d0373690782a99aee2410a3eed8a31332a7101f1e" "9567c8b113a53efdf4e7f3ab47564cb44b27ee231ece20811bb191698b1b8b6b" "c70cc9c4c6257d70f5c11b90cb9e8b1e54e6edd6aa43f39879746e16a70533f5" "03e3e79fb2b344e41a7df897818b7969ca51a15a67dc0c30ebbdeb9ea2cd4492" "16d6e7f87846801e17e0c8abc331cf6fa55bec73185a86a431aca6bec5d28a0a" "94ba29363bfb7e06105f68d72b268f85981f7fba2ddef89331660033101eb5e5" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "040eab9c119c33f184e9fd21290ecea9691efc807a89c328e12a50d3a0fe60f8" default)))
 '(display-time-24hr-format t)
 '(display-time-day-and-date nil)
 '(display-time-format nil)
 '(fancy-battery-show-percentage t)
 '(fci-rule-character-color "red")
 '(fill-column 80)
 '(hl-outward-paren-bg-colors (quote ("brightred")))
 '(hl-outward-paren-fg-colors nil)
 '(indent-guide-global-mode t)
 '(powerline-default-separator (quote wave))
 '(powerline-height nil)
 '(rm-blacklist ".*")
 '(show-paren-mode t)
 '(show-paren-ring-bell-on-mismatch t)
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-skip-other-window-p nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fancy-battery-critical ((t (:inherit red))))
 '(indent-guide-face ((t (:foreground "cyan"))))
 '(linum-highlight-face ((t (:inherit default :background "#1B1D1E" :foreground "#1B1D1E"))))
 '(show-paren-match ((t (:foreground "red" :background "#1B1D1E"))))
 '(show-paren-mismatch ((t (:foreground "red" :background "red"))))
 '(spaceline-unmodified ((t (:background "DarkGoldenrod2" :foreground "black" :inherit (quote mode-line))))))
;; Homebrew support for emacs packages

(let ((default-directory "/usr/local/share/emacs/site-lisp/"))
    (normal-top-level-add-subdirs-to-load-path))

;; Markdown-mode

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; linum

(setq linum-format "%d ")
(global-linum-mode t)

(hlinum-activate)

;; yasnippet

 (add-hook 'c++-mode-hook (lambda () (yas-global-mode 1)))

;; autocomplete

(add-hook 'c++-mode-hook
	  (lambda () (ac-config-default)
	  (ac-set-trigger-key "TAB")
	  (ac-set-trigger-key "<tab>")))

;; Helm

(require 'helm)
(require 'helm-config)

(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(when (executable-find "curl")
	(setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
			helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
			helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
			helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
			helm-ff-file-name-history-use-recentf t)

(helm-mode 1)

;; company

(add-hook 'after-init-hook 'global-company-mode)

;; remove trailing white space from buffer

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; remove trailing newlines

(defun my-other-delete-trailing-blank-lines ()
  "Deletes all blank lines at the end of the file, even the last one"
  (interactive)
  (save-excursion
    (save-restriction
      (widen)
      (goto-char (point-max))
      (delete-blank-lines)
      (let ((trailnewlines (abs (skip-chars-backward "\n\t"))))
	(if (> trailnewlines 0)
	    (progn
	                            (delete-char trailnewlines)))))))

;; clang-format on save

(add-hook 'c++-mode-hook
	  (lambda () (add-hook 'before-save-hook 'clang-format-buffer  nil 'local)))

;; semantic parser

(add-hook 'c++-mode-hook (lambda() (semantic-mode 1)))

;; C-a moves to start of indentation if possible, else to start of line

(defun smart-line-beginning ()
    "Move point to the beginning of text on the current line; if that is already
the current position of point, then move it to the beginning of the line."
    (interactive)
    (let ((pt (point)))
      (beginning-of-line-text)
      (when (eq pt (point))
	      (beginning-of-line))))

(global-set-key (kbd "C-a") 'smart-line-beginning)

;; Enable Anzu

(global-anzu-mode +1)

;; Always use RegEx search

(global-set-key (kbd "C-r") 'anzu-query-replace-regexp)

;; erase whole buffer
;; also works with C-x h + DEL
(global-set-key (kbd "C-x DEL") 'erase-buffer)

;; sr-speedbar

(global-set-key (kbd "C-q") 'sr-speedbar-toggle)

;; header-file completion

(eval-after-load "global-company-mode"
    (lambda()
    (add-to-list 'company-backends 'company-c-headers)
    (add-to-list 'company-c-headers-path-system "/usr/include/c++/5.3.0/")))

;; default indentation settings

(setq-default c-basic-offset 2 c-default-style "linux")
(setq-default tab-width 2)
(eval-after-load 'c++-mode
	(lambda()
		(define-key c++-mode-map (kbd "RET") 'newline-and-indent)))

;; srefactor

(add-hook 'c++-mode-hook
					(lambda()
						(define-key c++-mode-map (kbd "M-r") 'srefactor-refactor-at-point)))

;; autopair

(require 'autopair)

(autopair-global-mode) ;; enable autopair in all buffers

;; goto-line

(global-set-key (kbd "M-g") 'goto-line)

;; fci-mode

(add-hook 'after-change-major-mode-hook 'fci-mode)

;; show-paren-mode

(setq show-paren-delay 0)
(show-paren-mode 1)

;; mode line

(display-time-mode 1)
(column-number-mode 1)
(display-battery-mode 1)

(setq powerline-arrow-shape 'wave)
(setq powerline-default-separator-dir '(right . left))

(require 'spaceline-config)

(spaceline-emacs-theme)
(spaceline-helm-mode)
(spaceline-toggle-minor-modes-off)

(fancy-battery-mode)

;; indentation higlighting

(require 'highlight-indentation)

(add-hook 'c++-mode-hook 'highlight-indentation-mode)
(add-hook 'c++-mode-hook 'highlight-indentation-current-column-mode)

;; auto-fill-mode

(setq-default auto-fill-function 'do-auto-fill)
