#! /bin/bash

osascript -e 'tell app "Terminal"
    do script "ping google.com"
end tell'

osascript -e 'tell app "Terminal"
    do script "ping firefox.com"
end tell'

osascript -e 'tell app "Terminal"
    do script "cd / ; ./Users/admin/Desktop/WirelessTestingScript/loopbandwitdh.sh"
end tell'

osascript -e 'tell app "Terminal"
    do script "cd / ; ./Users/admin/Desktop/WirelessTestingScript/loop.sh"
end tell'

open https://www.moviefone.com/movie-trailers/






