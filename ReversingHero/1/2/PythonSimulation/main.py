saved_str = "89349536319392163324855876422573"


def generate_num(i):
    i += 0x55
    for _ in range(0, 3):
        i &= 0x1f
        i = i >> 1 | i << 4

    i *= 3
    i &= 0x1f
    return i


def fill_buffer_from_user_input(user_input):
    list_to_fill = ["0"] * 32
    for i in range(32):
        generated_num = generate_num(i)
        print(saved_str[generated_num],end="")
        list_to_fill[generated_num] = user_input[i]
    str_result = ""
    str_result = str_result.join(list_to_fill)
    return str_result


def check(user_input):
    new_user_str = fill_buffer_from_user_input(user_input)
    # print(new_user_str)
    if new_user_str == saved_str:
        return True
    else:
        return False


def main():
    user_input = input("? ")
    if check(user_input):
        print("? +")
    else:
        print("? -\n")


if __name__ == "__main__":
    main()
