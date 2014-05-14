App.Issue = DS.Model.extend
  title: DS.attr('string')
  description: DS.attr('string')

App.Issue.FIXTURES = [
 {
   id: 1,
   title: 'Learn Ember.js',
   description: 'hahah learn ejejeje'
 },
 {
   id: 2,
   title: '...',
   description: 'ok, ...'
 },
 {
   id: 3,
   title: 'Profit!',
   description: 'good profit!'
 }
];

