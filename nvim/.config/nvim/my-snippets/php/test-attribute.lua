local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s({
    trig = "snip test attribute",
    name = "PHPUnit test method (Attribute)",
    dscr = "A single test method for PHPUnit TestCase",
  }, {
    t({
      "#[Test]",
      "public function ",
    }),
    i(1, 'methodName'),
    t({
      '(): void',
      '{',
    }),
    i(2),
    t({
      '',
      '}',
    }),
  })
}

