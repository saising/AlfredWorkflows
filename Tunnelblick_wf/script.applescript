on alfred_script(query)
  tell application "Tunnelblick"
	get state of configuration 1 whose name = query
	if result = "connected" then
		disconnect query
	else
		connect query
	end if
	
  end tell

end alfred_script
