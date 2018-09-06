Red [
    Title: ""
]

.redlang [script-path get-short-filename confirm]

file: get-script-file
if file [
    >short-filename: get-short-filename file
    block: reverse split form file "."
    extension: block/2

    switch/default extension [
        "js" [
            src: html-embed
            if confirm (rejoin [{Write to } file { ?}]) [
                write file src
            ]            
        ]
    ][
        block: split form file "."
        prefix: block/1       
        switch/default prefix [
            "server" [
                src: "template server.js"
                if confirm (rejoin [{Write to } file { ?}]) [
                    write file src
                ]            
            ]
        ][
            
        ]
    ]
]
