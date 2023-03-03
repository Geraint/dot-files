local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s({
    trig = "snip test",
    name = "PHPUnit test method",
    dscr = "A single test method for PHPUnit TestCase",
  }, {
    t({
      "/**",
      " * @test",
      " */",
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
