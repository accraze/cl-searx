(in-package #:searx)

(defun websearch (query)
  (let* (
        ; (key (uiop:getenv "SEARCH_KEY"))
        (endpoint (uiop:getenv "SEARX_ENDPOINT"))
        (command
          (concatenate
            'string
            "curl -v -X GET \"" endpoint "?q="
            (drakma:url-encode query :utf-8)
            "&format=json\""
            ; " -H \"Ocp-Apim-Subscription-Key: " key "\"")
        ))
        (response
            (uiop:run-program command :output :string)))
    (print response)
    ; (with-input-from-string
    ;   (s response)
    ;   (print s)
    ; (let* ((json-as-list (json:decode-json s))
    ;     (values (cdadr (cddr (nth 2 json-as-list)))))
    ;   (mapcar #'(lambda (x)
    ;               (let ((query (assoc :query x))
    ;                    (infoboxes (assoc :infoboxes x))
    ;                    (results (assoc :results x)))
    ;                 (list (cdr query) (cdr infoboxes) (cdr results))))
    ;           values)
    ; )
    ; )
))
