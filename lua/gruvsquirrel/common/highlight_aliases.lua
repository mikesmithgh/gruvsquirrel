-- Generic highlight definitions allows us to change underlying definitions without worrying about variable names
local gruvsquirrel_colors = require("gruvsquirrel.colors")
local with_meta = require("gruvsquirrel.util.tbl").with_meta

local M = {
  get = function(...)
    local c = gruvsquirrel_colors.get(...)

    if next(c) == nil then
      return {}
    end

    ---@class GruvsquirrelHiglightAliases
    local hl_aliases = {
      acorn                  = { bg = c.scrat_0 },
      ajwain                 = { fg = c.rocky_3, bg = c.scrat_0 },
      chickenbones           = { fg = c.rocky_3 },
      almond                 = { bg = c.scrat_1, ctermfg = 'white', }, -- ctermfg is a hack, see https://github.com/neovim/neovim/issues/9800
      salted_almond          = { bg = c.scrat_1, bold = true, },
      amaranth               = { bg = c.scrat_5 },
      anise                  = { bg = c.scrat_3, },
      dappydoo               = { fg = c.scrat_3, },
      basil                  = { fg = c.chitter_0 },
      sesame                 = { sp = c.chitter_0, underline = true, },
      bay                    = { fg = c.scrat_0, bg = c.sandy_0, },
      salted_bay             = { fg = c.scrat_0, bg = c.sandy_0, bold = true, },
      beechnut               = { reverse = true },
      black_walnut           = { bg = c.doreen_1 },
      borage                 = { fg = c.scrat_0, bg = c.surly_4, },
      brazil_nut             = { fg = c.scrat_5, bg = c.doreen_2, },
      flip_nut               = { fg = c.doreen_2, reverse = true }, -- reverse is to avoid conflict with cursorline during diff
      calend                 = { fg = c.rocky_1, },
      calendula              = {},
      candlenut              = { fg = c.scrat_0, bg = c.bucky_0, bold = true },
      caraway                = { fg = c.rocky_0, bg = c.scrat_0, italic = true },
      cashew                 = { fg = c.rocky_0, bg = c.scrat_0 },
      whesha                 = { fg = c.rocky_0 },
      wheshalift             = { fg = c.rocky_0, bg = c.scrat_8, bold = true },
      celery                 = { fg = c.scrat_0, bg = c.doreen_7, },
      chamomile              = { fg = c.sandy_0, bg = c.scrat_1 },
      chestnut               = { reverse = true, bold = true },
      chia                   = { fg = c.sandy_0, bold = true },
      chinquapin             = { fg = c.sally_0, bg = c.scrat_5 },
      chufa                  = { fg = c.scrat_5, bg = c.scrat_6, },
      doowhat                = { fg = c.rocky_1, bg = c.scrat_6, },
      doowhatdow             = { bg = c.scrat_5 },
      invis                  = { bg = c.scrat_5, blend = 100 },
      doowho                 = { fg = c.rocky_1, bg = c.scrat_0, },
      yoohoo                 = { fg = c.rocky_1, bg = c.scrat_1, },
      yoohoosl               = { fg = c.rocky_6, bg = c.scrat_1, },
      yoohooslnc             = { fg = c.rocky_6, bg = c.scrat_1, italic = true },
      yoohoonc               = { fg = c.scrat_1, bg = c.rocky_1, reverse = true }, -- reverse to avoid odd issue with usings default fillchars, remove reverse to reproduce issue
      onlike                 = { fg = c.scrat_1 },
      whatdoo                = { fg = c.scrat_6, bg = c.rocky_1, bold = true },
      cilantro               = { fg = c.sally_0, bg = c.scrat_0, },
      coconut                = { fg = c.sally_0, bg = c.scrat_6, },
      cola_nut               = { fg = c.rocky_4, bg = c.scrat_0 },
      dowatnut               = { fg = c.rocky_4, bg = c.scrat_6 },
      comfrey                = { bg = c.chitter_3, }, -- might need to clear fg
      coriander              = { bg = c.scrat_6, },
      cumin                  = { bg = c.scrat_3, bold = true, },
      dandelion              = { bg = c.scrat_5 },
      dill                   = { fg = c.sandy_0, bg = c.scrat_6, bold = true, },
      chill                  = { fg = c.doreen_0, bg = c.scrat_6, bold = true, },
      fennel                 = { sp = c.bucky_0, undercurl = true, },
      fenugreek              = { sp = c.skippy_0, undercurl = true, },
      feverfew               = { sp = c.surly_3, undercurl = true, },
      filbert                = { fg = c.rocky_6, bg = c.scrat_6, bold = true },
      hotdog                 = { fg = c.sally_0, bg = c.scrat_6, italic = true },
      flax                   = { fg = c.rocky_0, bg = c.scrat_5 },
      ginkgo_nut             = { fg = c.doreen_0 },
      tarragon               = { sp = c.doreen_0, underline = true, },
      hazelnut               = { fg = c.bucky_0, bold = true },
      hemp                   = { fg = c.scrat_0, bg = c.rocky_1 },
      -- hemp2                  = { fg = c.rocky_1, bg = c.scrat_6 },
      hibiscus               = { fg = c.hammy_0, italic = true },
      hickory_nut            = { fg = c.rocky_0, italic = true },
      indian_nut             = { fg = c.skippy_0, },
      sage                   = { sp = c.skippy_0, underline = true, },
      jackfruit_seed         = { fg = c.hammy_0, },
      jujufruit_seed         = { bg = c.hammy_0, },
      kola_nut               = { fg = c.surly_2, italic = true },
      lavender               = { fg = c.surly_0, },
      lemon_balm             = { fg = c.bucky_0 },
      rosemary               = { sp = c.bucky_0, underline = true, },
      lemongrass             = { fg = c.sandy_0, },
      sunflower              = { sp = c.sandy_0, underline = true, },
      peanut                 = { fg = c.sally_0, },
      macadamia_nut          = { fg = c.chitter_0, underline = true, },
      malabar_chestnut       = { fg = c.sally_2, bold = true, italic = true, },
      barbaradoo             = { fg = c.sally_2, bold = true, reverse = true, },
      marjoram               = { fg = c.hammy_0, bold = true, italic = true, },
      maya_nut               = { fg = c.bucky_2 },
      mustard                = { fg = c.doreen_0, italic = true },
      nasturtium             = { bold = true, },
      nigella                = { strikethrough = true, },
      oregano                = { italic = true, },
      parsley                = { underline = true, },
      pecan                  = { fg = c.doreen_8 },
      pignoli                = { fg = c.sally_0, bg = c.doreen_8, },
      pili_nut               = { fg = c.doreen_2, },
      pine_nut               = { fg = c.rocky_5, },
      pistachio              = { bg = c.hammy_4, },
      mustachio              = { fg = c.doreen_0, bg = c.scrat_5, bold = true },
      poppy                  = { fg = c.scrat_3, bg = c.rocky_5 },
      pumpkin                = { fg = c.scrat_3, bg = c.doreen_2 },
      quandong               = { fg = c.surly_4, },
      quinoa                 = { fg = c.sally_0, bg = c.surly_4, },
      thyme                  = { fg = c.doreen_1 },
      walnut                 = { fg = c.doreen_3 },
      water_chestnut         = { fg = c.doreen_5 },
      pine_cone              = { fg = c.hammy_1, },
      pineapple              = { fg = c.surly_1, },
      velma                  = { fg = c.sally_1, },
      dwayne                 = { fg = c.rocky_6, },
      scooby                 = { fg = c.chitter_2 },
      cobb                   = { fg = c.scrat_0 },
      pepsi                  = { fg = c.rocky_4 },
      potato                 = { fg = c.chitter_1 },
      gumbo                  = { fg = c.bucky_1 },
      bell                   = { fg = c.hammy_3, },
      santa                  = { fg = c.sally_2, },
      hippo                  = { fg = c.surly_3, },
      yelp                   = { fg = c.hammy_5, },
      --noice notifications
      cow_go_moo             = { fg = c.bucky_3, bg = c.scrat_6, },
      coco_gogo              = { fg = c.bucky_0, bg = c.scrat_6, },
      -- edit
      coco_ha_thyme          = { fg = c.doreen_1, bg = c.scrat_6, },
      coco_ha_ginkgo_nut     = { fg = c.doreen_0, bg = c.scrat_6, },
      coco_ha_hickory_nut    = { fg = c.rocky_0, italic = true, bg = c.scrat_6, },
      coco_ha_jackfruit_seed = { fg = c.hammy_0, bg = c.scrat_6, },
      coco_ha_quandong       = { fg = c.surly_4, bg = c.scrat_6, },
      coco_ha_lavender       = { fg = c.surly_0, bg = c.scrat_6, },
      coco_ha_dappydoo       = { fg = c.scrat_3, bg = c.scrat_6, },
      coco_ha_skippy         = { fg = c.skippy_0, bg = c.scrat_6, },
      coco_ha_pepsi          = { fg = c.rocky_4, bg = c.scrat_6, },
      --no edit
      choppa                 = { fg = c.hammy_4, bg = c.scrat_6, },
      --
      chipotle               = { fg = c.doreen_0, bold = true, },
      mcdonalds              = { bg = c.skippy_0, },
      veggie                 = { fg = c.skippy_0, bold = true, },
      doink                  = { fg = c.surly_0, bold = true, },
      nacho                  = { fg = c.rocky_2, },
      dorito                 = { fg = c.chitter_0, bold = true, },
      soup                   = { fg = c.scrat_0, bold = true, },
      meow                   = { fg = c.hammy_0, bold = true, underline = true },
      yolo                   = { fg = c.hammy_0, bold = true, },
      curcol                 = { bg = c.scrat_8 },
      hoiya                  = { fg = c.rocky_4, bg = c.scrat_1 },
      ace                    = { bg = c.scrat_2, },
    }

    ---@type GruvsquirrelHiglightAliases
    hl_aliases = with_meta(hl_aliases)

    return hl_aliases
  end
}

return M
