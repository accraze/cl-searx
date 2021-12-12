(in-package #:searx)

(defun websearch (query)
  (let* (
        (endpoint (uiop:getenv "SEARX_ENDPOINT"))
        (command
          (concatenate
            'string
            "curl -v -X GET \"" endpoint "?q="
            (drakma:url-encode query :utf-8)
            "&format=json\""
        ))
        (response
            (uiop:run-program command :output :string)))
    (with-input-from-string
      (s response)
      (json:decode-json s))
))
