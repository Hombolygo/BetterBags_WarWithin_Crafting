---@class BBTWWC
local addon = select(2, ...)

---@class BetterBags: AceAddon
local BetterBags = LibStub('AceAddon-3.0'):GetAddon("BetterBags")
---@class Categories: AceModule
local categories = BetterBags:GetModule('Categories')
---@class Localization: AceModule
local L = BetterBags:GetModule('Localization')

for category, items in pairs(addon.db) do
	categories:WipeCategory(L:G(category))
	for _, item in pairs(items) do
		categories:AddItemToCategory(item, L:G(category))
	end
end
