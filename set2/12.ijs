require'convert/misc/base64'
in=: frombase64 1!:1<'12.txt'

rkey=: a.{~[:?255#~]
SEC=: rkey 16
ecbr=: adverb : '(0;u;SEC;''ecb'') 128!:7 x,y'
ecbo=: (rkey 16) ecbr

ecb_bat=: monad define
assert. 'ecb' -: ecbo&in oracle_ecb_cbc ''

)
