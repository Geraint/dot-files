local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s({
    trig = "snip testcase",
    name = "PHPUnit test case",
    dscr = "A TestCase class for PHPUnit",
  }, {
    t({
      '<?php',
      '',
      'declare(strict_types=1);',
      '',
      'namespace ',
    }),
    i(1, 'Namespace'),
    t({
      ';',
      '',
      'use PHPUnit\\Framework\\TestCase;',
      '',
      'class ',
    }),
    i(2, 'ClassName'),
    t({
      'Test extends TestCase',
      '{',
    }),
    i(3),
    t({
      '',
      '}',
    })
  })
}
