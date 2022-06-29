function onCreate()
        -- background shit
        makeLuaSprite('scooper-bg','scooper-bg', -239, -300)
        setScrollFactor('scooper-bg', 0.9, 0.9);
		
	    makeLuaSprite('scooper-room-floor2','scooper-room-floor2', -364, 860)
        setScrollFactor('scooper-room-floor2', 0.9, 0.9);
		
 	    makeLuaSprite('scooper-room-dark','scooper-room-dark', -511, -105)
        setScrollFactor('scooper-room-dark', 0.9, 0.9);
		
		makeAnimatedLuaSprite ('scooper attack', 'scooper attack', 1331, 272)
	    setLuaSpriteScrollFactor('scooper attack', 0.9, 0.9);
		setObjectOrder('scooper attack', 4);
	
	    addAnimationByPrefix ('scooper attack', 'attack', 'scooper attack', 24, true)
	    objectPlayAnimation('scooper attack', 'attack', false)

		makeAnimatedLuaSprite ('ennard jumpscare', 'ennard jumpscare', 0, 0)
	    setLuaSpriteScrollFactor('ennard jumpscare', 0.9, 0.9);
		setObjectOrder('ennard jumpscare', 4);
		setScrollFactor('ennard jumpscare', 1.1, 1.1);
		setObjectCamera('ennard jumpscare', 'other');
	
	    addAnimationByPrefix ('ennard jumpscare', 'scare', 'ennard jumpscare', 60, true)
	    objectPlayAnimation('ennard jumpscare', 'scare', false)
		
		makeAnimatedLuaSprite ('statica', 'statica', 0, 0)
	    setLuaSpriteScrollFactor('statica', 0.9, 0.9);
		setObjectOrder('statica', 4);
		setScrollFactor('statica', 0.9, 0.9);
		setObjectCamera('statica', 'other');
	
	    addAnimationByPrefix ('statica', 'static', 'statica', 24, true)
	    objectPlayAnimation('statica', 'static', false)

		makeAnimatedLuaSprite ('spacebar mecanics scooper', 'spacebar mecanics scooper', 400, 70)
	    scaleLuaSprite('spacebar mecanics scooper', 0.50, 0.50);
		setObjectCamera('spacebar mecanics scooper', 'other');
		setObjectOrder('spacebar mecanics scooper', 7);
	
	    addAnimationByPrefix ('spacebar mecanics scooper', 'scare', 'spacebar mecanics scooper', 22, true)
	    objectPlayAnimation('spacebar mecanics scooper', 'scare', false)
		
		setProperty('scooper-bg.visible', true)
		setProperty('scooper-room-floor2.visible', true)
		setProperty('scooper-room-dark.visible', true)
		setProperty('scooper attack.visible', false)
		setProperty('ennard jumpscare.visible', false)
		setProperty('statica.visible', false)
		setProperty('spacebar mecanics scooper.visible', true)
		
		addLuaSprite('scooper-bg', false);
		addLuaSprite('scooper-room-floor2', false);
		addLuaSprite('scooper-room-dark', true);
		addLuaSprite('scooper attack', false);
		addLuaSprite('ennard jumpscare', true);
		addLuaSprite('statica', true);
		addLuaSprite('spacebar mecanics scooper', true);
	
		close(true);
end

function onGameOver()
	triggerEvent('Screen Shake', '1, 0.05', '0');
	return Function_Continue
end