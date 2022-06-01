#s = list("Nope... that password is wrong")
s = [56,57,57,51,52,51,50,50,57]
i = 0
while True:
    if i == len(s):
        break
    ch = s[i]
    ch ^= 0xDEADBABE
    s[i] = ch & 0xFF
    i += 1

s = [chr(ch) for ch in s]
print(''.join(s))

# s = [233, 219, 210, 210, 158, 250, 209, 208, 219, 159, 159, 158, 231, 209, 203, 158, 211, 223, 218, 219, 158, 215, 202,
#      159, 158, 237, 219, 208, 218, 158, 237, 209, 210, 203, 202, 215, 209, 208]

# ch = s[i]

