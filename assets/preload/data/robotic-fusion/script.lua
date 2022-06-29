local xx = 720;
local yy = 400;
local xx2 = 1250;
local yy2 = 600;
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
        setProperty('health', health- 0.027);
    end
end
function onStepHit()
	if curStep % 1720 == 0 then
	    playSound('statica', 0.6);
        setProperty('statica.visible',true);
		objectPlayAnimation('statica', 'statica', true);
	end
	if curStep % 1713 == 0 then
	    playSound('scream', 0.9);
        setProperty('ennard jumpscare.visible',true);
		objectPlayAnimation('ennard jumpscare', 'ennard jumpscare', true);
	end
	if curStep % 1720 == 0 then
        setProperty('ennard jumpscare.visible',false);
		objectPlayAnimation('ennard jumpscare', 'ennard jumpscare', false);
	end
end

local allowCountdown = false
function onStartCountdown()
        if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		        startVideo("scene3");
				allowCountdown = true;
				return Function_Stop;				
		end
	    return Function_Continue;
end

function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'BF SCOOPER DIES');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'bfscooperlost');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');
end

function onEndSong()
	if not allowEnd and isStoryMode then
		startVideo('scene4');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end