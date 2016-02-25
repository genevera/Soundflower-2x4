set kext to "/Library/Extensions/Soundflower.kext"
try
	tell application "System Events"
		if not exists file kext then
			error kext & " not found."
		end if
	end tell
	do shell script "/sbin/kextunload " & kext with administrator privileges
	do shell script "/bin/rm -rf " & kext with administrator privileges
	display dialog "Successfully uninstalled."
on error errMsg number errNum
	display dialog errMsg
end try
