display dialog "Hide or Show all (hidden) Finder files?" buttons {"Hide", "Show"}
if the button returned of the result is "Hide" then
	do shell script "defaults write com.apple.finder AppleShowAllFiles FALSE"
	do shell script "killall Finder"
	-- do shell script "killall Terminal"
else
	do shell script "defaults write com.apple.finder AppleShowAllFiles TRUE"
	do shell script "killall Finder"
	-- do shell script "killall Terminal"
end if