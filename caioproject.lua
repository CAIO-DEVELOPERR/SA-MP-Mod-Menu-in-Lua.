require "lib.moonloader" 
local sampev = require ("lib.samp.events")
local memory = require("memory")
local ffi           = require ("ffi")
local imgui = require 'imgui'
local vkeys = require 'vkeys'

local inicfg = require 'inicfg'

local ffi        = require('ffi')


jasndunaunsudh3289h29u3bhudbwubs81h28whedhs9uhdu9gba8ygy8gby8be372tg378yq230892170837490723hefubs8uybeyb =  "Ugenrl"

local getbonePosition = ffi.cast("int (__thiscall*)(void*, float*, int, bool)", 0x5E4280)

local stun_anims = {'DAM_armL_frmBK', 'DAM_armL_frmFT', 'DAM_armL_frmLT', 'DAM_armR_frmBK', 'DAM_armR_frmFT', 'DAM_armR_frmRT', 'DAM_LegL_frmBK', 'DAM_LegL_frmFT', 'DAM_LegL_frmLT', 'DAM_LegR_frmBK', 'DAM_LegR_frmFT', 'DAM_LegR_frmRT', 'DAM_stomach_frmBK', 'DAM_stomach_frmFT', 'DAM_stomach_frmLT', 'DAM_stomach_frmRT'}


local other_font = renderCreateFont('Tahoma', 7, 5)
local lwsi = renderCreateFont('Tahoma', 7, 5)


local dataHoraExpiracao = "06/07/2029"



local directIni = "../project_Aknesh/configs.ini"
local ini = inicfg.load(inicfg.load({
    usuario={
        autologar = false,
        key = "",
    },
}, directIni))
inicfg.save(ini, directIni)



































--Mod Info:


script_author('Kidoshe Amikuranyakish')
script_version_number(1.1)



local rb_selected = 0


avisado = false

apdate = false
update2 = false


isFind3 = false

isFind4 = false


--silent aim

local imgState = imgui.ImBool(false)
local imgClickInfState = imgui.ImBool(false)
local imgSliderInfFov = imgui.ImFloat(0.0)
local imgClickInfAng = imgui.ImBool(false)
local imgClickInfObj = imgui.ImBool(false)
local imgClickInfVeh = imgui.ImBool(false)
local imgClickInfLine = imgui.ImBool(false)
local imgSliderInfBlood = imgui.ImFloat(0.0)
local imgSliderInfRand = imgui.ImFloat(0.0)
local imgClickinfCust = imgui.ImBool(false)
local imgClickinfClist = imgui.ImBool(false)


local imgClickinfTorso = imgui.ImBool(false)
local imgClickinfGroin = imgui.ImBool(false)
local imgClickinfHead = imgui.ImBool(false)



local imgSliderInfFovN = { imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0) }
local imgSliderInfRandN = { imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0), imgui.ImFloat(0.0) }




local main_window_state = imgui.ImBool(false)
local aviso_strc = imgui.ImBool(false)




local Esp = imgui.ImBool(false)
local EspLine = imgui.ImBool(false)
local EspBox = imgui.ImBool(false)
local EspBone = imgui.ImBool(false)
local EspInfo = imgui.ImBool(false)

local NoCamRestore = imgui.ImBool(false)
local StartBot = imgui.ImBool(false)
local AutoID = imgui.ImBool(false)
local GodMode = imgui.ImBool(false)
local OxyInf = imgui.ImBool(false)
local AirBreak = imgui.ImBool(false)
local NoFall = imgui.ImBool(false)
local IfiniteRun = imgui.ImBool(false)
local NoStun = imgui.ImBool(false)
local noClipVel = imgui.ImFloat(0.0)
--aim bot Codes


local smooth = imgui.ImFloat(0.0)
local radius = imgui.ImFloat(0.6)
local enable = imgui.ImBool(false)
local clistFilter = imgui.ImBool(false)
local visibleCheck = imgui.ImBool(false)
local checkStuned = imgui.ImBool(false)
local checkPause = imgui.ImBool(false)


--Paramedic Bools

local IsBotMedic =  imgui.ImBool(false)
local isAutoIdMedic =  imgui.ImBool(false)
local isBurlatorActivated = imgui.ImBool(false)

-- --------------------------- --
local Fog = imgui.ImInt(0)
local DrawDist = imgui.ImInt(0)




local config = inicfg.load({settings =
{
    infState = imgClickInfState.v,
    infFov = imgSliderInfFov.v,
    infAng = imgClickInfAng.v,
    infLine = imgClickInfLine.v,
    infBlood = imgSliderInfBlood.v,
    infRand = imgSliderInfRand.v,
    infCust = imgClickinfCust.v,
    infClist = imgClickinfClist.v,
    
    
    infTorso = imgClickinfTorso.v,
    infGroin = imgClickinfGroin.v,
    infHead = imgClickinfHead.v,
    
    infFovN1 = imgSliderInfFovN[1].v,
    infFovN2 = imgSliderInfFovN[2].v,
    infFovN3 = imgSliderInfFovN[3].v,
    infFovN4 = imgSliderInfFovN[4].v,
    infFovN5 = imgSliderInfFovN[5].v,
    infFovN6 = imgSliderInfFovN[6].v,
    infFovN7 = imgSliderInfFovN[7].v,
    infFovN8 = imgSliderInfFovN[8].v,
    infFovN9 = imgSliderInfFovN[9].v,
    infFovN10 = imgSliderInfFovN[10].v,
    infFovN11 = imgSliderInfFovN[11].v,
    infFovN12 = imgSliderInfFovN[12].v,
    infFovN13 = imgSliderInfFovN[13].v,
    infFovN14 = imgSliderInfFovN[14].v,
    
    infRandN1 = imgSliderInfRandN[1].v,
    infRandN2 = imgSliderInfRandN[2].v,
    infRandN3 = imgSliderInfRandN[3].v,
    infRandN4 = imgSliderInfRandN[4].v,
    infRandN5 = imgSliderInfRandN[5].v,
    infRandN6 = imgSliderInfRandN[6].v,
    infRandN7 = imgSliderInfRandN[7].v,
    infRandN8 = imgSliderInfRandN[8].v,
    infRandN9 = imgSliderInfRandN[9].v,
    infRandN10 = imgSliderInfRandN[10].v,
    infRandN11 = imgSliderInfRandN[11].v,
    infRandN12 = imgSliderInfRandN[12].v,
    infRandN13 = imgSliderInfRandN[13].v,
    infRandN14 = imgSliderInfRandN[14].v
}})


local titulo = "{FFFF45}Samp Premium Cheat"



function DisableAllBody(tr, gr, hd)
    imgClickinfTorso.v = tr config.settings.infTorso = tr
    imgClickinfGroin.v = gr config.settings.infGroin = gr
    imgClickinfHead.v = hd config.settings.infHead = hd
end





function StartInKey()
    tarPed = -1
    imgClickInfState.v = config.settings.infState
end






local font = renderCreateFont("Arial", 14, 10)

local tab = 1
local tab_cvr = 1


local NoSpread = imgui.ImBool(false)

inputbuffer = imgui.ImBuffer(256)



local idglobal = 0;


function imgui.OnDrawFrame()
    if main_window_state.v then
        imgui.ShowCursor = true
        local IscreenWidth, IscreenHeight = getScreenResolution();
        imgui.SetNextWindowPos(imgui.ImVec2(IscreenWidth / 2, IscreenHeight / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
        imgui.SetNextWindowSize(imgui.ImVec2(400, 304), imgui.Cond.FirstUseEver)
        imgui.Begin("Your Name Here", main_window_state, 2+32+128+2048+imgui.WindowFlags.NoTitleBar)
        imgui.BeginChild('##Head', imgui.ImVec2(0, 30), true)
        imgui.Text("Project by Kidoshe",imgui.ImVec2(0, 30), true)
        imgui.SameLine()
        imgui.EndChild()
        imgui.BeginChild('##Right', imgui.ImVec2(110, 0), true)
        if imgui.Button('Aim Bot',imgui.ImVec2(-1, 20)) then
            tab = 1
        end
        if imgui.Button('Visual',imgui.ImVec2(-1, 20)) then
            tab = 2
        end
        if imgui.Button('Jogador',imgui.ImVec2(-1, 20)) then 
           tab = 3
        end

        imgui.NewLine() imgui.NewLine() imgui.NewLine() imgui.NewLine() imgui.NewLine() imgui.NewLine()imgui.NewLine()imgui.NewLine()
        if imgui.Button('Creditos',imgui.ImVec2(-1, 20)) then
            main_window_state.v = not main_window_state.v
            sampShowDialog(0, "{17fc03}# Creditos", "{ffffff} Mod Criado Por {17fc03}Caio Gabriel {de04d3}(C4IO GAM3R BR)\n\n{ffffff}Tambem nao se esqueca de se Inscrever-se em meu canal do youtube: {00ccff}C4IO GAM3R BR\n\n{ffffff}Desfrute do Nosso Menu!", "Okay.", "", 0)
        end
        imgui.EndChild()
        imgui.SameLine()
        imgui.BeginChild('##main', imgui.ImVec2(0, 0), true)
        if tab == 1 then 
            renderFontDrawText(other_font, string.format('{fc0303}(<!>) {7bfc03}AS FUNCOES DE AIM BOT SAO PERIGOSAS E\n PODEM SER FACILMENTE DETECTADA POR ALGUM ADMIN.'), 15,343, 0xFFFF0000)
            imgui.Checkbox('(TIRO) Sem Espalhar', NoSpread)
            imgui.Separator()
            imgui.Checkbox('Ativar Aim Bot', enable)
            imgui.Checkbox('Chechar Visiveis', visibleCheck)
            imgui.Checkbox('Checar Afk', checkPause)
            imgui.SliderFloat('Range', radius, 0.0, 100.0, '%.1f')
            imgui.SliderFloat('Aim Suave', smooth, 0.0, 50.0, '%.1f')
            imgui.Separator()
            imgui.Text('Silent Aim:')
            imgui.Separator()
            if imgui.Checkbox('Ligado/Desligado', imgClickInfState) then
                tarPed = -1
                config.settings.infState = imgClickInfState.v
            end
            if imgui.SliderFloat('Fov', imgSliderInfFov, 0.0, 80.0) then
                config.settings.infFov = imgSliderInfFov.v
            end
            if imgui.SliderFloat('Hit', imgSliderInfRand, 0.0, 100.0) then
                config.settings.infRand = imgSliderInfRand.v
            end
            if imgui.SliderFloat('acerto', imgSliderInfBlood, 0.0, 100.0) then
                config.settings.infBlood = imgSliderInfBlood.v
            end
            if imgui.Checkbox('Sync Z', imgClickInfAng) then
                config.settings.infAng = imgClickInfAng.v
            end
            imgui.Checkbox('Ignorar Objetos', imgClickInfObj) 
            imgui.Checkbox('Ignorar veiculos', imgClickInfVeh) 

            if imgui.Checkbox('Ignorar minha equipe', imgClickinfClist) then
            config.settings.infClist = imgClickinfClist.v
        
            end
            if imgui.Checkbox('Renderizar Linha', imgClickInfLine) then
            config.settings.infLine = imgClickInfLine.v
     
            end
            imgui.Text('Ponto de Mira:')
            if imgui.Checkbox('Cabeça', imgClickinfHead) then DisableAllBody(false, false, true) end
            if imgui.Checkbox('Tronco', imgClickinfTorso) then DisableAllBody(true, false, false) end
            if imgui.Checkbox('Quadril', imgClickinfGroin) then DisableAllBody(false, true, false) end
        elseif tab == 2 then 
            imgui.Checkbox('Ativar Esp', Esp)
            imgui.Checkbox('Ativar Linhas', EspLine)
            imgui.Checkbox('Ativar Caixas', EspBox)
            imgui.Checkbox('Ativar Esqueleto', EspBone)
            imgui.Checkbox('Ativar Player Info', EspInfo)
            imgui.Separator()
            imgui.Text('Posição de Linha:')
            imgui.Separator()
            if imgui.RadioButton('Cima', rb_selected == 1) then 
              rb_selected = 1
            end
            if imgui.RadioButton('Centro', rb_selected == 2) then
              rb_selected = 2
            end
            if imgui.RadioButton('Baixo', rb_selected == 3) then
              rb_selected = 3
            end
        elseif tab == 3 then 
            renderFontDrawText(other_font, string.format('{fc0303}(<!>) {7bfc03}ALERTA MAXIMO: ESSAS FUNCOES PODEM SER ALTAMENTE\n PERIGOSAS! NAO RECOMENDO.'), 15,343, 0xFFFF0000)
            imgui.Checkbox('Vida Infinita', GodMode)
            imgui.Checkbox('Oxigenio Infinito', OxyInf)
            imgui.Checkbox('Stamina Infinita', IfiniteRun)
            imgui.Checkbox('Sem atordoamento',NoStun)
            imgui.Checkbox('Sem Restoração (Camera)', NoCamRestore)
            imgui.Checkbox('Nunca Cair', NoFall)
            imgui.Checkbox('Air Break', AirBreak)
            imgui.Separator()
            imgui.Text('Velocidade de Air Break:')
            imgui.SliderFloat('', noClipVel, 0.0, 90.0,imgui.ImVec2(-1, -1))
        elseif tab == 4 then
            imgui.Button('FERRAMENTAS PARA CVR',imgui.ImVec2(-1, 20))

            ----------------------------------------------------------------

            imgui.Checkbox('AUTO PRENDER', StartBot) imgui.SameLine() imgui.Checkbox('AUTO ID', AutoID)
            imgui.Separator()
            if StartBot.v then
                if AutoID.v then
                    imgui.Text('o MODO AUTO ID Esta Ativado.')
                else
                    imgui.InputText("o ID:", inputbuffer)
                    if imgui.Button('Salvar Alvo',imgui.ImVec2(-1, 20)) then
                        if inputbuffer.v == "" then
                            isTriue = false
                            printStringNow('~r~Falha,essa caixa nao nao pode ficar Vazio!', 3224)
                        else
                            isTriue =  true
                            printStringNow('~b~Voce ativou para para o ID: ~g~'..inputbuffer.v, 3224)
                        end
                    end
                    imgui.Text('1. /autoprender <id>\ncomo Funciona: Quando você\nchegar 10 metros  bandido-\nele auto ira usar o /abordagem\n e se for recusada,\n ele vai auto dar o comando\n/algemar.\n')
                end
                
            end
            imgui.Text("\nao Marcar, o bot Ira comecar.")
            imgui.Separator()
            imgui.Checkbox("AUTO PARAMEDICO", IsBotMedic)
            imgui.Checkbox("AUTO PARAMEDICO ID", isAutoIdMedic)
            imgui.Separator()
            imgui.Text('Burlar ANTI-FK')
            imgui.Separator()
            imgui.Checkbox('Burlar Anti AFK', isBurlatorActivated)
        end
        imgui.EndChild()
        imgui.End()
    else
        imgui.ShowCursor = false
    end

    if aviso_strc.v then
        imgui.ShowCursor = true
        local IscreenWidth, IscreenHeight = getScreenResolution();
        imgui.SetNextWindowPos(imgui.ImVec2(IscreenWidth / 2, IscreenHeight / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
        imgui.SetNextWindowSize(imgui.ImVec2(530, -1), imgui.Cond.FirstUseEver)
        imgui.Begin("Por Favor, Efetue o Login", main_window_state, 2+32+128+2048)
        imgui.Text("Escreva Sua Chave Abaixo:",imgui.ImVec2(0, 30), true)
        imgui.InputText('Key', inputbuffer)
        if imgui.Button('<--Logar-->', imgui.ImVec2(-1, 0)) then
            avisado = true
            aviso_strc.v = false
            main_window_state.v = not main_window_state.v
        end
        --if imgui.Button('Continue',imgui.ImVec2(-1, 20)) then
          -- avisado = true
           --aviso_strc.v = false
             --main_window_state.v = not main_window_state.v
       -- end
        imgui.End()
    end
end


function main()
    repeat wait(0) until isSampAvailable()
    sampAddChatMessage(titulo..' {FFFFFF}Carregado!', -1)
    sampAddChatMessage(titulo..' {FFFFFF}Versao 1.1!', -1)
    sampAddChatMessage(titulo..' {FFFFFF}Divirta-se e use e abuse.!', -1)
    sampAddChatMessage(titulo..' {FFFFFF}Aperta *END* ou digita </caio> para abrir o menu.', -1)
    _, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
	nisk2 = sampGetPlayerNickname(id)
   --[[ if nisk2 == jasndunaunsudh3289h29u3bhudbwubs81h28whedhs9uhdu9gba8ygy8gby8be372tg378yq230892170837490723hefubs8uybeyb then 
    else
        sampAddChatMessage('voce nao pode usar este script!', -1)
		thisScript():unload()
		imgui.ShowCursor = false
    end]]
    lua_thread.create(smooth_aimbot)
    lua_thread.create(Visual)
    lua_thread.create(funcsb)
    lua_thread.create(Actor)
    lua_thread.create(autoprender)
    lua_thread.create(burlarAgora)
    imgui.ShowCursor = main_window_state.v
    sampRegisterChatCommand('caio', function()
        if avisado == false then
            aviso_strc.v = not aviso_strc.v
            printStringNow('~b~Efetue ~g~Login', 2300)
        else
            main_window_state.v = not main_window_state.v
        end
    end)
    StartInKey()
    imgui.Process = true
    while true do
        wait(100)
        if imgClickInfObj.v == true then
            update = false
        else
            update = true
        end
         if imgClickInfVeh.v == true then
            update2 = false
        else
            update2 = true
        end  
    end
end



isTriue = false





function funcsb()
    if NoSpread.v then
        memory.setfloat(0x8D2E64, 1)
    else
        memory.setfloat(0x8D2E64, 0)
    end
end



function fix(angle)
    if angle > math.pi then
        angle = angle - (math.pi * 2)
    elseif angle < -math.pi then
        angle = angle + (math.pi * 2)
    end
    return angle
end

function GetNearestPed(fov)
    local maxDistance = 35
    local nearestPED = -1
    for i = 0, sampGetMaxPlayerId(true) do
        if sampIsPlayerConnected(i) then
            local find, handle = sampGetCharHandleBySampPlayerId(i)
            if find then
                if isCharOnScreen(handle) then
                    if not isCharDead(handle) then
                        local _, currentID = sampGetPlayerIdByCharHandle(PLAYER_PED)
                        local enPos = {GetBodyPartCoordinates(GetNearestBone(handle), handle)}
                        local myPos = {getActiveCameraCoordinates()}
                        local vector = {myPos[1] - enPos[1], myPos[2] - enPos[2], myPos[3] - enPos[3]}
                        if isWidescreenOnInOptions() then coefficentZ = 0.0778 else coefficentZ = 0.103 end
                        local angle = {(math.atan2(vector[2], vector[1]) + 0.04253), (math.atan2((math.sqrt((math.pow(vector[1], 2) + math.pow(vector[2], 2)))), vector[3]) - math.pi / 2 - coefficentZ)}
                        local view = {fix(representIntAsFloat(readMemory(0xB6F258, 4, false))), fix(representIntAsFloat(readMemory(0xB6F248, 4, false)))}
                        local distance = math.sqrt((math.pow(angle[1] - view[1], 2) + math.pow(angle[2] - view[2], 2))) * 57.2957795131
                        if distance > fov then check = true else check = false end
                        if not check then
                            local myPos = {getCharCoordinates(PLAYER_PED)}
                            local distance = math.sqrt((math.pow((enPos[1] - myPos[1]), 2) + math.pow((enPos[2] - myPos[2]), 2) + math.pow((enPos[3] - myPos[3]), 2)))
                            if (distance < maxDistance) then
                                nearestPED = handle
                                maxDistance = distance
                            end
                        end
                    end
                end
            end
        end
    end
    return nearestPED
end

function GetNearestBone(handle)
    local maxDist = 20000    
    local nearestBone = -1
    bone = {42, 52, 23, 33, 3, 22, 32, 8}
    for n = 1, 8 do
        local crosshairPos = {convertGameScreenCoordsToWindowScreenCoords(339.1, 179.1)}
        local bonePos = {GetBodyPartCoordinates(bone[n], handle)}
        local enPos = {convert3DCoordsToScreen(bonePos[1], bonePos[2], bonePos[3])}
        local distance = math.sqrt((math.pow((enPos[1] - crosshairPos[1]), 2) + math.pow((enPos[2] - crosshairPos[2]), 2)))
        if (distance < maxDist) then
            nearestBone = bone[n]
            maxDist = distance
        end 
    end
    return nearestBone
end

function GetBodyPartCoordinates(id, handle)
    if doesCharExist(handle) then
        local pedptr = getCharPointer(handle)
        local vec = ffi.new("float[3]")
        getbonePosition(ffi.cast("void*", pedptr), vec, id, true)
        return vec[0], vec[1], vec[2]
    end
end

function CheckStuned()
    for k, v in pairs(stun_anims) do
        if isCharPlayingAnim(PLAYER_PED, v) then
            return false
        end
    end
    return true
end

function smooth_aimbot()
    if enable.v and isKeyDown(vkeys.VK_RBUTTON) then
        local handle = GetNearestPed(radius.v)
        if handle ~= -1 then
            local _, myID = sampGetPlayerIdByCharHandle(PLAYER_PED)
            local result, playerID = sampGetPlayerIdByCharHandle(handle)
            if result then
                if (checkStuned.v and not CheckStuned()) then return false end
                if (clistFilter.v and sampGetPlayerColor(myID) == sampGetPlayerColor(playerID)) then return false end
                if (checkPause.v and sampIsPlayerPaused(playerID)) then return false end
                local myPos = {getActiveCameraCoordinates()}
               -- local enPos = {GetBodyPartCoordinates(GetNearestBone(handle), handle)}
                enPos = {GetBodyPartCoordinates(7, handle)}
                if not visibleCheck.v or (visibleCheck.v and isLineOfSightClear(myPos[1], myPos[2], myPos[3], enPos[1], enPos[2], enPos[3], true, true, false, true, true)) then
                    local vector = {myPos[1] - enPos[1], myPos[2] - enPos[2], myPos[3] - enPos[3]}
                    if isWidescreenOnInOptions() then coefficentZ = 0.0778 else coefficentZ = 0.103 end
                    local angle = {(math.atan2(vector[2], vector[1]) + 0.04253), (math.atan2((math.sqrt((math.pow(vector[1], 2) + math.pow(vector[2], 2)))), vector[3]) - math.pi / 2 - coefficentZ)}
                    local view = {fix(representIntAsFloat(readMemory(0xB6F258, 4, false))), fix(representIntAsFloat(readMemory(0xB6F248, 4, false)))}
                    local difference = {angle[1] - view[1], angle[2] - view[2]}
                    local smooth = {difference[1] / smooth.v, difference[2] / smooth.v}
                    setCameraPositionUnfixed((view[2] + smooth[2]), (view[1] + smooth[1]))
                end
            end
        end
    end
    return false
end

--Esp Aqui.


function Visual()
    Flx,Fly  = getScreenResolution()
    if Esp.v then
        for i = 0, sampGetMaxPlayerId(true) do
            if sampIsPlayerConnected(i) then
                local find, handle = sampGetCharHandleBySampPlayerId(i)
                if find then
                     if isCharOnScreen(handle) then
                        local myPos = {GetBodyPartCoordinates(3, PLAYER_PED)}
                        local enPos = {GetBodyPartCoordinates(3, handle)}
                        if (isLineOfSightClear(myPos[1], myPos[2], myPos[3], enPos[1], enPos[2], enPos[3], true, true, false, true, true)) then
                            color = 0xFF00FF00
                        else
                            color = 0xFFFF0000
                        end
                        if EspLine.v then
                            local myPosScreen = {convert3DCoordsToScreen(GetBodyPartCoordinates(3, PLAYER_PED))}
                            local enPosScreen = {convert3DCoordsToScreen(GetBodyPartCoordinates(7, handle))}
                            if rb_selected == 1 then
                                renderDrawLine(Flx / 2,1, enPosScreen[1], enPosScreen[2], 1, color)
                            elseif rb_selected == 2 then
                                renderDrawLine(myPosScreen[1],myPosScreen[2], enPosScreen[1], enPosScreen[2], 1, color)
                                renderDrawPolygon(myPosScreen[1],myPosScreen[2], 6, 6, 6, 1.0, color)
                            elseif rb_selected == 3 then
                                renderDrawLine(Flx / 2,Fly / 1, enPosScreen[1], enPosScreen[2], 1, color)
                            end
                        end
                        if EspBone.v then
                            local t = {3, 4, 5, 51, 52, 41, 42, 31, 32, 33, 21, 22, 23, 2}
                            for v = 1, #t do
                                pos1 = {GetBodyPartCoordinates(t[v], handle)}
                                pos2 = {GetBodyPartCoordinates(t[v] + 1, handle)}
                                pos1Screen = {convert3DCoordsToScreen(pos1[1], pos1[2], pos1[3])}
                                pos2Screen = {convert3DCoordsToScreen(pos2[1], pos2[2], pos2[3])}
                                renderDrawLine(pos1Screen[1], pos1Screen[2], pos2Screen[1], pos2Screen[2], 1, color)
                            end
                            for v = 4, 5 do
                                pos2 = {GetBodyPartCoordinates(v * 10 + 1, handle)}
                                pos2Screen = {convert3DCoordsToScreen(pos2[1], pos2[2], pos2[3])}
                                renderDrawLine(pos1Screen[1], pos1Screen[2], pos2Screen[1], pos2Screen[2], 1, color)
                            end
                            local t = {53, 43, 24, 34, 6}
                            for v = 1, #t do
                                pos = {GetBodyPartCoordinates(t[v], handle)}
                                pos1Screen = {convert3DCoordsToScreen(pos[1], pos[2], pos[3])}
                            end
                        end
                        if EspBox.v then
                            local headPos = {GetBodyPartCoordinates(8, handle)}
                            local footPos = {GetBodyPartCoordinates(44, handle)}
                            local pointOne =
                            {
                                x = headPos[1] - 0.5,
                                y = headPos[2],
                                z = headPos[3] + 0.35
                            } 
                            local pointTwo =
                            {
                                x = headPos[1] + 0.5,
                                y = headPos[2],
                                z = headPos[3] - 0.35
                            }
                            local pointThree =
                            {
                                x = footPos[1] + 0.5,
                                y = footPos[2],
                                z = footPos[3] - 0.35
                            }
                            local pointOneScreen = {convert3DCoordsToScreen(pointOne.x, pointOne.y, pointOne.z)}
                            local pointTwoScreen = {convert3DCoordsToScreen(pointTwo.x, pointTwo.y, pointOne.z)}
                            local pointThreeScreen = {convert3DCoordsToScreen(pointOne.x, pointThree.y, pointThree.z)}
                            local pointFourScreen = {convert3DCoordsToScreen(pointTwo.x, pointThree.y, pointThree.z)}
                            renderDrawLine(pointOneScreen[1], pointOneScreen[2], pointTwoScreen[1], pointTwoScreen[2], 1, color)
                            renderDrawLine(pointThreeScreen[1], pointThreeScreen[2], pointFourScreen[1], pointFourScreen[2], 1, color)
                            renderDrawLine(pointOneScreen[1], pointOneScreen[2], pointThreeScreen[1], pointThreeScreen[2], 1, color)
                            renderDrawLine(pointTwoScreen[1], pointTwoScreen[2], pointFourScreen[1], pointFourScreen[2], 1, color)
                        end
                        if EspInfo.v then
                            local enPosGame = {GetBodyPartCoordinates(8, handle)}
                            local point = 
                            {
                                x = enPosGame[1] - 0.3,
                                y = enPosGame[2],
                                z = enPosGame[3]
                            }
                            local enPosScr = {convert3DCoordsToScreen(point.x, point.y, point.z)}
                            local distance = math.sqrt((math.pow((enPos[1] - myPos[1]), 2) + math.pow((enPos[2] - myPos[2]), 2) + math.pow((enPos[3] - myPos[3]), 2)))
                            renderFontDrawText(other_font, string.format('Nome: %s\nDistancia: %.1f\nAFK: %s', sampGetPlayerNickname(i), distance,  tostring(sampIsPlayerPaused(i))), enPosScr[1], enPosScr[2], color)
                        end
                    end
                end
            end
        end
    end
    return false
end



function autoprender()
    if StartBot.v then
        if wasKeyPressed(vkeys.VK_1) then
            if isFind3 then
                sampSendChat('/abordagem '..inputbuffer.v)
            end
        end
        if wasKeyPressed(vkeys.VK_2) then
            if isFind3 then
                sampSendChat('/algemar '..inputbuffer.v)
            end
        end
        if wasKeyPressed(vkeys.VK_3) then
            if isFind3 then
                sampSendChat('/prender '..inputbuffer.v)
            end
        end
         if wasKeyPressed(vkeys.VK_4) then
            if isFind3 then
                sampSendChat('/documentos '..inputbuffer.v)
            end
        end
        renderFontDrawText(other_font, string.format('===== TECLAS =====\n\nTecla: (1) = Abordar\nTecla: (2) = algemar\nTecla: (3) = Prender\nTecla: (4) = ver Documentos\n\n:============= INFO AUTO ID =============:\n Aborda o Jogador mais proximo de Voce-\nAlgema e prende. as Teclas usadas sao essas de cima.'), 20,343, 0xFFFF0000)
        ----: Abaixo :----

        -- è sampfuncs
        if AutoID.v then
            for i = 0, sampGetMaxPlayerId(true) do
                if sampIsPlayerConnected(i) then
                    local find, handle = sampGetCharHandleBySampPlayerId(i)
                    if find then
                        local myPosScreen = {convert3DCoordsToScreen(GetBodyPartCoordinates(7, PLAYER_PED))}
                        local enPosScreen = {convert3DCoordsToScreen(GetBodyPartCoordinates(7, handle))}
                        local enPos = {GetBodyPartCoordinates(GetNearestBone(handle), handle)}
                        local myPos = {getActiveCameraCoordinates()}
                        local vector = {myPos[1] - enPos[1], myPos[2] - enPos[2], myPos[3] - enPos[3]}
                        local distance = math.sqrt((math.pow((enPos[1] - myPos[1]), 2) + math.pow((enPos[2] - myPos[2]), 2) + math.pow((enPos[3] - myPos[3]), 2)))

                        if isCharInAnyCar(PLAYER_PED) then
                            if distance < 15.0 then
                                if isCharOnScreen(handle) then
                                renderFontDrawText(lwsi, string.format('<!>>ALVO<<!>'), enPosScreen[1], enPosScreen[2], 0xFF00FF00)
                                renderDrawLine(myPosScreen[1],myPosScreen[2], enPosScreen[1], enPosScreen[2], 1, 0xFF00FF00)
                                end
                                    
                                if wasKeyPressed(vkeys.VK_1) then
                                    sampSendChat('/abordagem '..i)
                                end
                                if wasKeyPressed(vkeys.VK_2) then
                                    sampSendChat('/algemar '..i)
                                end
                                if wasKeyPressed(vkeys.VK_3) then
                                    sampSendChat('/prender '..i)
                                end
                                 if wasKeyPressed(vkeys.VK_4) then
                                    sampSendChat('/documentos '..i)
                                end
                                return false
                            end 
                        else
                            if distance < 6.0 then
                                if isCharOnScreen(handle) then
                                renderFontDrawText(lwsi, string.format('<!>>ALVO<<!>'), enPosScreen[1], enPosScreen[2], 0xFF00FF00)
                                renderDrawLine(myPosScreen[1],myPosScreen[2], enPosScreen[1], enPosScreen[2], 1, 0xFF00FF00)
                                end

                                if wasKeyPressed(vkeys.VK_1) then
                                    sampSendChat('/abordagem '..i)
                                end
                                if wasKeyPressed(vkeys.VK_2) then
                                    sampSendChat('/algemar '..i)
                                end
                                if wasKeyPressed(vkeys.VK_3) then
                                    sampSendChat('/prender '..i)
                                end
                                if wasKeyPressed(vkeys.VK_4) then
                                    sampSendChat('/documentos '..i)
                                end
                                return false
                            end 
                        end
                    end
                end
            end
        else
            if isTriue then
                if sampIsPlayerConnected(inputbuffer.v) then
                    local find, handle = sampGetCharHandleBySampPlayerId(inputbuffer.v)
                    if find then
                        local myPosScreen = {convert3DCoordsToScreen(GetBodyPartCoordinates(3, PLAYER_PED))}
                        local enPosScreen = {convert3DCoordsToScreen(GetBodyPartCoordinates(3, handle))}
            
                        local enPos = {GetBodyPartCoordinates(GetNearestBone(handle), handle)}
                        local myPos = {getActiveCameraCoordinates()}
                        local vector = {myPos[1] - enPos[1], myPos[2] - enPos[2], myPos[3] - enPos[3]}
                        local distance = math.sqrt((math.pow((enPos[1] - myPos[1]), 2) + math.pow((enPos[2] - myPos[2]), 2) + math.pow((enPos[3] - myPos[3]), 2)))
                        if distance < 20.0 then
                            isFind3 =  true 
                            renderFontDrawText(lwsi, string.format('<!>>ALVO<<!>'), enPosScreen[1], enPosScreen[2], 0xFF00FF00)
                            renderDrawLine(myPosScreen[1],myPosScreen[2], enPosScreen[1], enPosScreen[2], 1, 0xFF00FF00)
                        else
                            isFind3 = false
                        end
                    end
                end
            end
        end
    end
    return false
end


function burlarAgora()
end



function sampev.onSendPlayerSync(data)
    if config.settings.infState and config.settings.infAng and camMode == 53 and tarPed ~= -1 then
    local result, id = sampGetPlayerIdByCharHandle(tarPed)
    
    if result then
        local posX, posY, posZ = getCharCoordinates(tarPed)
        local ang = getHeadingFromVector2d(posX - data.position.x, posY - data.position.y)
        local w, x, y, z = CalculateQuat(0.0, 0.0, ang)

        data.keysData = 2
        data.quaternion[0] = w
        data.quaternion[3] = -z
    end
    end
end

function sampev.onSendAimSync(data)
    camMode = data.camMode
    if config.settings.infState then
    
    local weap = getCurrentCharWeapon(PLAYER_PED)
    local _, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
    
    if weap ~= nil and GetWeaponOkay(weap) and not isCharDead(PLAYER_PED) and not sampIsPlayerPaused(id) then
        camX = data.camPos.x
        camY = data.camPos.y
        camZ = data.camPos.z
        
        frontX = data.camFront.x
        frontY = data.camFront.y
        frontZ = data.camFront.z
        CheckTarget()
    end
    end
end

function sampev.onSendBulletSync(data)
    if config.settings.infState and tarPed ~= -1 and stopwork ~= 1 and data.targetType ~= 1 and data.weaponId ~= nil and GetWeaponOkay(data.weaponId) then
    local result, id = sampGetPlayerIdByCharHandle(tarPed)

    if result then
        local respol = 0
        if config.settings.infClist then
            local _, mid = sampGetPlayerIdByCharHandle(PLAYER_PED)
            local color0 = sampGetPlayerColor(mid)
            local color1 = sampGetPlayerColor(id)
            if color0 ~= nil and color1 ~= nil and color0 == color1 then respol = 1 end
        end
        if respol == 0 then
            local posX, posY, posZ = getCharCoordinates(tarPed)
            local mposX, mposY, mposZ = getCharCoordinates(PLAYER_PED)
            
            local dist = getDistanceBetweenCoords3d(mposX, mposY, mposZ, posX, posY, posZ)
            local wdist = GetWeaponDist(data.weaponId)

            local rand = config.settings.infRand
            if config.settings.infCust then
                if data.weaponId == 22 then rand = config.settings.infRandN1
                elseif data.weaponId == 23 then rand = config.settings.infRandN2
                elseif data.weaponId == 24 then rand = config.settings.infRandN3
                elseif data.weaponId == 25 then rand = config.settings.infRandN4
                elseif data.weaponId == 26 then rand = config.settings.infRandN5
                elseif data.weaponId == 27 then rand = config.settings.infRandN6
                elseif data.weaponId == 28 then rand = config.settings.infRandN7
                elseif data.weaponId == 29 then rand = config.settings.infRandN8
                elseif data.weaponId == 30 then rand = config.settings.infRandN9
                elseif data.weaponId == 31 then rand = config.settings.infRandN10
                elseif data.weaponId == 32 then rand = config.settings.infRandN11
                elseif data.weaponId == 33 then rand = config.settings.infRandN12
                elseif data.weaponId == 34 then rand = config.settings.infRandN13
                elseif data.weaponId == 38 then rand = config.settings.infRandN14
                else rand = config.settings.infRand end
            end
            if rand ~= nil and dist ~= nil and wdist ~= nil and dist > 0 and dist < wdist and math.random(100) < rand and isCharDead(tarPed) == false and sampIsPlayerPaused(id) == false then

                local randX = RandomFloat(-0.25, 0.25)
                local randY = RandomFloat(-0.25, 0.25)
                local randZ = RandomFloat(-0.80, 0.80)
                
                if math.abs(randX) < 0.01 then randX = 0.01 end
                if math.abs(randY) < 0.01 then randY = 0.01 end
                if math.abs(randZ) < 0.01 then randZ = 0.01 end

                data.targetType = 1
                data.targetId = id
                data.origin = {x = mposX + randX, y = mposY + randY, z = mposZ + randZ}
                data.target = {x = posX + randX, y = posY + randY, z = posZ + randZ}
                data.center = {x = randX, y = randY, z = randZ}

                local body
                local diff
                if config.settings.infHead then body = 9 diff = RandomFloat(0.7, 0.8)
                elseif config.settings.infGroin then body = 4 diff = RandomFloat(-0.3, -0.2)
                else body = 3 diff = RandomFloat(-0.1, 0.6) end
                
                sampSendGiveDamage(id, GetWeaponDamage(data.weaponId), data.weaponId, body)
                if config.settings.infLine then fireSingleBullet(mposX, mposY, mposZ + RandomFloat(0.5, 0.7), posX + randX, posY + randY, posZ + diff, 1) end
                if config.settings.infBlood > 0 then addBlood(posX + randX, posY + randY, posZ + diff, 0.0, 0.0, 0.0, config.settings.infBlood, tarPed) end
            end
        end
    end
    end
end

function CheckTarget()
    local mped = getAllChars()
    local mposX, mposY, mposZ = getCharCoordinates(PLAYER_PED)
    
    local tdist = config.settings.infFov
    local weap = getCurrentCharWeapon(PLAYER_PED)
    local wdist = GetWeaponDist(weap)
    
    if config.settings.infCust then
        if weap == 22 then tdist = config.settings.infFovN1
        elseif weap == 23 then tdist = config.settings.infFovN2
        elseif weap == 24 then tdist = config.settings.infFovN3
        elseif weap == 25 then tdist = config.settings.infFovN4
        elseif weap == 26 then tdist = config.settings.infFovN5
        elseif weap == 27 then tdist = config.settings.infFovN6
        elseif weap == 28 then tdist = config.settings.infFovN7
        elseif weap == 29 then tdist = config.settings.infFovN8
        elseif weap == 30 then tdist = config.settings.infFovN9
        elseif weap == 31 then tdist = config.settings.infFovN10
        elseif weap == 32 then tdist = config.settings.infFovN11
        elseif weap == 33 then tdist = config.settings.infFovN12
        elseif weap == 34 then tdist = config.settings.infFovN13
        elseif weap == 38 then tdist = config.settings.infFovN14
        else tdist = config.settings.infFov end
    end
    if tdist == nil or weap == nil or wdist == nil then return end
    
    tarPed = -1
    for _, ped in pairs(mped) do
    if ped ~= PLAYER_PED then
    
        local posX, posY, posZ = getCharCoordinates(ped)
        if isLineOfSightClear(mposX, mposY, mposZ, posX, posY, posZ, update, update2, false, update, false) then
       -- bool result = isLineOfSightClear(mposX, mposY, mposZ, posX, posY, posZ, bool checkBuildings, bool checkVehicles, bool checkActors, bool checkObjects, bool checkParticles  )
            local result, id = sampGetPlayerIdByCharHandle(ped)
            if result then
        
            local ndist = FacingToCoords(posX, posY, tdist)
            local dist = getDistanceBetweenCoords3d(mposX, mposY, mposZ, posX, posY, posZ)

            if ndist ~= nil and dist ~= nil and ndist < tdist and dist and dist < wdist and not isCharDead(ped) and not sampIsPlayerPaused(id) then
                tarPed = ped
                tdist = ndist
                end
            end
        end
    end
    end
end

function RandomFloat(low, great)
    return low + math.random() * (great - low)
end

function VectorySize(amount1, amount2, amount3)
    return math.sqrt(amount1 * amount1 + amount2 * amount2, amount3 * amount3)
end

function GetWeaponOkay(weap)
    if weap >= 22 and weap <= 34 or weap == 38 then return 1 end
    return 0
end

function GetWeaponName(weap)
    local namearray =
    {
        [22] = "9mm",
        [23] = "Silenced 9mm",
        [24] = "Desert Eagle",
        [25] = "Shotgun",
        [26] = "Sawnoff Shotgun",
        [27] = "Combat Shotgun",
        [28] = "Micro SMG/Uzi",
        [29] = "MP5",
        [30] = "AK-47",
        [31] = "M4",
        [32] = "Tec-9",
        [33] = "Country Rifle",
        [34] = "Sniper Rifle",
        [38] = "Minigun"
    }
    return namearray[weap]
end

function GetWeaponDamage(weap)
    local dmgarray =
    {
        [22] = 8.25,
        [23] = 13.2,
        [24] = 46.2,
        [25] = 3.3,
        [26] = 3.3,
        [27] = 4.95,
        [28] = 6.6,
        [29] = 8.25,
        [30] = 9.9,
        [31] = 9.9,
        [32] = 6.6,
        [33] = 24.75,
        [34] = 41.25,
        [38] = 46.2
    }
    return dmgarray[weap]
end

function GetWeaponDist(weap)
    local distarray =
    {
        [22] = 35.0,
        [23] = 35.0,
        [24] = 35.0,
        [25] = 40.0,
        [26] = 35.0,
        [27] = 40.0,
        [28] = 35.0,
        [29] = 45.0,
        [30] = 70.0,
        [31] = 90.0,
        [32] = 35.0,
        [33] = 95.0,
        [34] = 320.0,
        [38] = 75.0
    }
    return distarray[weap]
end

function FacingToCoords(posX, posY, ang)
    local vecX = camX + (frontX * 50.0)
    local vecY = camY + (frontY * 50.0)
    local mposX, mposY, mposZ = getCharCoordinates(PLAYER_PED)
    
    local dist = VectorySize(mposX - posX, mposY - posY, 0.0)
    local ndist = 7.0 - (dist / 5)
    if ndist < 0.0 then ndist = 0.0 end
    
    local uang = math.atan2(mposX - vecX, mposY - vecY)
    local tang = math.atan2(mposX - posX, mposY - posY)
    local ugrad = math.deg(uang) + ndist
    local tgrad = math.deg(tang)

    if tgrad - ang < ugrad and tgrad + ang > ugrad then
        if ugrad > tgrad then return ugrad - tgrad
        else return tgrad - ugrad end
    end
    return nil
end

function CalculateQuat(rotX, rotY, rotZ)
    local b = rotX * math.pi / 360.0
    local h = rotY * math.pi / 360.0
    local a = rotZ * math.pi / 360.0
    
    local c1, c2, c3 = math.cos(h), math.cos(a), math.cos(b)
    local s1, s2, s3 = math.sin(h), math.sin(a), math.sin(b)
    
    local qw = c1 * c2 * c3 - s1 * s2 * s3
    local qx = s1 * s2 * c3 + c1 * c2 * s3
    local qy = s1 * c2 * c3 + c1 * s2 * s3
    local qz = c1 * s2 * c3 - s1 * c2 * s3
    return qw, qx, qy, qz
end



--[[ local NoCamRestore = imgui.ImBool(false)
local GodMode = imgui.ImBool(false)
local OxyInf = imgui.ImBool(false)
local AirBreak = imgui.ImBool(false)
local NoFall = imgui.ImBool(false)
local IfiniteRun = imgui.ImBool(false)
local NoStun = imgui.ImBool(false)]]



function Actor()
    setCharUsesUpperbodyDamageAnimsOnly(PLAYER_PED, NoStun.v)
    setPlayerNeverGetsTired(PLAYER_PED, not IfiniteRun.v)
    if NoFall.v then
        if isCharPlayingAnim(PLAYER_PED, 'KO_SKID_BACK') or isCharPlayingAnim(PLAYER_PED, 'FALL_COLLAPSE') then
            local charPos = {getCharCoordinates(PLAYER_PED)}
            setCharCoordinates(PLAYER_PED, charPos[1], charPos[2], charPos[3] - 1)
        end
    end
    if NoCamRestore.v then
        if not ncr then
            memory.write(0x5109AC, 235, 1, true)
            memory.write(0x5109C5, 235, 1, true)
            memory.write(0x5231A6, 235, 1, true)
            memory.write(0x52322D, 235, 1, true)
            memory.write(0x5233BA, 235, 1, true)
            ncr = true
        end
    else
        if ncr then
            memory.write(0x5109AC, 122, 1, true)
            memory.write(0x5109C5, 122, 1, true)
            memory.write(0x5231A6, 117, 1, true)
            memory.write(0x52322D, 117, 1, true)
            memory.write(0x5233BA, 117, 1, true)
            ncr = false
        end
    end
    if GodMode.v then
        setCharProofs(PLAYER_PED, true, true, true, true, true)
    else
        setCharProofs(PLAYER_PED, false, false, false, false, false)
    end
    if AirBreak.v then
        if wasKeyPressed(VK_RSHIFT) then
            airbreak = not airbreak
        end
        if airbreak then
            local charCoordinates = {getCharCoordinates(PLAYER_PED)}
            local ViewHeading = getCharHeading(PLAYER_PED)
            Coords = {charCoordinates[1], charCoordinates[2], charCoordinates[3], 0.0, 0.0, ViewHeading}
            local MainHeading = getCharHeading(PLAYER_PED)
            local Camera = {getActiveCameraCoordinates()}
            local Target = {getActiveCameraPointAt()}
            local RotateHeading = getHeadingFromVector2d(Target[1] - Camera[1], Target[2] - Camera[2])
            if isKeyDown(VK_W) then
                Coords[1] = Coords[1] + noClipVel.v * math.sin(-math.rad(RotateHeading))
                Coords[2] = Coords[2] + noClipVel.v * math.cos(-math.rad(RotateHeading))
                setCharHeading(PLAYER_PED, RotateHeading)
            elseif isKeyDown(VK_S) then
                Coords[1] = Coords[1] - noClipVel.v * math.sin(-math.rad(MainHeading))
                Coords[2] = Coords[2] - noClipVel.v * math.cos(-math.rad(MainHeading))
            end
            if isKeyDown(VK_A) then
                Coords[1] = Coords[1] - noClipVel.v * math.sin(-math.rad(MainHeading - 90))
                Coords[2] = Coords[2] - noClipVel.v * math.cos(-math.rad(MainHeading - 90))
            elseif isKeyDown(VK_D) then
                Coords[1] = Coords[1] - noClipVel.v * math.sin(-math.rad(MainHeading + 90))
                Coords[2] = Coords[2] - noClipVel.v * math.cos(-math.rad(MainHeading + 90))
            end
            if isKeyDown(VK_SPACE) then Coords[3] = Coords[3] + 0.25 / 1.5 end
            if isKeyDown(VK_LSHIFT) and Coords[3] > -95.0 then Coords[3] = Coords[3] - 0.25 / 1.5 end
            setCharCoordinates(PLAYER_PED, Coords[1], Coords[2], Coords[3] - 1)
        end
    end
    return false
end



function apply_custom_style()
    imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4

    style.WindowRounding = 2.0
    style.WindowTitleAlign = imgui.ImVec2(0.5, 0.84)
    style.ChildWindowRounding = 2.0
    style.FrameRounding = 2.0
    style.ItemSpacing = imgui.ImVec2(5.0, 4.0)
    style.ScrollbarSize = 3.0
    style.ScrollbarRounding = 0
    style.GrabMinSize = 8.0
    style.GrabRounding = 1.0
    -- style.Alpha =
    -- style.WindowPadding =
    -- style.WindowMinSize =
    -- style.FramePadding =
    -- style.ItemInnerSpacing =
    -- style.TouchExtraPadding =
    -- style.IndentSpacing =
    -- style.ColumnsMinSpacing = ?
    -- style.ButtonTextAlign =
    -- style.DisplayWindowPadding =
    -- style.DisplaySafeAreaPadding =
    -- style.AntiAliasedLines =
    -- style.AntiAliasedShapes =
    -- style.CurveTessellationTol =

    colors[clr.Text]                   = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.TextDisabled]           = ImVec4(0.50, 0.50, 0.50, 1.00)
    colors[clr.WindowBg]               = ImVec4(0.06, 0.06, 0.06, 0.94)
    colors[clr.ChildWindowBg]          = ImVec4(1.00, 1.00, 1.00, 0.00)
    colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94)
    colors[clr.ComboBg]                = colors[clr.PopupBg]
    colors[clr.Border]                 = ImVec4(0.43, 0.43, 0.50, 0.50)
    colors[clr.BorderShadow]           = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.FrameBg]                = ImVec4(0.16, 0.29, 0.48, 0.54)
    colors[clr.FrameBgHovered]         = ImVec4(0.26, 0.59, 0.98, 0.40)
    colors[clr.FrameBgActive]          = ImVec4(0.26, 0.59, 0.98, 0.67)
    colors[clr.TitleBg]                = ImVec4(0.04, 0.04, 0.04, 1.00)
    colors[clr.TitleBgActive]          = ImVec4(0.16, 0.29, 0.48, 1.00)
    colors[clr.TitleBgCollapsed]       = ImVec4(0.00, 0.00, 0.00, 0.51)
    colors[clr.MenuBarBg]              = ImVec4(0.14, 0.14, 0.14, 1.00)
    colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.53)
    colors[clr.ScrollbarGrab]          = ImVec4(0.31, 0.31, 0.31, 1.00)
    colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
    colors[clr.ScrollbarGrabActive]    = ImVec4(0.51, 0.51, 0.51, 1.00)
    colors[clr.CheckMark]              = ImVec4(0.26, 0.59, 0.98, 1.00)
    colors[clr.SliderGrab]             = ImVec4(0.24, 0.52, 0.88, 1.00)
    colors[clr.SliderGrabActive]       = ImVec4(0.26, 0.59, 0.98, 1.00)
    colors[clr.Button]                 = ImVec4(0.26, 0.59, 0.98, 0.40)
    colors[clr.ButtonHovered]          = ImVec4(0.26, 0.59, 0.98, 1.00)
    colors[clr.ButtonActive]           = ImVec4(0.06, 0.53, 0.98, 1.00)
    colors[clr.Header]                 = ImVec4(0.26, 0.59, 0.98, 0.31)
    colors[clr.HeaderHovered]          = ImVec4(0.26, 0.59, 0.98, 0.80)
    colors[clr.HeaderActive]           = ImVec4(0.26, 0.59, 0.98, 1.00)
    colors[clr.Separator]              = colors[clr.Border]
    colors[clr.SeparatorHovered]       = ImVec4(0.26, 0.59, 0.98, 0.78)
    colors[clr.SeparatorActive]        = ImVec4(0.26, 0.59, 0.98, 1.00)
    colors[clr.ResizeGrip]             = ImVec4(0.26, 0.59, 0.98, 0.25)
    colors[clr.ResizeGripHovered]      = ImVec4(0.26, 0.59, 0.98, 0.67)
    colors[clr.ResizeGripActive]       = ImVec4(0.26, 0.59, 0.98, 0.95)
    colors[clr.CloseButton]            = ImVec4(0.41, 0.41, 0.41, 0.50)
    colors[clr.CloseButtonHovered]     = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.CloseButtonActive]      = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.PlotLines]              = ImVec4(0.61, 0.61, 0.61, 1.00)
    colors[clr.PlotLinesHovered]       = ImVec4(1.00, 0.43, 0.35, 1.00)
    colors[clr.PlotHistogram]          = ImVec4(0.90, 0.70, 0.00, 1.00)
    colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.60, 0.00, 1.00)
    colors[clr.TextSelectedBg]         = ImVec4(0.26, 0.59, 0.98, 0.35)
    colors[clr.ModalWindowDarkening]   = ImVec4(0.80, 0.80, 0.80, 0.35)
end
apply_custom_style()





function BeginToPoint(x, y, z, radius, move_code, isSprint)
    repeat
        local posX, posY, posZ = GetCoordinates()
        SetAngle(x, y, z)
        MovePlayer(move_code, isSprint)
        local dist = getDistanceBetweenCoords3d(x, y, z, posX, posY, z)
        wait(0)
    until dist < radius
end

function MovePlayer(move_code, isSprint)
    setGameKeyState(1, move_code)
    --[[255 - îáû÷íûé áåã íàçàä
       -255 - îáû÷íûé áåã âïåðåä
      65535 - èäòè øàãîì âïåðåä
     -65535 - èäòè øàãîì íàçàä]]
    if isSprint then setGameKeyState(16, 255) end
end
 
function SetAngle(x, y, z)
    local posX, posY, posZ = GetCoordinates()
    local pX = x - posX
    local pY = y - posY
    local zAngle = getHeadingFromVector2d(pX, pY)
 
    if isCharInAnyCar(playerPed) then
        local car = storeCarCharIsInNoSave(playerPed)
        setCarHeading(car, zAngle)
    else
        setCharHeading(playerPed, zAngle)
    end
 
    restoreCameraJumpcut()
end
 
function GetCoordinates()
    if isCharInAnyCar(playerPed) then
        local car = storeCarCharIsInNoSave(playerPed)
        return getCarCoordinates(car)
    else
        return getCharCoordinates(playerPed)
    end
end

--Player teleport

function PayPedagio()
    sampSendChat('/pagarpedagio')
end

function sampev.onShowTextDraw(id, data)
end


function teleportPlayer(x, y, z)
	if isCharInAnyCar(playerPed) then
		setCharCoordinates(playerPed, x, y, z)
	end
	setCharCoordinatesDontResetAnim(playerPed, x, y, z)
end

function setCharCoordinatesDontResetAnim(char, x, y, z)
	if doesCharExist(char) then
		local ptr = getCharPointer(char)
		setEntityCoordinates(ptr, x, y, z)
	end
end

function setEntityCoordinates(entityPtr, x, y, z)
	if entityPtr ~= 0 then
		local matrixPtr = readMemory(entityPtr + 0x14, 4, false)
		if matrixPtr ~= 0 then
			local posPtr = matrixPtr + 0x30
			writeMemory(posPtr + 0, 4, representFloatAsInt(x), false) --X
			writeMemory(posPtr + 4, 4, representFloatAsInt(y), false) --Y
			writeMemory(posPtr + 8, 4, representFloatAsInt(z), false) --Z
		end
	end
end




--[[function apply_custom_style()
    --source: https://www.unknowncheats.me/forum/direct3d/189635-imgui-style-settings.html
    imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
  
    imgui.GetStyle().WindowPadding = imgui.ImVec2(8, 8)
    imgui.GetStyle().WindowRounding = 5.0
    imgui.GetStyle().FramePadding = imgui.ImVec2(5, 3)
    imgui.GetStyle().ItemSpacing = imgui.ImVec2(4, 4)
    imgui.GetStyle().ItemInnerSpacing = imgui.ImVec2(5, 5)
    imgui.GetStyle().IndentSpacing = 9.0
    imgui.GetStyle().ScrollbarSize = 17.0
    imgui.GetStyle().ScrollbarRounding = 16.0
    imgui.GetStyle().GrabMinSize = 7.0
    imgui.GetStyle().GrabRounding = 6.0
    imgui.GetStyle().ChildWindowRounding = 6.0
    imgui.GetStyle().FrameRounding = 6.0

  
    colors[clr.Text] = ImVec4(0.80, 0.80, 0.83, 1.00)
    colors[clr.TextDisabled] = ImVec4(0.24, 0.23, 0.29, 1.00)
    colors[clr.WindowBg] = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.ChildWindowBg] = ImVec4(0.07, 0.07, 0.09, 1.00)
    colors[clr.PopupBg] = ImVec4(0.07, 0.07, 0.09, 1.00)
    colors[clr.Border] = ImVec4(0.80, 0.80, 0.83, 0.88)
    colors[clr.BorderShadow] = ImVec4(0.92, 0.91, 0.88, 0.00)
    colors[clr.FrameBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.FrameBgHovered] = ImVec4(0.24, 0.23, 0.29, 1.00)
    colors[clr.FrameBgActive] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.TitleBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.TitleBgCollapsed] = ImVec4(1.00, 0.98, 0.95, 0.75)
    colors[clr.TitleBgActive] = ImVec4(0.07, 0.07, 0.09, 1.00)
    colors[clr.MenuBarBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.ScrollbarBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.ScrollbarGrab] = ImVec4(0.80, 0.80, 0.83, 0.31)
    colors[clr.ScrollbarGrabHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.ScrollbarGrabActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.ComboBg] = ImVec4(0.19, 0.18, 0.21, 1.00)
    colors[clr.CheckMark] = ImVec4(0.80, 0.80, 0.83, 0.31)
    colors[clr.SliderGrab] = ImVec4(0.80, 0.80, 0.83, 0.31)
    colors[clr.SliderGrabActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.Button] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.ButtonHovered] = ImVec4(0.24, 0.23, 0.29, 1.00)
    colors[clr.ButtonActive] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.Header] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.HeaderHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.HeaderActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.ResizeGrip] = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.ResizeGripHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.ResizeGripActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.CloseButton] = ImVec4(0.40, 0.39, 0.38, 0.16)
    colors[clr.CloseButtonHovered] = ImVec4(0.40, 0.39, 0.38, 0.39)
    colors[clr.CloseButtonActive] = ImVec4(0.40, 0.39, 0.38, 1.00)
    colors[clr.PlotLines] = ImVec4(0.40, 0.39, 0.38, 0.63)
    colors[clr.PlotLinesHovered] = ImVec4(0.25, 1.00, 0.00, 1.00)
    colors[clr.PlotHistogram] = ImVec4(0.40, 0.39, 0.38, 0.63)
    colors[clr.PlotHistogramHovered] = ImVec4(0.25, 1.00, 0.00, 1.00)
    colors[clr.TextSelectedBg] = ImVec4(0.25, 1.00, 0.00, 0.43)
    colors[clr.ModalWindowDarkening] = ImVec4(1.00, 0.98, 0.95, 0.73)
  end
  apply_custom_style()




]]





















--[[]
function bluetheme()
    imgui.SwitchContext()
    local colors = imgui.GetStyle().Colors;
    local icol = imgui.Col
    local ImVec4 = imgui.ImVec4

    imgui.GetStyle().WindowPadding = imgui.ImVec2(8, 8)
    imgui.GetStyle().WindowRounding = 16.0
    imgui.GetStyle().FramePadding = imgui.ImVec2(5, 3)
    imgui.GetStyle().ItemSpacing = imgui.ImVec2(4, 4)
    imgui.GetStyle().ItemInnerSpacing = imgui.ImVec2(5, 5)
    imgui.GetStyle().IndentSpacing = 9.0
    imgui.GetStyle().ScrollbarSize = 17.0
    imgui.GetStyle().ScrollbarRounding = 16.0
    imgui.GetStyle().GrabMinSize = 7.0
    imgui.GetStyle().GrabRounding = 6.0
    imgui.GetStyle().ChildWindowRounding = 6.0
    imgui.GetStyle().FrameRounding = 6.0

    colors[icol.Text]                   = ImVec4(0.90, 0.90, 0.90, 1.00);
    colors[icol.TextDisabled]           = ImVec4(0.60, 0.60, 0.60, 1.00);
    colors[icol.WindowBg]               = ImVec4(0.11, 0.11, 0.11, 1.00);
    colors[icol.ChildWindowBg]          = ImVec4(0.13, 0.13, 0.13, 1.00);
    colors[icol.PopupBg]                = ImVec4(0.11, 0.11, 0.11, 1.00);
    colors[icol.Border]                 = ImVec4(0.26, 0.46, 0.82, 0.01);
    colors[icol.BorderShadow]           = ImVec4(0.26, 0.46, 0.82, 1.00);
    colors[icol.FrameBg]                = ImVec4(0.26, 0.46, 0.82, 0.59);
    colors[icol.FrameBgHovered]         = ImVec4(0.26, 0.46, 0.82, 0.88);
    colors[icol.FrameBgActive]          = ImVec4(0.28, 0.53, 1.00, 1.00);
    colors[icol.TitleBg]                = ImVec4(0.26, 0.46, 0.82, 1.00);
    colors[icol.TitleBgActive]          = ImVec4(0.26, 0.46, 0.82, 1.00);
    colors[icol.TitleBgCollapsed]       = ImVec4(0.26, 0.46, 0.82, 1.00);
    colors[icol.MenuBarBg]              = ImVec4(0.26, 0.46, 0.82, 0.75);
    colors[icol.ScrollbarBg]            = ImVec4(0.11, 0.11, 0.11, 1.00);
    colors[icol.ScrollbarGrab]          = ImVec4(0.26, 0.46, 0.82, 0.68);
    colors[icol.ScrollbarGrabHovered]   = ImVec4(0.26, 0.46, 0.82, 1.00);
    colors[icol.ScrollbarGrabActive]    = ImVec4(0.26, 0.46, 0.82, 1.00);
    colors[icol.ComboBg]                = ImVec4(0.26, 0.46, 0.82, 0.79);
    colors[icol.CheckMark]              = ImVec4(1.000, 0.000, 0.000, 1.000)
    colors[icol.SliderGrab]             = ImVec4(0.263, 0.459, 0.824, 1.000)
    colors[icol.SliderGrabActive]       = ImVec4(0.66, 0.66, 0.66, 1.00);
    colors[icol.Button]                 = ImVec4(0.26, 0.46, 0.82, 1.00);
    colors[icol.ButtonHovered]          = ImVec4(0.26, 0.46, 0.82, 0.59);
    colors[icol.ButtonActive]           = ImVec4(0.26, 0.46, 0.82, 1.00);
    colors[icol.Header]                 = ImVec4(0.26, 0.46, 0.82, 1.00);
    colors[icol.HeaderHovered]          = ImVec4(0.26, 0.46, 0.82, 0.74);
    colors[icol.HeaderActive]           = ImVec4(0.26, 0.46, 0.82, 1.00);
    colors[icol.Separator]              = ImVec4(0.37, 0.37, 0.37, 1.00);
    colors[icol.SeparatorHovered]       = ImVec4(0.60, 0.60, 0.70, 1.00);
    colors[icol.SeparatorActive]        = ImVec4(0.70, 0.70, 0.90, 1.00);
    colors[icol.ResizeGrip]             = ImVec4(1.00, 1.00, 1.00, 0.30);
    colors[icol.ResizeGripHovered]      = ImVec4(1.00, 1.00, 1.00, 0.60);
    colors[icol.ResizeGripActive]       = ImVec4(1.00, 1.00, 1.00, 0.90);
    colors[icol.CloseButton]            = ImVec4(0.00, 0.00, 0.00, 1.00);
    colors[icol.CloseButtonHovered]     = ImVec4(0.00, 0.00, 0.00, 0.60);
    colors[icol.CloseButtonActive]      = ImVec4(0.35, 0.35, 0.35, 1.00);
    colors[icol.PlotLines]              = ImVec4(1.00, 1.00, 1.00, 1.00);
    colors[icol.PlotLinesHovered]       = ImVec4(0.90, 0.70, 0.00, 1.00);
    colors[icol.PlotHistogram]          = ImVec4(0.90, 0.70, 0.00, 1.00);
    colors[icol.PlotHistogramHovered]   = ImVec4(1.00, 0.60, 0.00, 1.00);
    colors[icol.TextSelectedBg]         = ImVec4(0.00, 0.00, 1.00, 0.35);
    colors[icol.ModalWindowDarkening]   = ImVec4(0.20, 0.20, 0.20, 0.35);
end
bluetheme()
]]

--[[
label   - Название кнопки (Необязательно)
bool    - Переменная, которую будет менять кнопка (Без этого не обойтись)
a_speed - Скорость анимации (Необязательно)
]]
