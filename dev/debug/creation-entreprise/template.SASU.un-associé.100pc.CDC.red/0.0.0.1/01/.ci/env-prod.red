Red [
    Title: ""
]

iteration-number: 1
>short-filename: %template.SASU.un-associé.100pc.CDC

>file: rejoin [>short-filename %. iteration-number %.red]
comment: ask {comment: }
build: rejoin [{0.0.0.1.} iteration-number]
comment: rejoin [{build } build { } comment] 
>commit-message: rejoin [>file { } comment]

deploy-source: clean-path rejoin [%../ >file]
if not exists? deploy-source [
    print [deploy-source "doesn't exist !!!"]
    ?? deploy-source
    quit
]

production-folder: D:\myprojects\Red\templates.red\.github\
deploy-target: rejoin [production-folder %creation-entreprise\template.SASU.un-associé.100pc.CDC %.red]
folder-ci: D:\myprojects\Red\templates.red\.ci\.github

deploy-param: compose [
    (deploy-source)
    (deploy-target)
    (folder-ci)
]

if not value? '.redlang [
    do https://redlang.red
]
.redlang [log cd deploy]

.log %commit.log >commit-message

.deploy (deploy-param)