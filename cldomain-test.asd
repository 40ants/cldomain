#|
  This file is a part of sphinxcontrib.cldomain project.
|#

(in-package :cl-user)
(defpackage sphinxcontrib.cldomain-test-asd
  (:use :cl :asdf))
(in-package :sphinxcontrib.cldomain-test-asd)

(defsystem cldomain-test
  :author ""
  :license ""
  :depends-on (:cldomain
               :prove
               :hamcrest-prove)
  :components ((:module "t"
                :components
                ((:test-file "sphinxcontrib.cldomain"))))
  :description "Test system for sphinxcontrib.cldomain"

  :defsystem-depends-on (:prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
