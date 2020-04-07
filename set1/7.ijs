require'convert/misc/base64'

bytes=: frombase64,];._2(1!:1)<'7.txt'
NB. 1 for decrypt; key as literal; iv 0s in literal; mode indicator.
settings=: 1;'YELLOW SUBMARINE';(16#0{a.);'ecb'
]lyrics=: settings (128!:7) bytes
