function onCreate()
        -- background shit
	    makeLuaSprite('scooper-room-floor2','scooper-room-floor2', -369, 1007)
        setScrollFactor('scooper-room-floor2', 0.9, 0.9);

        makeLuaSprite('scooper-room-door','scooper-room-door', -237, -105)
        setScrollFactor('scooper-room-door', 0.9, 0.9);
		
	    makeLuaSprite('scooper-room-dark','scooper-room-dark', -511, -105)
        setScrollFactor('scooper-room-dark', 0.9, 0.9);

	    makeLuaSprite('scooper-room-dark1','scooper-room-dark', -511, -185)
		scaleLuaSprite('spacebar mecanics', 1.1, 1.1);
        setScrollFactor('scooper-room-dark1', 1.2, 1.2);
		setObjectCamera('scooper-room-dark1', 'other');
		
	    makeLuaSprite('blackbg','blackbg', -137, -105)
        setScrollFactor('blackbg', 1.1, 1.1);
		setObjectOrder('blackbg', 4);
		setObjectCamera('blackbg', 'other');
	
	    makeAnimatedLuaSprite ('foxy mid', 'foxy mid', 731, 242)
        setLuaSpriteScrollFactor('foxy mid', 0.9, 0.9);
		scaleObject('foxy mid', 1.2, 1.2);
	
	    addAnimationByPrefix ('foxy mid', 'idle', 'foxy mid', 24, true)
	    objectPlayAnimation('foxy mid', 'idle', false)

	    makeAnimatedLuaSprite ('foxy right and left', 'foxy right and left', 1131, 242)
        setLuaSpriteScrollFactor('foxy right and left', 0.9, 0.9);
		scaleObject('foxy right and left', 1.1, 1.1);
	
	    addAnimationByPrefix ('foxy right and left', 'idle', 'foxy right and left', 24, true)
	    objectPlayAnimation('foxy right and left', 'idle', false)

		makeAnimatedLuaSprite ('spacebar mecanics', 'spacebar mecanics', 300, 50)
	    scaleLuaSprite('spacebar mecanics', 0.40, 0.40);
		setObjectCamera('spacebar mecanics', 'other');
		setObjectOrder('spacebar mecanics', 7);
	
	    addAnimationByPrefix ('spacebar mecanics', 'scare', 'spacebar mecanics', 24, true)
	    objectPlayAnimation('spacebar mecanics', 'scare', false)		
			 
		setProperty('scooper-room-door.visible', true)	 
        setProperty('scooper-room-floor2.visible', true)
	    setProperty('scooper-room-dark.visible', true)
		setProperty('scooper-room-dark1.visible', true)
		setProperty('blackbg.visible', true)
	    setProperty('foxy mid.visible', false)
		setProperty('foxy right and left.visible', false)
		setProperty('spacebar mecanics.visible', true)
		
		addLuaSprite('scooper-room-door', false);
	    addLuaSprite('scooper-room-floor2', false);
	    addLuaSprite('scooper-room-dark', true);
		addLuaSprite('scooper-room-dark1', true);
		addLuaSprite('blackbg', true);
        addLuaSprite('foxy mid', false);
		addLuaSprite('foxy right and left', false);
		addLuaSprite('spacebar mecanics', true);
	   
	    close(true);
end
