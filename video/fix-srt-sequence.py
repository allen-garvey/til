# Reorders subtitle sequence in .srt file
# Useful in such cases as inserting subtitles in the middle of a file

from pathlib import Path

file_contents = Path("input.srt").read_text(encoding="utf-8").splitlines()

sequence_num = 1
# sequence number lines come after blank lines
next_sequence_line_index = 0

for i in range(0, len(file_contents)):
    if i == next_sequence_line_index:
        file_contents[i] = str(sequence_num)
        sequence_num += 1
    elif file_contents[i] == '':
        next_sequence_line_index = i+1

export_string = '\n'.join(file_contents)

Path("output.srt").write_text(export_string, encoding="utf-8")
