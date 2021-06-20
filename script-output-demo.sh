cat <<heredoc
Writes std output in first file and std error in second file. Check the 2 files to see results.
heredoc
ls -la 1>file_out.txt 2>file_err_out.txt
