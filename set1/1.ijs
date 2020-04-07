load '~/code/crjpt/crjpt.ijs'

input =: }: freads < '~/code/crjpt/input/1/1.in'

phrase =: a. {~ decode_hex input

phrase 
tobase64 phrase