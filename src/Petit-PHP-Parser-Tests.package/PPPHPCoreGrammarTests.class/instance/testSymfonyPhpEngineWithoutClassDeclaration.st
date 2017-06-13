symfony2
testSymfonyPhpEngineWithoutClassDeclaration
	self 
	parse: '<?php

/*
 * This file is part of the Symfony package.
 *
 * (c) Fabien Potencier <fabien@symfony.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Symfony\Component\Templating;

use Symfony\Component\Templating\Storage\Storage;
use Symfony\Component\Templating\Storage\FileStorage;
use Symfony\Component\Templating\Storage\StringStorage;
use Symfony\Component\Templating\Helper\HelperInterface;
use Symfony\Component\Templating\Loader\LoaderInterface;

if (!defined(''ENT_SUBSTITUTE'')) {
    define(''ENT_SUBSTITUTE'', 8);
}'
	rule: #start.