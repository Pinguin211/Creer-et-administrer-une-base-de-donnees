<?php



function base($arg, string $message, $test, array $params = []): bool
{
    if (is_null($arg) || !$test($arg, ...$params)) {
        echo $message . "\n";
        return false;
    }
    return true;
}

function check_lenght(int $maxlen, $arg, string $arg_name): bool
{
    return base(
        $arg,
        "Votre $arg_name est trop longs, lenmax = $maxlen",
        function ($arg, $maxlen) {return strlen($arg) <= $maxlen;},
        [$maxlen]
    );
}

function check_numeric($arg, string $arg_name): bool
{
    return base(
        $arg,
        "Votre $arg_name n'est pas un nombre\n",
        function ($arg) {return is_numeric($arg);},
    );
}

function check_not_empty($arg, string $arg_name): bool
{
    return base(
        $arg,
        "Veuillez definir $arg_name",
        function ($arg) {return strlen($arg) > 0;},
    );
}

function check_regex(string $regex, string $message, $arg, string $arg_name,)
{
    return base(
        $arg,
        $message,
        function ($arg, $regex) {return preg_match($regex, $arg);},
        [$regex]
    );
}
