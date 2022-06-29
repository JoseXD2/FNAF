local xx = 720;
local yy = 700;
local xx2 = 1250;
local yy2 = 900;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.017);
    end
end
function onBeatHit()
	if curBeat % 117 == 0 then
        setProperty('foxy mid.visible',true);
		objectPlayAnimation('foxy mid', 'foxy mid', true);
	end
	if curBeat % 127 == 0 then
        setProperty('foxy mid.visible',false);
		objectPlayAnimation('foxy mid', 'foxy mid', false);
	end
	if curBeat % 177 == 0 then
        setProperty('foxy right and left.visible',true);
		objectPlayAnimation('foxy right and left', 'foxy right and left', true);
	end
	if curBeat % 187 == 0 then
        setProperty('foxy right and left.visible',false);
		objectPlayAnimation('foxy right and left', 'foxy right and left', false);
	end
	if curBeat % 265 == 0 then
        setProperty('foxy right and left.visible',true);
		objectPlayAnimation('foxy right and left', 'foxy right and left', true);
	end
	if curBeat % 275 == 0 then
        setProperty('foxy right and left.visible',false);
		objectPlayAnimation('foxy right and left', 'foxy right and left', false);
	end
	if curBeat % 314 == 0 then
        setProperty('foxy mid.visible',true);
		objectPlayAnimation('foxy mid', 'foxy mid', true);
	end
	if curBeat % 324 == 0 then
        setProperty('foxy mid.visible',false);
		objectPlayAnimation('foxy mid', 'foxy mid', false);
	end
	if curBeat % 234 == 0 then
        setProperty('foxy mid.visible',false);
		objectPlayAnimation('foxy mid', 'foxy mid', false);
	end
	if curBeat % 224 == 0 then
        setProperty('foxy mid.visible',false);
		objectPlayAnimation('foxy mid', 'foxy mid', false);
	end
end

local allowCountdown = false
function onStartCountdown()
        if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		        startVideo("scene2");
				allowCountdown = true;
				return Function_Stop;				
		end
	    return Function_Continue;
end

function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'BF SHOCK DIES');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'bfshocklost');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');
end