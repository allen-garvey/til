# Better Grep

If you're using grep to search source code, it's much better to use either ack (ack-grep) or the silver searcher (ag) since these tools are faster than grep because they are specifically built for this task. In addition, they both ignore file patterns found in .gitignore and allow you to use Perl regular expressions on platforms that use BSD grep (i.e. macOS and FreeBSD).