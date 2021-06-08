  ; Applies auto-white balance to all images in current folder matching glob pattern
  ; based on: https://gist.github.com/dbuscombe-usgs/6085758
  ; To install save file in gimp scripts folder
  ; To find the scripts folder, open gimp and go to edit->preferences->folders->scripts
  ; cd to folder with images and run
  ; time gimp -i -b '(batch-color-correct "*.JPG")' -b '(gimp-quit 0)'
  ; changing *.JPG to image glob type
  ; script takes approx 6 seconds per image on Ryzen 3500u, ubuntu 20.10

  (define (batch-color-correct pattern  
                )  
  (let* ((filelist (cadr (file-glob pattern 1))))  
   (while (not (null? filelist))  
      (let* ((filename (car filelist))  
          (image (car (gimp-file-load RUN-NONINTERACTIVE  
                        filename filename)))  
          (drawable (car (gimp-image-get-active-layer image))))   
       (gimp-levels-stretch drawable)  
       (gimp-file-save RUN-NONINTERACTIVE  
               image drawable filename filename)  
       (gimp-image-delete image))  
      (set! filelist (cdr filelist))))) 