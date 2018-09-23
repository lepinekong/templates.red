Red [
    Title: ""
]

Article: [

    Title: {}
    Sub-title: ""

    Tracking: [
        Date-Creation: ""
        GUID: {}
        Jira-Id: {}
        Related: [
            
        ]
        Status: ["Planned" | "Started" | "Debugging" | "UnitTesting" |  "Developed" |  "UserTesting" |  "Alpha-release"]
    ]    

    Priority: [
        .title: {Priority}
        .text: ["Blocking" | "Non blocking" |  "Productity" | "Nice to have"]
        .comment: [
            .author: {}
            .text: {
                
            } 
        ]
    ]    

    Description: [
        .title: {Description}
        .text: {Type:}
        .quote: ["Regression" | "Bug" | "Feature Request"]
        .text: {
            
        }        
    ]

    Resources: [
        .title: {Resources}
        .links: [
            
        ]
    ]
        
    P-Plan: [
        .title: {Plan}
        .text: {Steps:}
        .estimates: ""
        .start-datetime: ""
        .end-datetime: ""        
    ]

    D-Do: [
        .title: {Do}
        .start-datetime: ""
        .end-datetime: ""  
        .impediments: {}
        .text: {}

    ]

    C-Check: [
        .title: {Check}
        .text: {Result}
        .quote: {}
    ]

    S-Study: [
        .title: {Conclusion}
        .text: {
            
        }
    ]
]

do http://readable.red
markdown-gen
