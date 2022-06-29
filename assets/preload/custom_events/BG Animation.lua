function onEvent(name,value1,value2)
	if name == 'BG Animation' then 
		
		if value1 == 'hide' then
			setProperty('scooper attack.visible', false);
		end
		if value1 == 'hide1' then
			setProperty('blackbg.visible', false);
		end
		if value1 == 'show1' then
			setProperty('blackbg.visible', true);
		end
		if value1 == 'hide2' then
			setProperty('spacebar mecanics.visible', false);
		end
		if value1 == 'hide3' then
			setProperty('spacebar mecanics scooper.visible', false);
		end
	end
end

