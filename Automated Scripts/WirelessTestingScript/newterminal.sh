#! /bin/bash

osascript -e 'tell app "Terminal"
    do script "ping google.com"
end tell'

osascript -e 'tell app "Terminal"
    do script "ping firefox.com"
end tell'

osascript -e 'tell app "Terminal"
    do script "./loop.sh"
end tell'

osascript -e 'tell app "Terminal"
    do script "./loopbandwitdh.sh"
end tell'

open https://www.moviefone.com/movie-trailers/






