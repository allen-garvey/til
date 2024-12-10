# web project
find . | egrep '^\./(node_modules|.git|public_html)/' --invert-match | egrep '\.(js|ts|jsx|tsx|php|vue)$' | xargs wc -l | sort -nr | less

# elixir phoenix project
find . | egrep '^\./(node_modules|.git|public_html|deps)/|priv/.+/assets/.*$|_test\.exs$|test/support/.*\.ex' --invert-match | egrep '\.(js|php|vue|ex|eex|exs)$' | xargs wc -l | sort -nr | less