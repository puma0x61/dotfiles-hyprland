---@type ChadrcConfig 
 local M = {}
 M.ui = {

  theme = 'radium',
  theme_toggle = {'radium', 'gruvbox_light'},
  transparency = true,

  ------------------------------- nvchad_ui modules -----------------------------
 statusline = {
    overriden_modules = function()
      local st_modules = require "nvchad_ui.statusline.default"
      -- this is just default table of statusline modules

      return {
        mode = function()
          return st_modules.mode() .. ""
          -- or just return "" to hide this module
        end,
      }
    end,
  },
 -- lazyload it when there are 1+ buffers
tabufline = {
     overriden_modules = function()
       local modules = require "nvchad_ui.tabufline.modules"

       return {
         buttons = function()
           return modules.buttons() .. ""
         end,
         -- or buttons = "" , this will hide the buttons
       }
     end,
  },



 -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,

    header = {
      "＿＿                     ",
      " 　　        ／＞    フ  ",
      " 　          |　_ 　-彡  ",
      " 　        ／`ミ＿xノ    ",
      " 　       /　　　  　|   ",
      "         /　 ヽ　　 ﾉ    ",
      "  　 　 │　　|　|　|     ",
      "  　／￣|　　 |　|　|    ",
      "  　| (￣ヽ＿_ヽ_)__)    ",
      "  　＼二つ               ",
   },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "🄵  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "🅆  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc b m", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },


}
 return M
