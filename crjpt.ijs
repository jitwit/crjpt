require 'convert/misc/base64 tables/dsv'

NB. HEX CONVERSION
decode_hex=: 16 1 +/ .*~ _2 ]\ '0123456789abcdef'&i."0
xor=: ~: &. ((8#2)&#:)
sxor=: xor"_ 0

NB. SIMIPLE CHAR FREQUENCY
freqs=: (' ';13) , makenum' 'readdsv < '~/code/crjpt/char_frequencies.txt'
freq_table=: (% +/) > 1 {"1 freqs /: > 0 {"1 freqs
english=: 128$0

tabulate_english=: verb define
english=:256$0
for_c. freqs do. english=: (>1{c) ((a. i. >0{c)})english end.
english=: (% +/) english
)
tabulate_english''

upcase_char=: ]`(-&32)@.(1 = 96 123&I.)"0

char_freq=: verb define
T =. 256$0
for_c. upcase_char y do. T =. (>:(c{T)) (c}) T end.
T =. (% +/) T
)

rate_english =: verb define
+/ *: (english - char_freq y)
)

NB. SINGLE XOR DECRYPTION
sxor_key=: [: (i. <./) [: rate_english"1 (i.256) sxor"0 _ ]
sxor_decrypt=: {&a. @(sxor"0 sxor_key)
