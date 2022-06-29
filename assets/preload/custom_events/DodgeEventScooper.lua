function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	
    precacheImage('spacebar1');
	precacheSound('ControlShock');
end

function onEvent(name, value1, value2)
    if name == "DodgeEventScooper" then
    --Get Dodge time
    DodgeTime = (value1);
	
    --Make Dodge Sprite
	makeAnimatedLuaSprite('spacebar1', 'spacebar1', 470, 200);
    luaSpriteAddAnimationByPrefix('spacebar1', 'spacebar1', 'spacebar scooper', 25, true);
	luaSpritePlayAnimation('spacebar1', 'spacebar scooper');
	setObjectCamera('spacebar1', 'other');
	scaleLuaSprite('spacebar1', 0.50, 0.50); 
    addLuaSprite('spacebar1', true);	
	
	--Set values so you can dodge
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('up') then
   
   Dodged = true;
   characterPlayAnim('boyfriend', 'dodge', true);
   setProperty('boyfriend.specialAnim', true);
   setProperty('scooper attack.visible', true);
   removeLuaSprite('spacebar1');
   canDodge = false
   
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   setProperty('health', 0);
   
   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   
   end
end