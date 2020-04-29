
# Compress files
compress:
    #!/bin/bash
    if [ -x /usr/bin/brotli ]; then
        if [ -d public ]; then
            fd -e html --base-directory public -a -x brotli {}
        else 
            zola build
            fd -e html --base-directory public -a -x brotli {}
        fi
    else
        echo "Please install brotli"
        if [ -x /usr/bin/pacman ]; then
            echo "sudo pacman -S brotli"
        elif [ -x /usr/bin/dnf ]; then
            echo "sudo dnf install brotli"
        fi
    fi

    if [ -x /usr/bin/gzip ]; then
        if [ -d public ]; then
            fd -e html --base-directory public -a -x  gzip --best -k {}
        else 
            zola build
            fd -e html --base-directory public -a -x  gzip --best -k {}
        fi
    else
        echo "Please install gzip"
    fi

# Removes public directory
clean:
    #!/bin/bash
    if [ -d public ]; then
        sudo rm -dR public
    else 
        echo "Already clean"
    fi