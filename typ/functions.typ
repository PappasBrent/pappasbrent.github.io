#let print_list(list) = {
    if (list.len() == 1) {
        list.first()
    }
    else if (list.len() == 2) {
        [#list.first() and #list.last()]
    }
    else {
        list.join(", ", last: ", and ")
    }
}

#let skill(name: none, elements: ()) = box[
  *#name*: #print_list(elements)
]

#let experience(
  where: none
  , employer: none
  , dates: ()
  , title: none
  , responsibilities: ()) = box[
    #title #h(1fr) #employer \
    #print_list(dates.map(range => [#range.start - #range.end])) #h(1fr) #where
    #list(..responsibilities.map(r => [*#r.name*: #r.body]))
  ]

#let project(name: none, body: none) = box[*#name*: #body]

#let certification(body: none) = box[#body]

#let workshop(name: none, where: none, date: none) = box[
  *#name* #h(1fr) #where - #date
]
