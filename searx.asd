(asdf:defsystem #:searx
  :description "Searx meta-search client"
  :author "accraze@gmail.com"
  :license "GPL 3.0"
  :depends-on (#:drakma #:cl-json)
  :components ((:file "package")
               (:file "searx")))
