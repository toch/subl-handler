#!/bin/bash

mkdir -p $HOME/bin
cat > $HOME/bin/subl-handler <<EOF
#!/bin/bash
FILE=\$1
FILE=\${FILE/subl\:\/\//}
subl \$FILE
EOF
chmod u+x $HOME/bin/subl-handler

mkdir -p $HOME/.local/share/applications/
cat > $HOME/.local/share/applications/subl-handler.desktop <<EOF
[Desktop Entry]
Name=subl-handler
Comment=Sublime Text URI scheme subl:// handler
Exec=$HOME/bin/subl-handler %u
Terminal=0
Type=Application
X-MultipleArgs=True
MimeType=x-scheme-handler/subl
Encoding=UTF-8
Categories=Application;
EOF

update-desktop-database $HOME/.local/share/applications/
xdg-mime default subl-handler.desktop x-scheme-handler/subl