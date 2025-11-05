function extract --argument-names file
    switch $file
        case '*.tar.gz' '*.tgz'; tar xzf $file
        case '*.tar.bz2' '*.tbz2'; tar xjf $file
        case '*.tar.xz'; tar xJf $file
        case '*.zip'; unzip $file
        case '*.rar'; unrar x $file
        case '*.7z'; 7z x $file
        case '*'; echo "Unknown format"
    end
end
