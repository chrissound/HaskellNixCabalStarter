if which nix; then
    local cmd_escaped
    printf -v cmd_escaped "%q" "ghcid --command='cabal v2-repl app' --test=Main.main"
    nix-shell --run "$cmd_escaped"
    exit 0
elif which stack; then
    ghcid '--command=stack ghci' --test='Main.main'
    exit 0
fi
