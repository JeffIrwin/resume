# resume

## Prerequisites
- git bash, needed for `sed` on Windows:  https://git-scm.com/downloads
- XeLaTeX, available via MiKTeX on Windows:  https://miktex.org/download
- A PDF viewer, e.g. Adobe Acrobat

## Build PDF
- Export environment variables `EMAIL`, `MOBILE`, `ADDRESSL1`, ...
```
    export EMAIL="name@domain.com"
    export MOBILE="(123) 456-7890"
    export ADDRESSL1="123 Abc St"
    export ADDRESSL2="Suite 456"
    export ADDRESSL3="Enfield, MA 12345" 
```
- ... unless you want your contact info possibly exposed on GitHub
- Run `build.sh`

See also the template for this project:  https://github.com/cies/resume
