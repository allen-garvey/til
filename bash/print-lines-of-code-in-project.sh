# web project
find . -type d \( -name "public_html" -o -name ".git" -o -name "node_modules"  -o -name "deps"  -o -name "priv" \) -prune -o -print | egrep '\.(js|ts|jsx|tsx|php|vue)$' | xargs wc -l | sort -nr | less

# elixir phoenix project
find . -type d \( -name "public_html" -o -name ".git" -o -name "node_modules"  -o -name "deps"  -o -name "priv" \) -prune -o -print | egrep '\.(js|php|vue|ex|eex|exs)$' | xargs wc -l | sort -nr | less

# python
find . -type d \( -name ".venv" -o -name ".git" -o -name "node_modules" \) -prune -o -print | egrep '\.(py)$' | xargs wc -l | sort -nr | less