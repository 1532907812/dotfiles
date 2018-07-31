function ls-gists () {

    base_url="https://api.github.com"

    if [ "$1" ]; then
	endpoint="/users/$1/gists"
    else
	endpoint="/gists/public"
    fi

    curl -H "Accept: application/vnd.github.v3+json" \
	$base_url$endpoint
}



function movw() {
	w=$(xdotool getwindowfocus)
	xdotool windowmove $w $@
}


function setw() {
	w=$(xdotool getwindowfocus)
	xdotool windowsize $w $@
}