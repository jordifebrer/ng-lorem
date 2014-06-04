ng-lorem
========

Angular Lorem Ipsum Generator

Installation
------------

Using Bower:

```
bower install ng-lorem
```

How to use it
-------------

You should already have script required for Angular.

```html
<script type="text/javascript" src="angular.min.js"></script>
```

You should add after:

```html
<script type="text/javascript" src="ng-lorem.min.js"></script>
```

Then, inject `ngLorem` in your application module:

```javascript
angular.module('myApp', ['ngLorem']);
```

Finally, add the directive lorem-ipsum in your view/s:

```html
<lorem-ipsum></lorem-ipsum>
```


### Attributes

* `repeat`: number of paragraphs
```html
<lorem-ipsum repeat="2"></lorem-ipsum>
```
* `words`: number of words
```html
<lorem-ipsum words="5"></lorem-ipsum>
```
* `chars`: number of chars
```html
<lorem-ipsum chars="20"></lorem-ipsum>
```
* `reverse`: reverse paragraph
```html
<lorem-ipsum reverse="true"></lorem-ipsum>
```
* Also you can add characters at the end, adding them between tags
```html
<lorem-ipsum>...</lorem-ipsum>
```
