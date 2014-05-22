App.Issue = DS.Model.extend
  title: DS.attr('string')
  description: DS.attr('string')
  due_date: DS.attr('string')
  employee: DS.attr('string')
  employee_id: DS.attr('integer')
  related_employee: DS.attr('string')
  related_company: DS.attr('string')
  status: DS.attr('integer')


App.Issue.FIXTURES = [
  {
    id: 1
    title: "Anna演出片段放youku"
    description: "hahah learn ejejeje"
    due_date: "2014.05.01"
    related_employee: "香港员工,陈文益,Matthew Wan,loshanling"
    related_company: "普尔瀚达"
    employee: "梁益华"
    employee_id: 23
    status: 0
  }
  {
    id: 2
    title: "..."
    description: "ok, ..."
  }
  {
    id: 3
    title: "Profit!"
    description: "good profit!"
    due_date: "2014.05.01"
    employee: "Jimmy Liang"
    employee_id: 23
    status: 0
  }
]
