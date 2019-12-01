if which nix; then
    ghcid --command="cabal v2-repl app" --test=Main.main
    exit 0
fi
