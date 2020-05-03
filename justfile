
# Compress files
compress:
    #!/bin/bash
    if [ ! -d public ]; then
        zola build
    fi
    if [ -x /usr/bin/brotli ]; then
        if [ -x /usr/bin/fd ]; then
            echo "Compressing::Brotli"
            fd -e html -e css -e js -e ico --search-path public -a -x brotli --best -kf {}
        elif [ -x /usr/bin/fdfind ]; then
            echo "Compressing::Brotli"
            fdfind -e html -e css -e js -e ico --search-path public -a -x brotli --best -kf {}
        else
            echo "Please install fd"
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
        if [ -x /usr/bin/fd ]; then
            echo "Compressing::Gzip"
            fd -e html -e css -e js -e ico --search-path public -a -x gzip --best -kf {}
        elif [ -x /usr/bin/fdfind ]; then
            echo "Compressing::Gzip"
            fdfind -e html -e css -e js -e ico --search-path public -a -x gzip --best -kf {}
        else
            echo "Please install fd"
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