module(...,package.seeall)

--[[
函数名：print
功能  ：打印接口，此文件中的所有打印都会加上test前缀
参数  ：无
返回值：无
]]
local function print(...)
	_G.print("test",...)
end

-------------------------PIN22测试开始-------------------------
local pin22flg = true
--[[
函数名：pin22set
功能  ：设置PIN22引脚的输出电平，1秒反转一次
参数  ：无
返回值：无
]]
local function pin22set()
	pins.set(pin22flg,pins.PIN22)
	pin22flg = not pin22flg
end
--启动1秒的循环定时器，设置PIN22引脚的输出电平
sys.timer_loop_start(pin22set,1000)
-------------------------PIN22测试结束-------------------------


-------------------------PIN23测试开始-------------------------
local pin23flg = true
--[[
函数名：pin23set
功能  ：设置PIN23引脚的输出电平，1秒反转一次
参数  ：无
返回值：无
]]
local function pin23set()
	pins.set(pin23flg,pins.PIN23)
	pin23flg = not pin23flg
end
--启动1秒的循环定时器，设置PIN22引脚的输出电平
sys.timer_loop_start(pin23set,1000)
-------------------------PIN23测试结束-------------------------


-------------------------PIN5测试开始-------------------------
--[[
函数名：ind
功能  ：设置PIN5引脚逻辑中断处理
参数  ：
        e：消息，"PIN_PIN5_IND"
		v：如果为true，表示高电平中断；false表示低电平中断
返回值：无
]]
local function ind(e,v)
	print("ind",e,v)
end
--注册PIN5引脚逻辑中断的处理函数
sys.regapp(ind,"PIN_"..pins.PIN5.name.."_IND")
-------------------------PIN5测试结束-------------------------


-------------------------PIN20测试开始-------------------------
--[[
函数名：pin20get
功能  ：读取PIN20引脚的输入电平
参数  ：无
返回值：无
]]
local function pin20get()
	local v = pins.get(pins.PIN20)
	print("pin20get",v and "low" or "high")
end
--启动1秒的循环定时器，读取PIN22引脚的输入电平
sys.timer_loop_start(pin20get,1000)
-------------------------PIN20测试结束-------------------------
