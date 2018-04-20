module(...,package.seeall)

--[[
��������print
����  ����ӡ�ӿڣ����ļ��е����д�ӡ�������testǰ׺
����  ����
����ֵ����
]]
local function print(...)
	_G.print("test",...)
end

-----------------------encode����------------------------
local torigin =
{
	KEY1 = "VALUE1",
	KEY2 = "VALUE2",
	KEY3 = "VALUE3",
	KEY4 = "VALUE4",
	KEY5 = {KEY5_1="VALU5_1",KEY5_2="VALU5_2"},
	KEY6 = {1,2,3},
}

local jsondata = json.encode(torigin)
print(jsondata)
-----------------------encode����------------------------




-----------------------decode����------------------------
--{"KEY3":"VALUE3","KEY4":"VALUE4","KEY2":"VALUE2","KEY1":"VALUE1","KEY5":{"KEY5_2":"VALU5_2","KEY5_1":"VALU5_1"}},"KEY6":[1,2,3]}
local origin = "{\"KEY3\":\"VALUE3\",\"KEY4\":\"VALUE4\",\"KEY2\":\"VALUE2\",\"KEY1\":\"VALUE1\",\"KEY5\":{\"KEY5_2\":\"VALU5_2\",\"KEY5_1\":\"VALU5_1\"},\"KEY6\":[1,2,3]}"
local tjsondata = json.decode(origin)
print(tjsondata["KEY1"])
print(tjsondata["KEY2"])
print(tjsondata["KEY3"])
print(tjsondata["KEY4"])
print(tjsondata["KEY5"]["KEY5_1"],tjsondata["KEY5"]["KEY5_2"])
print(tjsondata["KEY6"][1],tjsondata["KEY6"][2],tjsondata["KEY6"][3])
-----------------------decode����------------------------
