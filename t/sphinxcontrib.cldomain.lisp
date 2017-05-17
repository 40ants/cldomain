(in-package :cl-user)
(defpackage sphinxcontrib.cldomain-test
  (:use :cl
        :sphinxcontrib.cldomain
        :prove
        :hamcrest.matchers))
(in-package :sphinxcontrib.cldomain-test)


(plan 1)

(subtest "Replace this test with real staff."
  (assert-that (foo 1 2 3)
               (contains 1 2 3)))

(finalize)
