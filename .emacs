;; Melpa

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
 '(ac-delay 0.1)
 '(blink-matching-delay 0.1)
 '(blink-matching-paren t)
 '(company-idle-delay 0.2)
 '(company-selection-wrap-around t)
 '(company-show-numbers t)
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
	 (quote
		("e8e744a1b0726814ac3ab86ad5ccdf658b9ff1c5a63c4dc23841007874044d4a" "d9b0d5c7077ddad798e9749d0629e86b925c2e146641b24130edd8f82cd0cf5d" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "519d1b3cb7345cc9be10b4b0489436ae2d1b0690470d8d78f8e4e1ff19b83a86" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "f2503f0a035c2122984e90eb184185769ee665de5864edc19b339856942d2d2d" "7c1e99f9d46c397b3fd08c7fdd44fe47c4778ab69cc22c344f404204eb471baa" "0ae52e74c576120c6863403922ee00340a3bf3051615674c4b937f9c99b24535" "7e346cf2cb6a8324930c9f07ce050e9b7dfae5a315cd8ed3af6bcc94343f8402" "232f715279fc131ed4facf6a517b84d23dca145fcc0e09c5e0f90eb534e1680f" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "b04425cc726711a6c91e8ebc20cf5a3927160681941e06bc7900a5a5bfe1a77f" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "aed73c6d0afcf2232bb25ed2d872c7a1c4f1bda6759f84afc24de6a1aec93da8" "d69a0f6d860eeff5ca5f229d0373690782a99aee2410a3eed8a31332a7101f1e" "9567c8b113a53efdf4e7f3ab47564cb44b27ee231ece20811bb191698b1b8b6b" "c70cc9c4c6257d70f5c11b90cb9e8b1e54e6edd6aa43f39879746e16a70533f5" "03e3e79fb2b344e41a7df897818b7969ca51a15a67dc0c30ebbdeb9ea2cd4492" "16d6e7f87846801e17e0c8abc331cf6fa55bec73185a86a431aca6bec5d28a0a" "94ba29363bfb7e06105f68d72b268f85981f7fba2ddef89331660033101eb5e5" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "040eab9c119c33f184e9fd21290ecea9691efc807a89c328e12a50d3a0fe60f8" default)))
 '(display-time-24hr-format t)
 '(display-time-day-and-date nil)
 '(display-time-format nil)
 '(eclim-auto-save t)
 '(eclim-eclipse-dirs (quote ("/Applications/Eclipse.app/Contents/Eclipse")))
 '(eclim-print-debug-messages nil)
 '(eclim-use-yasnippet nil)
 '(eclimd-executable "/Applications/Eclipse.app/Contents/Eclipse/eclimd")
 '(fancy-battery-show-percentage t)
 '(fill-column 80)
 '(flycheck-c/c++-googlelint-executable "/usr/local/bin/cpplint.py")
 '(flycheck-googlelint-verbose "3")
 '(global-hl-line-mode t)
 '(hl-outward-paren-bg-colors (quote ("brightred")))
 '(hl-outward-paren-fg-colors nil)
 '(indent-guide-global-mode t)
 '(markdown-bold-underscore t)
 '(markdown-enable-math t)
 '(powerline-default-separator (quote wave))
 '(powerline-height nil)
 '(python-check-command "pylint")
 '(rm-blacklist ".*")
 '(safe-local-variable-values (quote ((cmake-ide-build-dir . "build/"))))
 '(show-paren-mode t)
 '(show-paren-ring-bell-on-mismatch t)
 '(spacemacs-theme-comment-bg nil)
 '(spacemacs-theme-custom-colors (quote ((comment-bg "#1B1D1E") (bg1 "#202020"))))
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-skip-other-window-p nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-candidate-face ((t (:background "brightwhite" :foreground "black"))))
 '(ac-completion-face ((t (:foreground "green" :underline t))))
 '(ac-selection-face ((t (:background "green" :foreground "black"))))
 '(column-enforce-face ((t (:foreground "red" :underline "cyan" :weight bold))))
 '(company-preview ((t (:background "black" :foreground "red"))))
 '(company-preview-common ((t (:foreground "red"))))
 '(company-preview-search ((t (:inherit company-preview))))
 '(company-scrollbar-bg ((t (:background "brightwhite"))))
 '(company-scrollbar-fg ((t (:background "red"))))
 '(company-template-field ((t (:inherit region))))
 '(company-tooltip ((t (:background "brightwhite" :foreground "black"))))
 '(company-tooltip-annotation ((t (:background "brightwhite" :foreground "black"))))
 '(company-tooltip-annotation-selection ((t (:background "color-253"))))
 '(company-tooltip-common ((t (:background "brightwhite" :foreground "red"))))
 '(company-tooltip-common-selection ((t (:background "color-253" :foreground "red"))))
 '(company-tooltip-mouse ((t (:foreground "black"))))
 '(company-tooltip-search ((t (:background "brightwhite" :foreground "black"))))
 '(company-tooltip-selection ((t (:background "color-253" :foreground "black"))))
 '(eclim-problems-highlight-error-face ((t (:foreground "red" :underline "red" :weight bold))))
 '(eclim-problems-highlight-warning-face ((t (:foreground "color-202" :underline t :weight bold))))
 '(fancy-battery-critical ((t (:inherit red))))
 '(flycheck-error ((t (:foreground "red" :underline t))))
 '(flycheck-info ((t (:foreground "color-202" :underline t))))
 '(flycheck-warning ((t (:foreground "color-202" :underline t))))
 '(flymake-errline ((t (:foreground "red" :underline t))))
 '(flymake-infoline ((t (:foreground "yellow" :underline t))))
 '(font-lock-comment-face ((t (:foreground "color-242" :slant italic))))
 '(font-lock-doc-face ((t (:foreground "color-242" :slant italic))))
 '(font-lock-string-face ((t (:foreground "green"))))
 '(font-lock-variable-name-face ((t (:foreground "brightwhite"))))
 '(hl-line ((t (:background "black"))))
 '(indent-guide-face ((t (:foreground "cyan"))))
 '(isearch ((t (:background "brightmagenta"))))
 '(linum-highlight-face ((t (:inherit default :background "magenta" :foreground "black"))))
 '(markdown-blockquote-face ((t (:foreground "green"))))
 '(markdown-bold-face ((t (:foreground "red" :weight bold))))
 '(markdown-header-face-4 ((t (:foreground "magenta"))))
 '(markdown-italic-face ((t (:foreground "green" :slant italic))))
 '(markdown-math-face ((t (:foreground "yellow" :slant italic))))
 '(markdown-url-face ((t (:foreground "cyan"))))
 '(mmm-default-submode-face ((t nil)))
 '(popup-face ((t (:background "brightwhite" :foreground "black"))))
 '(popup-tip-face ((t (:background "brightwhite" :foreground "black" :underline nil :slant normal :weight normal))))
 '(show-paren-match ((t (:foreground "red" :background "#1B1D1E"))))
 '(show-paren-mismatch ((t (:foreground "red" :background "red"))))
 '(spaceline-unmodified ((t (:background "DarkGoldenrod2" :foreground "black" :inherit (quote mode-line)))))
 '(vertical-border ((t (:foreground "brightred")))))
;; Homebrew support for emacs packages

(let ((default-directory "/usr/local/share/emacs/site-lisp/"))
    (normal-top-level-add-subdirs-to-load-path))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; General
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; linum

(setq linum-format "%d ")
(global-linum-mode t)

(hlinum-activate)

;; Flycheck

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; column enforcement

(require 'column-enforce-mode)

(global-column-enforce-mode t)

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

(require 'company)
(global-company-mode t)

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

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'anzu-query-replace-regexp)

;; erase whole buffer
;; also works with C-x h + DEL
(global-set-key (kbd "C-x DEL") 'erase-buffer)

;; sr-speedbar

(global-set-key (kbd "C-q") 'sr-speedbar-toggle)

;; autopair

(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

;; goto-line

(global-set-key (kbd "M-g") 'goto-line)

;; show-paren-mode

(setq show-paren-delay 0)
(show-paren-mode 1)

;; auto-fill-mode

(setq-default auto-fill-function 'do-auto-fill)

;; delete marked words when typing something

(delete-selection-mode 1)

;; kill line backwards

(defun backward-kill-line (arg)
	"Kill ARG lines backward."
	(interactive "p")
	(kill-line (- 1 arg)))

(global-set-key (kbd "C-j") 'backward-kill-line)

;; fuck the bars

(tool-bar-mode -1)
(menu-bar-mode -1)

;; enabled/disabled keys

(put 'erase-buffer 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; ido
(require 'ido)
(ido-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Mode-Line
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Markdown-mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'markdown-mode)

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(require 'mmm-mode)

(defun my-mmm-markdown-auto-class (lang &optional submode)
	  "Define a mmm-mode class for LANG in `markdown-mode' using SUBMODE.
If SUBMODE is not provided, use `LANG-mode' by default."
		(let ((class (intern (concat "markdown-" lang)))
					(submode (or submode (intern (concat lang "-mode"))))
					(front (concat "^```" lang "[\n\r]+"))
					(back "^```"))
			    (mmm-add-classes (list (list class :submode submode :front front :back
																			 back)))
					(mmm-add-mode-ext-class 'markdown-mode nil class)))

;; Mode names that derive directly from the language name
(mapc 'my-mmm-markdown-auto-class
			'("awk" "bibtex" "c" "cpp" "css" "html" "latex" "lisp" "makefile"
				"markdown" "python" "r" "ruby" "sql" "stata" "xml"))

;; (setq mmm-global-mode 'maybe)
;;(setq mmm-parse-when-idle 't)
;;(add-hook 'markdown-mode-hook (lambda() (mmm-mode)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Code
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; indentation higlighting

(require 'highlight-indentation)

(add-hook 'c++-mode-hook 'highlight-indentation-mode)
(add-hook 'c++-mode-hook 'highlight-indentation-current-column-mode)

(add-hook 'java-mode-hook 'highlight-indentation-mode)
(add-hook 'java-mode-hook 'highlight-indentation-current-column-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; C++
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; clang-format on save

(add-hook 'c++-mode-hook
 	  (lambda () (add-hook 'before-save-hook 'clang-format-buffer  nil 'local)))

;; semantic parser

(add-hook 'c++-mode-hook (lambda() (semantic-mode 1)))

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

;; cpputils

(add-hook 'c-mode-common-hook
					(lambda ()
						(if (derived-mode-p 'c-mode 'c++-mode)
								(cppcm-reload-all))))

;; cmake-ide

(require 'rtags)
(cmake-ide-setup)

;; yasnippet

(add-hook 'c++-mode-hook (lambda () (yas-global-mode 1)))
(add-hook 'c++-mode-hook (lambda () (setq
flycheck-clang-language-standard "c++1z")))

;; Flycheck with Google C++ Style Guide

(eval-after-load 'flycheck
	'(progn
		 (require 'flycheck-google-cpplint)
		 ;; Add Google C++ Style checker.
		 ;; In default, syntax checked by Clang and Cppcheck.
		 (flycheck-add-next-checker 'c/c++-cppcheck
																'(warning . c/c++-googlelint))))





;; Irony

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
	(define-key irony-mode-map [remap completion-at-point]
		'irony-completion-at-point-async)
	(define-key irony-mode-map [remap complete-symbol]
		'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;(eval-after-load 'company
;	  '(add-to-list 'company-backends 'company-irony))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Java
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'eclim)
(add-hook 'java-mode-hook 'eclim-mode)

(require 'company-emacs-eclim)
(add-hook 'java-mode-hook (lambda()(company-emacs-eclim-setup)))

(require 'eclimd)

(define-key eclim-mode-map (kbd "C-c C-c") 'eclim-problems-correct)

;; gradle for java

(require 'gradle-mode)
(add-hook 'java-mode-hook '(lambda() (gradle-mode 1)))

(defun build-and-run ()
	(interactive)
	(gradle-run "build run"))

(define-key gradle-mode-map (kbd "C-c C-r") 'build-and-run)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; SQL
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq sql-postgres-login-params
			'((user :default "petergoldsborough")
				(database :default "postgres")
				(server :default "localhost")
				(port :default 5432)))

(add-hook 'sql-interactive-mode-hook
					(lambda () (toggle-truncate-lines t)))

(add-hook 'sql-mode-hook (lambda() (load-library "sql-indent")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Python
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Jedi

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; Yasnippet

(add-hook 'python-mode-hook (lambda () (yas-global-mode 1)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; JS
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; HTML
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; CSS
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; LaTeX
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Syntax checking

(require 'flymake)
(defun flymake-get-tex-args (file-name)
	(list "pdflatex"
				(list "-file-line-error" "-draftmode" "-interaction=nonstopmode"
							file-name)))

(add-hook 'LaTeX-mode-hook 'flymake-mode)

;; Spell-checking

(setq ispell-program-name "ispell")
(setq ispell-dictionary "english")

(add-hook 'LaTeX-mode 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-buffer)
