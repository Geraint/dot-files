local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s({
    trig = "snip class",
    name = "PHP class",
    dscr = "A bare bones PHP class",
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
      'class ',
    }),
    i(2, 'ClassName'),
    t({
      '',
      '{',
    }),
    i(3),
    t({
      '',
      '}',
    }),
  })
}
