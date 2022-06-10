def decrypt_password():
    encrypted = "Yheyo1*::;"
    decrypted = ""
    for index in range(0, len(encrypted), 2):
        decrypted += chr(ord(encrypted[index]) ^ 0xA)
        decrypted += chr(ord(encrypted[index + 1]) ^ (0xA + 1))
    return decrypted


def get_user_input():
    user_input = input("What would you like your test score to be? :)\n")
    user_sum = 0
    for ch in user_input:
        user_sum += ord(ch)
    # print(user_sum & 0xff) -- debug print, to make sure the calculations are correct
    if (user_sum & 0xff) != 0xa:
        print("Well... keep trying")
    else:
        print(decrypt_password())


if __name__ == "__main__":
    get_user_input()

