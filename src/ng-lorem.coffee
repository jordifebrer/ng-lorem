angular.module("ngLorem",[])
.directive 'loremIpsum', () ->
  scope:
    repeat: '=repeat'
    words: '=words'
    chars: '=chars'
    reverse: '@reverse'
  restrict: 'E'
  transclude: true
  template: '<p ng-repeat="i in getNumber(repeat) track by $index"><span ng-bind="text"></span><span ng-transclude></span></p>'
  link: (scope) ->
    scope.getNumber = (num)->
      Array(num)
    scope.text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue arcu interdum, malesuada risus eu, auctor nibh. Suspendisse eget ante sapien. Fusce vehicula sollicitudin ornare. Curabitur sem urna, rhoncus at tristique sed, posuere nec nunc. Donec blandit volutpat dapibus. Aliquam mattis ornare vehicula. Nulla facilisi. Suspendisse aliquet ipsum et ante accumsan interdum. Curabitur dictum quis orci ut faucibus. Phasellus lobortis aliquam felis, et pulvinar nisi porta vel. Duis eleifend lorem at lacus accumsan, id pellentesque turpis blandit. Aliquam aliquam venenatis nibh ut commodo. Mauris laoreet mi pulvinar nisl venenatis, id lobortis diam mattis. Mauris porta orci risus, eget sodales mauris convallis a. Integer volutpat erat commodo, mollis nulla at, lobortis arcu. Pellentesque vitae scelerisque magna, sed hendrerit lectus.'
    scope.text = if scope.reverse then scope.text.split('').reverse().join '' else  scope.text
    scope.text = if scope.words then scope.text.split(/\s/)[0...scope.words].join(' ') else scope.text
    scope.text = if scope.chars then scope.text[0...scope.chars] else scope.text