cat << heredocDelimiter
Heredoc comment line 1
Heredoc comment line 2
heredocDelimiter

echo "Text written in source-1 for replace" > target-1.txt
echo "Text written in source-1 for replace" > target-1.txt
echo "Text written in source-1 for append" >> target-2.txt
echo "Text written in source-1 for append" >> target-2.txt
: '
Commented line 1
Commented line 2'
