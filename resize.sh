# 1: Size
# 2: Source file
# 3: Destination file

if [[ $# != 3 ]]; then 
    echo "USAGE: ./resize.sh SIZE SOURCE DEST" 1>&2
    exit 1
fi

convert -strip -interlace Plane -gaussian-blur 0.05 -quality 85% -resize "$1x" "$2" "$3"
