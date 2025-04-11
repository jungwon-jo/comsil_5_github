$data > dataand
if [ $# -eq 0 ]
then
        echo -e "Usage: phone searchfor [… searchfor]\n(You didn’t tell me what you want to search for.)"
        exit 1
else
        search="$1"
        for arg in "$@"
                do
                search="${search}|${arg}"
        done
egrep -i "$search" dataand > tmp
dataand="$tmp"
awk -f display.awk tmp
fi
