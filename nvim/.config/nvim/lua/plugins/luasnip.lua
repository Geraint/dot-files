return {
  {
    "L3MON4D3/LuaSnip",
    version = "^1.1.0",
    config = function()
      require("luasnip.loaders.from_lua").load({paths = "./my-snippets"})
      -- local ls = require("luasnip")
      -- local s = ls.snippet
      -- local t = ls.text_node
      -- local i = ls.insert_node
      --
      -- ls.add_snippets("all", {
      --   s({
      --     trig = "ternary",
      --     name = "My Example",
      --     dscr = "A long and pointless descrption.\nHopefully with new lines",
      --   }, {
      --     i(1, "cond"), t(" ? "), i(2, "then"), t(" : "), i(3, "else")
      --   })
      -- })

    end,
  }
}
