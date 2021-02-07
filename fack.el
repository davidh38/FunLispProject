;; Emacs



(require 'request)

(defun test(a)
(message "hi")
(request
 "https://api.covid19api.com/countries"
 :sync t
 :parser 'json-read
 :success (cl-function
           (lambda (&key data &allow-other-keys)
             (insert "I sent: %S" (assoc-default 'args data))
             (message "hello"))
)
:complete (cl-function
           (lambda (&key response &allow-other-keys)
             (message "Done: %s" (request-response-status-code response))))




 )
)


(type-of (test 5))
;;(message (request-response (test 5) 'status-code))

;;(setq hello '((david . "5")(yes . "6")))
;;(insert (cdr (assoc 'david hello)))
;; I just called to say hello.
;; Schaut hier noch mal jemand rein?
