# Upload File Limits

Upload file size can be limited by ModSecurity. This is what is happening if you see a Apache error message when you try to upload a file that is too big (the default limit is 128MB) and you see `ModSecurity: Request body (Content-Length) is larger than the configured limit (134217728)` in the `error_log`.

You can disable file upload size limit completely by setting `SecRequestBodyLimit	2147483647` in `/usr/local/apache/conf/modsec2/custom.conf` on CentOS.