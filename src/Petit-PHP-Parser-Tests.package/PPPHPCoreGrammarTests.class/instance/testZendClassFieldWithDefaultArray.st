grammar-model-examples
testZendClassFieldWithDefaultArray
	self
		parse:' private static $_defaultOptions = array(
        "save_path"                 => null,
        "name"                      => null,
        "save_handler"              => null,
        "gc_probability"            => null,
        "gc_divisor"                => null,
        "gc_maxlifetime"            => null,
        "serialize_handler"         => null,
        "cookie_lifetime"           => null,
        "cookie_path"               => null,
        "cookie_domain"             => null,
        "cookie_secure"             => null,
        "cookie_httponly"           => null,
        "use_cookies"               => null,
        "use_only_cookies"          => "on",
        "referer_check"             => null,
        "entropy_file"              => null,
        "entropy_length"            => null,
        "cache_limiter"             => null,
        "cache_expire"              => null,
        "use_trans_sid"             => null,
        "bug_compat_42"             => null,
        "bug_compat_warn"           => null,
        "hash_function"             => null,
        "hash_bits_per_character"   => null
    );'
		rule: #classFields.