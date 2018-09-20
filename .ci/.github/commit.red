Red [
    Title: ""
]

if not value? '.redlang [
    do https://redlang.red
]

.redlang [cd log]
.quickrun [git-commit]
if not value? '>commit-message [
    >commit-message: ask "commit message: "
]
.log (>commit-message)
.cd %../../ ; modify this path if necessary
if not exists? %.github [
    print [".github doesn't exist !!!" ]
    quit
]
commit (>commit-message)
