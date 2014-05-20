App.Issue = DS.Model.extend
  title: DS.attr('string')
  description: DS.attr('string')
	due_date: DS.attr('string')
	employee: DS.attr('string')
	employee_id: DS.attr('integer')
	related_employee: DS.attr('string')
	status: DS.attr('integer')


App.Issue.FIXTURES = [
  {
    id: 1
    title: "Learn Ember.js"
    description: "hahah learn ejejeje"
    due_date: "2014.05.01"
    related_employee: "abc"
    employee: "Jimmy Liang"
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
