;
; Copyright 2011-2013 Jeff Bush
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;     http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.
;

(function removenth (list index)
    (if (and index (rest list))
        (cons (first list) (removenth (rest list) (- index 1))) ; then keep searching
        (rest list)))     ; else at index or end of list, return the next after

(function anagram (prefix suffix)
    (if suffix
        ; then select next letter
        (for x 0 (- (length suffix) 1) 1
            (anagram (append prefix (nth suffix x)) (removenth suffix x)))
        ; else print the final value
        ($printstr prefix)))

($printchar #\X)
(anagram nil "lisp")
($printchar #\Y)

; CHECK: XlisplipslsiplspilpislpsiilspilpsislpispliplsipslslipslpisilpsiplsplispilplisplsipilspislpslipsilY

