# Python simple http server on ip and port

Run Python simple http server on an ip address as well as a port. Edit host and port variables to change host ip and port the server serves on. Based on: [http://stackoverflow.com/questions/12268835/is-it-possible-to-run-python-simplehttpserver-on-localhost-only](http://stackoverflow.com/questions/12268835/is-it-possible-to-run-python-simplehttpserver-on-localhost-only)

`python -c 'host = "0.0.0.0";port=8080; import BaseHTTPServer as bhs, SimpleHTTPServer as shs; print "Server started on "+host +":"+str(port); bhs.HTTPServer((host, port), shs.SimpleHTTPRequestHandler).serve_forever()'`