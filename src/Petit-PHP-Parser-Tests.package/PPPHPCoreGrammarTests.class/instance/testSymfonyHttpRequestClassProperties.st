symfony2
testSymfonyHttpRequestClassProperties
	self 
	parse: '{
    static protected $trustProxy = false;

    /**
     * @var \Symfony\Component\HttpFoundation\ParameterBag
     *
     * @api
     */
    public $attributes;

    /**
     * @var \Symfony\Component\HttpFoundation\ParameterBag
     *
     * @api
     */
    public $request;

    /**
     * @var \Symfony\Component\HttpFoundation\ParameterBag
     *
     * @api
     */
    public $query;

    /**
     * @var \Symfony\Component\HttpFoundation\ServerBag
     *
     * @api
     */
    public $server;

    /**
     * @var \Symfony\Component\HttpFoundation\FileBag
     *
     * @api
     */
    public $files;

    /**
     * @var \Symfony\Component\HttpFoundation\ParameterBag
     *
     * @api
     */
    public $cookies;

    /**
     * @var \Symfony\Component\HttpFoundation\HeaderBag
     *
     * @api
     */
    public $headers;

    /**
     * @var string
     */
    protected $content;

    /**
     * @var string
     */
    protected $languages;

    /**
     * @var string
     */
    protected $charsets;

    /**
     * @var string
     */
    protected $acceptableContentTypes;

    /**
     * @var string
     */
    protected $pathInfo;

    /**
     * @var string
     */
    protected $requestUri;

    /**
     * @var string
     */
    protected $baseUrl;

    /**
     * @var string
     */
    protected $basePath;

    /**
     * @var string
     */
    protected $method;

    /**
     * @var string
     */
    protected $format;

    /**
     * @var \Symfony\Component\HttpFoundation\Session
     */
    protected $session;

    /**
     * @var string
     */
    protected $locale;

    /**
     * @var string
     */
    protected $defaultLocale = "en";

    /**
     * @var string
     */
    static protected $formats;
}'
	rule: #classBody.