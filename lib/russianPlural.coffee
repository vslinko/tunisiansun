russianPlural = (n, first, second, third) ->
    if n % 10 == 1 && n % 100 != 11
        first
    else if n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20)
        second
    else
        third
