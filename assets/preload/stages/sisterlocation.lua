function onCreate()
    -- background shit
    makeLuaSprite('scooper-room-door','scooper-room-door', -237, -105)
    setScrollFactor('scooper-room-door', 0.9, 0.9);
		
	makeLuaSprite('scooper-room-floor','scooper-room-floor', -369, 1007)
    setScrollFactor('scooper-room-floor', 0.9, 0.9);
		
	makeLuaSprite('scooper-room-dark','scooper-room-dark', -511, -105)
    setScrollFactor('scooper-room-dark', 0.9, 0.9);
		
	makeAnimatedLuaSprite ('freddy idle', 'freddy idle', -855, 20)
	setLuaSpriteScrollFactor('freddy idle', 0.9, 0.9);
	scaleObject('freddy idle', 0.9, 0.9);
	
	addAnimationByPrefix ('freddy idle', 'idle', 'ballora dancing in back', 24, true)
	objectPlayAnimation('freddy idle', 'idle', false)
	
	makeAnimatedLuaSprite ('ballorascreen', 'ballorascreen', -1304, 152)
	setLuaSpriteScrollFactor('ballorascreen', 0.9, 0.9);
	setObjectOrder('ballorascreen', 4);
	scaleObject('ballorascreen', 1.1, 1.1);
	
	addAnimationByPrefix ('ballorascreen', 'walk', 'ballora dancing in screen', 24, true)
	objectPlayAnimation('ballorascreen', 'walk', false)
	
	makeAnimatedLuaSprite ('freddy', 'freddy', 1275, 170)
	setLuaSpriteScrollFactor('freddy', 0.9, 0.9);
	scaleObject('freddy', 0.9, 0.9);
	
	addAnimationByPrefix ('freddy', 'walkin', 'idle', 24, true)
	objectPlayAnimation('freddy', 'walkin', false)
		
	setProperty('scooper-room-door.visible', true)
	setProperty('scooper-room-floor.visible', true)
	setProperty('scooper-room-dark.visible', true)
	setProperty('freddy idle.visible', false)
	setProperty('ballorascreen.visible', false)
	setProperty('freddy.visible', false)
		
	addLuaSprite('scooper-room-door', false);
	addLuaSprite('scooper-room-floor', false);
	addLuaSprite('scooper-room-dark', true);
	addLuaSprite('freddy idle', false);
	addLuaSprite('ballorascreen', true);
	addLuaSprite('freddy', false);
	
end
