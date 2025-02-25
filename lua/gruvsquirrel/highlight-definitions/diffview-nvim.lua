local g = require('gruvsquirrel.highlight-groups.diffview-nvim')
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.DiffviewDim1 }, d.fg_gray0_italic },
      { { g.DiffviewNormal }, d.fg_light0_bg_dark0 },
      { { g.DiffviewNormal }, d.fg_light0_bg_dark6 },

      -- DiffviewDiffAdd = 'DiffviewDiffAdd',
      -- DiffviewNonText = 'DiffviewNonText',
      -- DiffviewPrimary = 'DiffviewPrimary',
      -- DiffviewDiffText = 'DiffviewDiffText',
      -- DiffviewReference = 'DiffviewReference',
      -- DiffviewSecondary = 'DiffviewSecondary',
      -- DiffviewCursorLine = 'DiffviewCursorLine',
      -- DiffviewDiffChange = 'DiffviewDiffChange',
      -- DiffviewDiffDelete = 'DiffviewDiffDelete',
      -- DiffviewFolderName = 'DiffviewFolderName',
      -- DiffviewFolderSign = 'DiffviewFolderSign',
      -- DiffviewSignColumn = 'DiffviewSignColumn',
      -- DiffviewStatusLine = 'DiffviewStatusLine',
      -- DiffviewEndOfBuffer = 'DiffviewEndOfBuffer',
      -- DiffviewStatusAdded = 'DiffviewStatusAdded',
      -- DiffviewStatusBroken = 'DiffviewStatusBroken',
      -- DiffviewStatusCopied = 'DiffviewStatusCopied',
      -- DiffviewStatusLineNC = 'DiffviewStatusLineNC',
      -- DiffviewWinSeparator = 'DiffviewWinSeparator',
      -- DiffviewDiffDeleteDim = 'DiffviewDiffDeleteDim',
      -- DiffviewFilePanelPath = 'DiffviewFilePanelPath',
      -- DiffviewStatusDeleted = 'DiffviewStatusDeleted',
      -- DiffviewStatusIgnored = 'DiffviewStatusIgnored',
      -- DiffviewStatusRenamed = 'DiffviewStatusRenamed',
      -- DiffviewStatusUnknown = 'DiffviewStatusUnknown',
      -- DiffviewFilePanelTitle = 'DiffviewFilePanelTitle',
      -- DiffviewStatusModified = 'DiffviewStatusModified',
      -- DiffviewStatusUnmerged = 'DiffviewStatusUnmerged',
      -- DiffviewDiffAddAsDelete = 'DiffviewDiffAddAsDelete',
      -- DiffviewStatusUntracked = 'DiffviewStatusUntracked',
      -- DiffviewFilePanelCounter = 'DiffviewFilePanelCounter',
      -- DiffviewStatusTypeChange = 'DiffviewStatusTypeChange',
      -- DiffviewFilePanelFileName = 'DiffviewFilePanelFileName',
      -- DiffviewFilePanelRootPath = 'DiffviewFilePanelRootPath',
      -- DiffviewFilePanelSelected = 'DiffviewFilePanelSelected',
      -- DiffviewFilePanelConflicts = 'DiffviewFilePanelConflicts',
      -- DiffviewFilePanelDeletions = 'DiffviewFilePanelDeletions',
      -- DiffviewFilePanelInsertions = 'DiffviewFilePanelInsertions',
    })
  end,
}

return M
