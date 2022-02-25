DashScript = {}

for dir in io.popen([[dir "../Data/Script/DashScript/Configs/" /b]]):lines() do
	if string.find(dir, ".lua") then
		require(string.format("DashScript\\Configs\\%s", string.gsub(dir, ".lua", "")))
	end
end

for dir in io.popen(string.format([[dir "../Data/Script/DashScript/%d/" /b]], GetGameServerCode())):lines() do
	if string.find(dir, ".lua") then
		require(string.format("DashScript\\%d\\%s", GetGameServerCode(), string.gsub(dir, ".lua", "")))
	end
end

if DashScript.Switch ~= nil and DashScript.Switch == true then
    BridgeFunctionAttach('OnUserDie','DashScript_OnUserDie')
end

DashScript_OnUserDie = function(aIndex,bIndex)
    
    if GetObjectConnected(aIndex) == 3 then

        if DashScript.CastleSiege == true and GetObjectMap(aIndex) == 30 and GetObjectCSGuildSide(aIndex) ~= 0 and GetObjectCSGuildSide(bIndex) ~= 0 then
            SQLAsyncQuery(string.format("EXEC G_DashRanking '%s','0','1','%d','CS';",GetObjectName(aIndex),(os.time()+300)))
            SQLAsyncQuery(string.format("EXEC G_DashRanking '%s','1','0','%d','CS';",GetObjectName(bIndex),(os.time()+300)))
        end

        if DashScript.ArkaWar == true and G_InArray(GetObjectMap(aIndex),{92,96,101}) ~= -1 then
            SQLAsyncQuery(string.format("EXEC G_DashRanking '%s','0','1','%d','AW';",GetObjectName(aIndex),(os.time()+300)))
            SQLAsyncQuery(string.format("EXEC G_DashRanking '%s','1','0','%d','AW';",GetObjectName(bIndex),(os.time()+300)))
        end
        
        if DashScript.HuntPoint == true and HuntPoint ~= nil and HuntPoint.System[aIndex] ~= nil and HuntPoint.System[bIndex] ~= nil then
            if HuntPoint.System[aIndex].BattleTime > 0 and HuntPoint.System[bIndex].BattleTime > 0 then
                SQLAsyncQuery(string.format("EXEC G_DashRanking '%s','0','1','%d','BH';",GetObjectName(aIndex),(os.time()+300)))
                SQLAsyncQuery(string.format("EXEC G_DashRanking '%s','1','0','%d','BH';",GetObjectName(bIndex),(os.time()+300)))
            end
        end
        
    end
    
end