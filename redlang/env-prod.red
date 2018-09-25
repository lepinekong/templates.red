Red [
    Title: ""
]

iteration-number: 1
>build: 0.0.0.1
>short-filename: %<%short-filename%> ; install-extension
>file-extension: %<%file-extension%> ; .red

>source-relative-folder: %../

>production-folder: <%production-folder%> ;D:\myprojects\Red\quickinstall.red\.github\vscode\
>folder-ci: <%folder-ci%>  ;D:\myprojects\Red\quickinstall.red\.ci\prod

;start main =============================================================

if not value? '.redlang [
    do https://redlang.red
]
.redlang [to-dir]

production-folder: .to-dir >production-folder
deploy-target: rejoin [production-folder >short-filename >file-extension]
folder-ci: >folder-ci

>file: rejoin [>short-filename %. iteration-number >file-extension]
comment: ask {comment: }
build: rejoin [>build {.} iteration-number]
comment: rejoin [{build } build { } comment] 
>commit-message: rejoin [>file { } comment]

deploy-source: clean-path rejoin [>source-relative-folder >file]
if not exists? deploy-source [
    print [deploy-source "doesn't exist !!!"]
    ?? deploy-source
    quit
]

deploy-param: compose [
    (deploy-source)
    (deploy-target)
    (folder-ci)
]

.redlang [log cd deploy]

.log %commit.log >commit-message

.deploy (deploy-param)

;finish main =============================================================