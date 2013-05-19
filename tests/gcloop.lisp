; 
; Copyright 2011-2012 Jeff Bush
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


; Extended GC test, should repeatedly free up nodes.  Make sure there isn't
; an eventual leak.  Need to modify testbench.v to run infinitely and enable
; gclogs to ensure the same number of objects are freed each gc.
(while 1
	(cons 1 2))
