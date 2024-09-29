#custom vscode commands go here
app: vscode
-
# Save the current file
save:
    key(cmd-s)
    
# Open the Source Control view
source:
    user.vscode("workbench.view.scm")

# Open the global search panel
search global:
    key(cmd-shift-f)

# Navigate to the next search result
search down:
    key(f4)

# Navigate to the previous search result
search up:
    key(shift-f4)
    
# open AI in line
speak:
    key(cmd-k) 

# open AI sidebar
chat:
    key(cmd-l) 

# followup question for AI
followup:
    key(cmd-shift-k)

# Accept the current suggestion or action
accept:
    key(cmd-enter)

# Increase the editor font size
zoom in:
    key(cmd-=)

# Decrease the editor font size
zoom out:
    key(cmd--)

