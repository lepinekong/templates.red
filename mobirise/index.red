Red [
    Title: "index.red"
]

.html-header: function [
    /no-cache
    /title >title
    /angular >version
    /data-path >data-path
][
    return ""
]
html-header: :.html-header

.get-header-Page: function [][
    it: read https://codegen.red/mobirise/res/header.template.html
    return it
]
header-page: :.get-header-page

.get-section-title: function [][
    it: read https://codegen.red/mobirise/res/section-title.html
    return it    
]
section-title: :.get-section-title

.get-gallery-cards-4: function [][
    it: read https://codegen.red/mobirise/res/gallery-cards-4.html
    return it    
]  
gallery-cards-4: :.get-gallery-cards-4   

.get-gallery-cards-6: function [][
    it: read https://codegen.red/mobirise/res/gallery-cards-6.html
    return it    
]   
gallery-cards-6: :.get-gallery-cards-6   

.get-footer: function [][
    it: read https://codegen.red/mobirise/res/footer.html
    return it
]
footer: :.get-footer


