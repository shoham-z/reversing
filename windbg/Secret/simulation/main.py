def main():
    correct = "S{{p4c{f4m{a4ufq4sq``}zs4}`5"
    userinput = input("Magic Word: \n")
    if len(userinput) > 3:
        char_sum = 0
        for char in userinput[:9]:
            char_sum += ord(char)
        char_sum -= 0x34e
        char_sum -= ord(userinput[0])
        if char_sum == 0x14:
            output = ""
            for char in correct:
                output += chr(ord(char) ^ char_sum)
            print(output)


if __name__ == '__main__':
    main()
