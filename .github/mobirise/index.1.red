Red [
    Title: "index.red"
]

do https://redlang.red/templating
.html-header: function [
    ;/no-cache: TODO
    /title >title
    /angular >angular-version
    /data >data-path
][

    template-settings: [
        angular-version: (>angular-version)
        title: (>title)
        data-path: (>data-path)
    ]


    template: read https://templates.red/mobirise/res/index.template.html
    output: render/data template template-settings
    return output

]
html-header: :.html-header

.get-header-Page: function [][
    it: read https://templates.red/mobirise/res/header.template.html
    return it
]
header-page: :.get-header-page

.get-section-title: function [][
    it: read https://templates.red/mobirise/res/section-title.html
    return it    
]
section-title: :.get-section-title

.get-gallery-cards-4: function [][
    it: read https://templates.red/mobirise/res/gallery-cards-4.html
    return it    
]  
gallery-cards-4: :.get-gallery-cards-4   

.get-gallery-cards-6: function [][
    it: read https://templates.red/mobirise/res/gallery-cards-6.html
    return it    
]   
gallery-cards-6: :.get-gallery-cards-6   

.get-footer: function [][
    it: read https://templates.red/mobirise/res/footer.html
    return it
]
footer: :.get-footer


