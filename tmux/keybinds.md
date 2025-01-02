# tmux keybindings

View more commands at [https://tmuxcheatsheet.com/](https://tmuxcheatsheet.com/).

```
# Default prefix is `Ctrl + b`. The examples below use the following format:
# `prefix>c` which means click 'prefix' first, and then the letter c.

# Create a new window.
prefix > c

# Change between windows.
prefix > 0 (0 means the window number)
prefix > n or p (n for next window and p for previous window)

# Split window into vertical and horizontal panes, respectively.
prefix ? %
prefix ? "

# Navigate between panes.
prefix > 'arrow keys'
prefix > q (shows panes numbers to be selected)

# Transform pane to a window.
prefix > !

# Close pane.
prefix > x (or simply type exit)

# Maximize pane.
prefix > z

# Kill window.
prefix > &

# Create new session (while not attached to another session).
tmux
tmux new -s my-session

# List sessions.
tmux ls
prefix > s (when inside a session)
prefix > w (list and preview sessions when inside a session)

# Attach to sessions.
tmux attach (attach to most recent session)
tmux attach -t my-session (attachj to a given session)

# Enter command mode.
prefix > :
```
