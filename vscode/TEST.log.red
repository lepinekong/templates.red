Red [
    Title: ""
]

Article: [

    Title: {}
    Sub-title: ""

    Tracking-ids: [
        GUID: {}
        Jira-Id: {}
    ]

    Description: [
        .title: {Test Description}
        .text: {

        }
        .type: [
            "CODE REVIEW"
            | "UNIT TEST" 
            | "FUNCTIONAL TEST" 
            | "INTEGRATION TEST"
            | "LOAD TEST"
            | "END TO END TEST"
            | "OPERATIONAL TEST"
        ]
        .non-regression-testing: [ "NO" | "YES"]
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

    P-Plan: [
        .title: {Plan}
        .text: {Steps:}
    ]

    D-Do: [
        .title: {Do}
        .date: ""
        .text: {Executed:}
    ]

    C-Check: [
        .title: {Check}
        .text: {Output:}
        .code: {

        }
        .quote: ["KO" | "OK" ]
    ]

    S-Study: [
        .title: {Study}
        .quote: {Diagnostic}
        .text: {
            
        }
        .quote: {Action}
        .text: {
            
        }
    ]
]

do http://readable.red
markdown-gen
