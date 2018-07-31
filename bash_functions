function gh-curl () {
	
	base_url="https://api.github.com"
	accept="application/vnd.github.v3+json"

	method=$1
	endpoint=$2

	curl -H "Accept $accept" \
		 $base_url$endpoint \
		 -X $method ${@:3}
}





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

function setw () {

	w=$(xdotool getactivewindow)

	xdotool key Super+Down


	xdotool windowmove $w $1 $2
	xdotool windowsize $w $3 $4
}





function left() {
	xdotool key Super+Down
	xdotool getactivewindow windowsize 50% 100%
	xdotool getactivewindow windowmove 0% 0%
}

function right () {
	xdotool key Super+Down
	xdotool getactivewindow windowsize 50% 100%
	xdotool getactivewindow windowmove 50% 0%
}
