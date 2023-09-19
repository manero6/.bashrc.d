### POWERLINE-GO
function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -error $? -jobs $(jobs -p | wc -l) -newline -theme gruvbox -modules venv,user,host,time,ssh,cwd,perms,git,hg,jobs,exit,root)"

    # Uncomment the following line to automatically clear errors after showing
    # them once. This not only clears the error for powerline-go, but also for
    # everything else you run in that shell. Don't enable this if you're not
    # sure this is what you want.

    #set "?"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
