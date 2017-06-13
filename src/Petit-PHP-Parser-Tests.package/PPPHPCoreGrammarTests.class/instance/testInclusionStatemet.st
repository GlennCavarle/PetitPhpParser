grammar-statements
testInclusionStatemet
	self
		parse: 'include "somefile.php"'
		rule: #languageConstructInvocation.
	self
		parse: 'include_once "somefile.php"'
		rule: #languageConstructInvocation.
	self
		parse: 'include("somefile.php")'
		rule: #languageConstructInvocation.
	self
		parse: 'include_once("somefile.php")'
		rule: #languageConstructInvocation.
	self
		parse: 'require "somefile.php"'
		rule: #languageConstructInvocation.
	self
		parse: 'require("somefile.php")'
		rule: #languageConstructInvocation.
	self
		parse: 'require_once "somefile.php"'
		rule: #languageConstructInvocation.
	self
		parse: 'require_once("somefile.php")'
		rule: #languageConstructInvocation.