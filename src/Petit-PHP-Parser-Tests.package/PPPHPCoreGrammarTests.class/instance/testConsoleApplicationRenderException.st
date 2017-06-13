doctrine2
testConsoleApplicationRenderException
	self
		parse: 'public function renderException($e, $output)
    {
        $strlen = function ($string)
        {
            return function_exists(''mb_strlen'') ? mb_strlen($string) : strlen($string);
        };

        $title = sprintf(''  [%s]  '', get_class($e));
        $len = $strlen($title);
        $lines = array();
        foreach (explode("\n", $e->getMessage()) as $line) {
            $lines[] = sprintf(''  %s  '', $line);
            $len = max($strlen($line) + 4, $len);
        }

        $messages = array(str_repeat('' '', $len), $title.str_repeat('' '', $len - $strlen($title)));

        foreach ($lines as $line) {
            $messages[] = $line.str_repeat('' '', $len - $strlen($line));
        }

        $messages[] = str_repeat('' '', $len);

        $output->writeln("\n");
        foreach ($messages as $message) {
            $output->writeln(''<error>''.$message.''</error>'');
        }
        $output->writeln("\n");

        if (null !== $this->runningCommand) {
            $output->writeln(sprintf(''<info>%s</info>'', sprintf($this->runningCommand->getSynopsis(), $this->getName())));
            $output->writeln("\n");
        }

        if (Output::VERBOSITY_VERBOSE === $output->getVerbosity()) {
            $output->writeln(''</comment>Exception trace:</comment>'');

            // exception related properties
            $trace = $e->getTrace();
            array_unshift($trace, array(
                ''function'' => '''',
                ''file''     => $e->getFile() != null ? $e->getFile() : ''n/a'',
                ''line''     => $e->getLine() != null ? $e->getLine() : ''n/a'',
                ''args''    => array(),
            ));

            for ($i = 0, $count = count($trace); $i < $count; $i++) {
                $class = isset($trace[$i][''class'']) ? $trace[$i][''class''] : '''';
                $type = isset($trace[$i][''type'']) ? $trace[$i][''type''] : '''';
                $function = $trace[$i][''function''];
                $file = isset($trace[$i][''file'']) ? $trace[$i][''file''] : ''n/a'';
                $line = isset($trace[$i][''line'']) ? $trace[$i][''line''] : ''n/a'';

                $output->writeln(sprintf('' %s%s%s() at <info>%s:%s</info>'', $class, $type, $function, $file, $line));
            }

            $output->writeln("\n");
        }
    }'
		rule: #methodDefinition.