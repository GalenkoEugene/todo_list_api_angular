angular.module('app.projets')
  .controller('ProjectController', ['$scope',
    ($scope) ->
      $scope.todos = todos
  ])

todos = [
  { text: 'Awesome project', status: true },
  { text: 'Secong project name', status: false }
]
