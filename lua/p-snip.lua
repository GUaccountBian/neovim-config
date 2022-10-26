local ls=require 'luasnip'

ls.config.set_config{
  history = true,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true
}

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node


