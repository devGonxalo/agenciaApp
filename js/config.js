app.config( function($routeProvider){

	$routeProvider
		.when('/',{
			templateUrl: 'parciales/home.html',
			controller: 'inicioCtrl'
		})
		.when('/autos',{
			templateUrl: 'parciales/autos.html',
			controller: 'autosCtrl'
		})
		.when('/auto/:codigo',{
			templateUrl: 'parciales/auto.html',
			controller: 'autoCtrl'
		})
		.otherwise({
			redirectTo: '/'
		});


});