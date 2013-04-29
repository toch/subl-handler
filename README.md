subl-handler
============

Setup and handle subl:// protocol to open them in Sublime Text on Linux system


## Install

```
bash ./install.sh
```

## Use with firefox

* Open Firefox
* Browse subl://<path_to_your_file>
* Select subl-handler and check "Remember my choice for subl links."

## Use with XDG

```
xdg-open subl://<path_to_your_file>
```

## Open at a given line and column

Sublime Text can open at a given line and column by suffixing the URI with
:line or :line:column

```
xdg-open subl://<path_to_your_file>:<line_number>:<column_number>
```
