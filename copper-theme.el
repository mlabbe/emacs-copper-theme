;;; copper-theme.el  -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2013-2023 Frogtoss Games, Inc.
;;
;; Authors: Michael Labbe https://www.frogtoss.com/pages/contact.html
;;

;;; Commentary:

;; A theme that invokes the colours of copper interacting with sunlight.
;;
;; Original; not a copy of a theme from another editor.  No light mode
;; alternative.
;;
;; Designed for programming in an Emacs 29+ environment that could have
;; tree-sitter enabled.  Attention has been paid to details for typed
;; languages like c, where type, variable and keyword differentiation
;; are necessary for fast scanning.
;;
;; Comments have background highlighting in order to produce block
;; shapes to allow for segregation of functionality in long functions.


(deftheme copper
  "A theme that invokes the colours of copper interacting with sunlight.")

(let ((class '((class color) (min-colors 88)))
      (fg-1 "#B7BCBA")
      (fg-2 "#E0E0E0")
      (fg-3 "#E2E9E9")
      (fg-contrast "#b2bc63")
      (fg-highlight "#6ba4bf")
      (fg-light-highlight "#ffc36b")
      (fg-light-highlight-2 "#f98e58")
      (fg-bright "#e04e16")
      (fg-cool "#be94bc")
      (fg-urgent "red")
      
      (fg-debug "pink")

      
      (fg-comment "#969897")
      (bg-comment "#2B3135")
      ;;(bg-comment "#24292d") darker
      (bg-1 "#1B1F22")
      (bg-bright "#3C454C")
      (bg-off "black")
      (cursor "#ffffa0")
      (block-highlight-bg "#00588a")
      (block-highlight-bg-dark "#004165")
      )
  
  (custom-theme-set-faces
   'copper

   ;; common
   `(default ((,class :foreground ,fg-1 :background ,bg-1)))
   `(cursor ((,class :foreground ,bg-1 :background ,cursor)))
   `(region ((,class :background ,block-highlight-bg)))
   `(hl-line ((,class :background ,bg-off)))
   `(minibuffer-prompt ((,class :foreground ,fg-2)))
   `(link ((,class :foreground ,fg-light-highlight :underline t)))
   `(warning ((,class :foreground ,fg-light-highlight)))
   `(error ((,class :foreground ,fg-light-highlight-2)))
   `(success ((,class :foreground ,fg-1)))
   `(bold ((,class :foreground ,fg-2 :weight bold)))
   `(isearch ((,class :foreground ,fg-light-highlight :background ,block-highlight-bg)))
   `(isearch-fail ((,class :foreground ,fg-light-highlight-2 :background ,block-highlight-bg)))

   ;; button is also used for in-code project links, like include files
   ;; it overrides the 'string' face that hl-mode applies
   `(button ((,class :foreground ,fg-contrast :underline t)))
   
   ;; modeline
   `(mode-line ((,class (:box (:line-width -1
                               :style none)
                               :overline "gray50"
                               :height 100
			                   :background ,"gray70"
                               :foreground ,"black"))))

   `(mode-line-inactive ((,class (:box (:line-width -1
                               :style none)
                               :overline "gray50"
                               :height 100
			                   :background ,"gray20"
                               :foreground ,fg-1))))
   
   ;; code
   `(font-lock-comment-face ((,class :foreground ,fg-comment :background ,bg-comment)))
   `(font-lock-comment-delimiter-face ((,class :foreground ,fg-1 :background ,bg-comment)))
   `(font-lock-builtin-face ((,class :foreground ,fg-3)))
   `(font-lock-type-face ((,class :foreground ,fg-light-highlight)))
   `(font-lock-preprocessor-face ((,class :foreground ,fg-contrast)))
   `(font-lock-operator-face ((,class :foreground ,fg-3)))
   `(font-lock-string-face ((,class :foreground ,fg-contrast)))
   `(font-lock-variable-name-face ((,class :foreground ,fg-light-highlight-2)))
   `(font-lock-constant-face ((,class :foreground ,fg-light-highlight-2)))
   `(font-lock-keyword-face ((,class :foreground ,fg-highlight)))
   `(font-lock-warning-face ((,class :foreground ,fg-bright :background ,bg-comment)))
   `(font-lock-function-name-face ((,class :foreground ,fg-cool)))
   `(font-lock-negation-char-face ((,class :foreground ,fg-2)))
   `(show-paren-mismatch-face ((,class :foreground ,fg-urgent :background ,bg-off)))
   `(tree-sitter-hl-face:string ((,class :foreground ,fg-contrast)))
   `(tree-sitter-hl-face:function.call ((,class :foreground ,fg-cool)))
   `(tree-sitter-hl-face:type.builtin ((,class :foreground ,fg-light-highlight)))
   `(tree-sitter-hl-face:constant ((,class :foreground ,fg-2)))
   `(tree-sitter-hl-face:property ((,class :foreground ,fg-1)))
   `(tree-sitter-hl-face:variable.special ((,class :foreground ,fg-light-highlight-2)))
   
   ;; selectrum
   `(selectrum-current-candidate ((,class :foreground ,fg-light-highlight)))

   ;; vertico
   `(vertico-current ((,class :foreground ,fg-2 :background ,block-highlight-bg)))
   
   ;; org-mode
   `(org-level-1 ((,class :foreground ,fg-light-highlight :background ,bg-comment :height 150)))
   `(org-level-2 ((,class :foreground ,fg-light-highlight :background ,bg-comment :height 130)))
   `(org-level-3 ((,class :foreground ,fg-light-highlight-2)))
   `(org-level-4 ((,class :foreground ,fg-highlight)))
   `(org-level-5 ((,class :foreground ,fg-highlight)))
   `(org-level-6 ((,class :foreground ,fg-highlight)))
   `(org-level-7 ((,class :foreground ,fg-highlight)))
   `(org-tag     ((,class :foreground ,fg-contrast)))
   
   `(org-headline-done ((,class :foreground ,fg-highlight :background ,bg-comment)))
   `(org-done ((,class :foreground ,fg-cool :background ,bg-comment)))
   `(org-todo ((,class :foreground ,fg-light-highlight-2 :background ,bg-comment)))
   `(org-checkbox ((,class :foreground ,fg-contrast)))
   `(org-link ((,class :foreground ,fg-contrast :underline t)))
   `(org-verbatim ((,class :foreground ,fg-2)))
   `(org-table ((,class :foreground ,fg-2)))
   `(org-date ((,class :foreground ,fg-light-highlight :underline t)))

   ;; markdown-mode
   `(markdown-header-face-1 ((,class :foreground ,fg-light-highlight :background ,bg-comment :height 220)))
   `(markdown-header-face-2 ((,class :foreground ,fg-light-highlight :background ,bg-comment :height 180)))
   `(markdown-header-face-3 ((,class :foreground ,fg-light-highlight :background ,bg-comment)))
   `(markdown-header-face-4 ((,class :foreground ,fg-light-highlight :background ,bg-comment)))
   `(markdown-list-face ((,class :foreground ,fg-light-highlight-2)))
   `(markdown-inline-code-face ((,class :foreground ,fg-highlight)))
   `(markdown-pre-face ((,class :foreground ,fg-highlight)))
   `(markdown-markup-face ((,class :foreground ,fg-light-highlight)))
   `(markdown-bold-face ((,class :foreground ,fg-2 :weight bold)))
   `(markdown-italic-face ((,class :foreground ,fg-2 :slant italic)))
   `(markdown-link-face ((,class :foreground ,fg-2)))

   ;; compile-mode
   `(compilation-info ((,class :foreground ,fg-light-highlight)))
   `(compilation-warning ((,class :foreground ,fg-light-highlight)))
   `(compilation-error ((,class :foreground ,fg-light-highlight-2)))
   `(compilation-line-number ((,class :foreground ,fg-2 :underline t)))
   `(compilation-column-number ((,class :foreground ,fg-2 :underline t)))


   ;; flycheck
   `(flycheck-fringe-error ((,class :foreground ,fg-light-highlight-2)))
   `(flycheck-fringe-warning ((,class :foreground ,fg-light-highlight)))
   `(flycheck-fringe-info ((,class :foreground ,fg-light-highlight)))

   ;; lsp
   `(lsp-face-highlight-read ((,class :background ,bg-bright)))
   `(lsp-face-highlight-textual ((,class :background ,block-highlight-bg-dark)))
   `(lsp-face-highlight-write ((,class :background ,block-highlight-bg-dark)))

   ;; eglot
   `(eglot-highlight-symbol-face ((,class :background ,block-highlight-bg)))
   `(eglot-inlay-hint-face ((,class :foreground ,fg-2 :background ,bg-comment :height 84)))

   ;; xref
   `(xref-line-number ((,class :foreground ,fg-2)))

   ;; company-mode
   `(company-preview ((,class :foreground ,fg-1 :background ,bg-bright)))
   `(company-preview-common ((,class :foreground ,fg-2 :background ,bg-bright)))
   `(company-preview-search ((,class :foreground ,fg-2 :background ,bg-bright)))
   `(company-tooltip-common ((,class :foreground ,fg-2 :background ,bg-bright)))
   `(company-tooltip-common-selection ((,class :foreground ,fg-2 :background ,bg-bright)))
   `(company-tooltip-annotation ((,class :foreground ,fg-2 :background ,bg-bright)))
   `(company-tooltip-annotation-selection ((,class :foreground ,fg-2 :background ,bg-bright)))
   `(company-tooltip-search-selection ((,class :foreground ,fg-2 :background ,block-highlight-bg)))
   `(company-tooltip-mouse ((,class :foreground ,fg-2 :background ,block-highlight-bg)))

   ;; magit
   `(magit-section-highlight ((,class :foreground ,fg-1 :background ,bg-comment)))
   `(magit-branch-current ((,class :foreground ,fg-light-highlight :box 1)))
   `(magit-branch-remote ((,class :foreground ,fg-light-highlight :box 1)))

   ;; ripgrep
   `(rg-match-face ((,class :foreground ,fg-cool)))
   `(rg-line-number-face ((,class :foreground ,fg-2)))

   ;; line numbers
   `(line-number ((,class :foreground ,fg-comment)))
   `(line-number-current-line ((,class :foreground ,fg-1)))   
   )
  )

 (custom-theme-set-variables
   'copper
   '(frame-set-background-mode dark))

(provide-theme 'copper)
