Red [
    Title: ""
]

if not value? '.redlang [
    do https://redlang.red
]
.redlang [script-path get-short-filename confirm]

file: get-script-file
if file [
    >short-filename: get-short-filename file
    block: reverse split form file "."
    extension: block/2

    switch/default extension [
        "html" [
            .redlang [html-embed]
            src: html-embed
            if confirm (rejoin [{Write to } file { ?}]) [
                write file src
            ]            
        ]
    ][
        block: split form file "."
        prefix: block/1       
        switch/default prefix [
            "cd" [
                src: "template cd"
                if confirm (rejoin [{Write to } file { ?}]) [
                    write file src
                ]            
            ]
        ][
            
        ]
    ]
]




