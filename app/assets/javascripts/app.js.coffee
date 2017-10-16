angular.module 'app.projets', []

angular.module('app', [
  'templates',
  'ui.router',
  'app.projets'
])

.config(['$stateProvider', '$urlRouterProvider',
    ($stateProvider, $urlRouterProvider)->
      $urlRouterProvider.otherwise '/sign_in'

      $stateProvider
        .state 'projects',
          url: '/projects'
          templateUrl: 'projects.html'
          controller: 'ProjectController'

  ])
