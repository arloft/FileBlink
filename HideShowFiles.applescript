display dialog "Hide or Show all (hidden) Finder files?" buttons {"Hide", "Show", "Cancel"}
if the button returned of the result is "Hide" then
	do shell script "defaults write com.apple.finder AppleShowAllFiles FALSE"
	do shell script "killall Finder"
	-- do shell script "killall Terminal"
else if the button returned of the result is "Show" then
	do shell script "defaults write com.apple.finder AppleShowAllFiles TRUE"
	do shell script "killall Finder"
	-- do shell script "killall Terminal"
else
	
end if