<?php

class arg_checker {
    public function __construct(private $arg, private readonly string $arg_name,
                                private readonly array $callbacks)
    {

    }

    function check(): bool {
        foreach ($this->callbacks as $callback) {
            if (!call_user_func(...array_merge($callback, [$this->arg, $this->arg_name])))
                return false;
        }
        return true;
    }
}

class args_checker {

    public function __construct(private readonly array $args_checker)
    {
    }

    function check(): bool {
        $good = true;
        foreach ($this->args_checker as $arg_checker)
        {
            if (!$arg_checker->check())
                $good = false;
        }
        return $good;
    }
}
