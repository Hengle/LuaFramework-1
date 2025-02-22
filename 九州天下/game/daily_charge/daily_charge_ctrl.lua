require("game/daily_charge/daily_charge_data")
require("game/daily_charge/daily_charge_view")
DailyChargeCtrl = DailyChargeCtrl or BaseClass(BaseController)
function DailyChargeCtrl:__init()
	if DailyChargeCtrl.Instance then
		print_error("[DailyChargeCtrl] Attemp to create a singleton twice !")
	end
	DailyChargeCtrl.Instance = self
	self:RegisterAllProtocols()
	self.data = DailyChargeData.New()
	self.view = DailyChargeView.New(ViewName.DailyChargeView)
end

function DailyChargeCtrl:__delete()
	if self.data then
		self.data:DeleteMe()
		self.data = nil
	end

	if self.view then
		self.view:DeleteMe()
		self.view = nil
	end
	DailyChargeCtrl.Instance = nil
end

function DailyChargeCtrl:GetData()
	return self.data
end

function DailyChargeCtrl:GetView()
	return self.view
end

function DailyChargeCtrl:FlusView()
	if self.view then
		self.view:Flush()
	end
end

function DailyChargeCtrl:FlushBtnState()
	if self.view:IsOpen() then
		self.view:FlushBtnStates()
	end
end

function DailyChargeCtrl:RegisterAllProtocols()
	self:RegisterProtocol(SCChongzhidahuikui2Info, "OnSCChongzhidahuikui2Info")
end

function DailyChargeCtrl:OnSCChongzhidahuikui2Info(protocol)
	self.data:OnSCChongzhidahuikui2Info(protocol)
	RemindManager.Instance:Fire(RemindName.DailyCharge)
	if self.view:IsOpen() then
		self.view:Flush()
		self.view:FlushBtnStates()
	end
end