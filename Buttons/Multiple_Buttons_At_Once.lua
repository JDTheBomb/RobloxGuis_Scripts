local Buttons = script.Parent.Parent.Buttons:GetChildren()wait() --Set folder for buttons with :GetChildren()wait()
local Windows = script.Parent:GetChildren()wait() --Set folder for all windows in a gui with :GetChildren()wait()

for _, button in pairs(Buttons) do --goes through all buttons
	if button:IsA("TextButton") then  --Checks for only Buttons in the Buttons Folder
		button.MouseButton1Down:Connect(function()   --function after mouse left click
			for I, Window in pairs(Windows) do --goes through all windows(frames)
				if Window:IsA("Frame") then --Checks for Windows(frames), for a button also do *or ("GuiButton")* after ("Frame")
					if Window.Name == button:GetAttribute("Window_To_Open") then --Makes sure for right frame
						if Window.Visible == false then --if window(frame) is not visible
							Window.Visible = true   --then make it visible
						end
					else  --Skips over other windows
					Window.Visible = false --Closes all other windows
					end
				end
			end
		end)
	end
end
