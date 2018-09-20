Red [
    Title: ""
]

if not value? '.redlang [
    do https://redlang.red
]
.redlang [cache assemble]

src: .assemble %../includes
write %../template.SASU.un-associé.100pc.CDC.1.red src
