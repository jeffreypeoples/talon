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

# Increase the width of the sidebar or panel
increase editor width:
    key(ctrl-alt-])

# Decrease the width of the sidebar or panel
decrease editor width:
    key(ctrl-alt-[)

# increase width of selected panel
increase size:
    key(alt-shift-ctrl-])

# decrease width of selected panel
decrease size:
    key(alt-shift-ctrl-[)

# Maximize current editor panel width
maximize panel:
    user.vscode("workbench.action.toggleEditorWidths")

# Reset editor panel widths
reset panels:
    user.vscode("workbench.action.evenEditorWidths")

# open quick fixed menu
fix that:
    key(cmd-.)

