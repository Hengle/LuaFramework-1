TipPaTaRewardView = TipPaTaRewardView or BaseClass(BaseView)
function TipPaTaRewardView:__init()
	self.ui_config = {"uis/views/tips/patatips", "PaTaTipsViewWithReward"}
	self.view_layer = UiLayer.Pop
	self:SetMaskBg()
end

function TipPaTaRewardView:ReleaseCallBack()
	if self.cal_time_quest then
		GlobalTimerQuest:CancelQuest(self.cal_time_quest)
		self.cal_time_quest = nil
	end

	for k,v in pairs(self.victory_items) do
		if v.item_cell then
			v.item_cell:DeleteMe()
		end
	end
	self.victory_items = {}
	-- 清理变量和对象
	self.desc_text = nil
end

function TipPaTaRewardView:LoadCallBack()
	self:ListenEvent("Close",BindTool.Bind(self.OnCloseClick, self))
	self:ListenEvent("OkClick",BindTool.Bind(self.OnOkClick, self))
	self.desc_text = self:FindVariable("desc_text")
	self.victory_items = {}
	for i = 1, 3 do
		local item_obj = self:FindObj("VItem"..i)
		local item_cell = ItemCell.New()
		item_cell:SetInstanceParent(item_obj)
		self.victory_items[i] = {item_obj = item_obj, item_cell = item_cell}
	end
end

function TipPaTaRewardView:OpenCallBack()
	self:Flush()
end

function TipPaTaRewardView:CloseCallBack()
	self.no_func = nil
	self.ok_func = nil
	self.data = nil
	if self.cal_time_quest then
		GlobalTimerQuest:CancelQuest(self.cal_time_quest)
		self.cal_time_quest = nil
	end
end

function TipPaTaRewardView:OnFlush()
	self:CalTime()
	if self.data then
		for i, j in pairs(self.victory_items) do
			if self.data[i] then
				j.item_cell:SetData(self.data[i])
				j.item_obj:SetActive(true)
			else
				j.item_obj:SetActive(false)
			end
		end
	end
end

function TipPaTaRewardView:OnCloseClick()
	if self.no_func ~= nil then
		self.no_func()
	end
	self:Close()
end

function TipPaTaRewardView:SetNoCallback(func)
	self.no_func = func
end

function TipPaTaRewardView:SetOKCallback(func)
	self.ok_func = func
end

function TipPaTaRewardView:SetDataList(data)
	self.data = data
end

function TipPaTaRewardView:SetData()
	self:Flush()
end

function TipPaTaRewardView:OnOkClick()
	if self.ok_func then
		self.ok_func()
	end
	self:Close()
end

function TipPaTaRewardView:CalTime()
	if self.cal_time_quest then return end
	local timer_cal = 5
	self.cal_time_quest = GlobalTimerQuest:AddRunQuest(function()
		timer_cal = timer_cal - UnityEngine.Time.deltaTime
		if timer_cal <= 0 then
			self:OnOkClick()
			self.cal_time_quest = nil
		else
			self.desc_text:SetValue(math.floor(timer_cal))
		end
	end, 0)
end