try
	tell application "Adobe Acrobat Professional.app"
		activate
		open theFile
		tell application "System Events"
			tell process "Acrobat"
				tell menu bar 1
					tell menu "Document"
						tell menu item "OCR Text Recognition"
							tell menu 1
								click menu item "Recognize Text Using OCR..."
							end tell
						end tell
					end tell
					
				end tell
				keystroke return
			end tell
		end tell
		save the front document
		close the front document
	end tell
end try