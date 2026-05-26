tell application "Finder"
	try
		set pathList to (quoted form of POSIX path of (folder of the front window as alias))
	on error
		return
	end try
	set command to "clear; cd " & pathList
end tell

tell application "System Events"
	-- some versions might identify as "iTerm2" instead of "iTerm"
	set wasRunning to (exists (processes where name is "iTerm")) or (exists (processes where name is "iTerm2"))
end tell

tell application "iTerm"
	activate
	if wasRunning then
		if (count of windows) = 0 then
			create window with default profile
		else
			tell the first window to create tab with default profile
		end if
	end if
	tell the first window
		tell current session to write text command
	end tell
end tell

