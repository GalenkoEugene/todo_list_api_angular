angular.module 'app.projets', []

angular.module('app', [
  'ui.router',
  'templates',
  'app.projets'
])

.config(['$stateProvider', '$urlRouterProvider',
  ($stateProvider, $urlRouterProvider)->
    # $urlRouterProvider.otherwise '/sign_in'

    $stateProvider
      .state 'projects',
        url: '/projects'
        templateUrl: 'projects.html'

      .state 'sign_in',
        url: '/sign_in'
        template: '<div class="tab tab2"><p>Airedale hard cheese roquefort. Paneer pepper jack jarlsberg st. agur blue cheese bavarian bergkase macaroni cheese             croque monsieur cauliflower cheese. Bavarian bergkase cheesy grin port-salut taleggio stinking bishop cheese and biscuits rubber cheese blue   castello. Everyone loves.</p></div>'

])
.run()