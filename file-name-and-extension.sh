cat <<heredoc
Separate name and extension from complete filename.
heredoc
COMPLETE_FILE_NAME="file-1.ext"
NAME="${COMPLETE_FILE_NAME%%.*}"
EXTENSION="${COMPLETE_FILE_NAME##*.}"
#echo "$NAME"

cat<<here
Remove all files with .ext extension
here
rm *.ext
ls | egrep '\.mp4$|\.mp3$|\.ext$'

cat <<heredoc
Create new file without the extension.
heredoc
touch "$NAME"

ls | egrep '\.mp4$|\.mp3$|\.ext$'
#ls *.{ext}

cat <<heredoc
Rename the file to add the extension.
heredoc
mv "$NAME" "$COMPLETE_FILE_NAME"
#ls *.{ext}
ls | egrep '\.mp4$|\.mp3$|\.ext$'
