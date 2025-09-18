#!/bin/bash

A=3

echo "A = $A"

[ $A -gt 10 ]   && echo '[ $A -gt 10 ]   - Error'
[[ $A -gt 10 ]] && echo '[[ $A -gt 10 ]] - Error'


[ $A > 10 ]     && echo '[ $A > 10 ]     - Error'
[[ $A > 10 ]]   && echo '[[ $A > 10 ]]   - Error'

[ $A \> 10 ]    && echo '[ $A \> 10 ]    - Error'
# [[ $A \> 10 ]]  && echo '[[ $A > 10 ]]   - Error'

(( $A > 10 ))   && echo '(( $A > 10 ))   - Error'

exit 0
