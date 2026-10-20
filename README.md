# Roblox Leaderstats Scoreboard

This project sets up a Leaderstats scoreboard for each player with two IntValues: 'Geld' and 'Buit'. The 'Geld' data is automatically saved using DataStoreService to prevent loss when players leave or the server restarts.

## Install

1. Open Roblox Studio.
2. Create a new Roblox game or open an existing one.
3. In the Explorer, navigate to ServerScriptService.
4. Right-click and select Insert Object > Script.
5. Name the script `LeaderstatsSetup` and set its type to ServerScript.
6. Copy and paste the contents of `LeaderstatsSetup.server.lua` into the script.
7. In the Explorer, navigate to StarterPlayerScripts.
8. Right-click and select Insert Object > Script.
9. Name the script `PlayerGuiSetup` and set its type to LocalScript.
10. Copy and paste the contents of `PlayerGuiSetup.client.lua` into the script.
11. In the Explorer, navigate to StarterGui.
12. Right-click and select Insert Object > ScreenGui.
13. Name the ScreenGui `PlayerGui`.
14. Inside PlayerGui, right-click and select Insert Object > Frame.
15. Name the Frame `LeaderstatsFrame`.
16. Inside LeaderstatsFrame, right-click and select Insert Object > TextLabel.
17. Name the TextLabel `GeldLabel`.
18. Repeat step 16 to create another TextLabel named `BuitLabel`.
19. In the Explorer, navigate to StarterGui > PlayerGui > LeaderstatsFrame.
20. Right-click and select Insert Object > Script.
21. Name the script `WarningMessage` and set its type to LocalScript.
22. Copy and paste the contents of `WarningMessage.lua` into the script.

## Use

1. Start the game in Roblox Studio.
2. The Leaderstats scoreboard will automatically appear for each player.
3. The 'Geld' and 'Buit' values will be displayed on the scoreboard.
4. The 'Geld' data will be automatically saved when a player leaves the game or the server restarts.
5. The warning message will appear when a player tries to collect more than 5 'Buit'.

---

More Roblox script projects by EnderDevelopment: https://github.com/EnderDevelopment

Project page: https://dash.enderdevelopment.com/community/2f38d924-5a61-49e9-b746-bc6242a2a15d?utm_source=github&utm_medium=readme&utm_campaign=auto_publish&utm_content=2f38d924-5a61-49e9-b746-bc6242a2a15d
