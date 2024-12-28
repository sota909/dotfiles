EXCLUDE_FILES=(".git" ".gitconfig.local.template" ".gitmodules")

for f in .??*; do
    if [[ " ${EXCLUDE_FILES[@]} " =~ " $f " ]]; then
        continue
    fi
    ln -snfv "${PWD}/$f" ~/
done
