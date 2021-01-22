var app = angular.module('agenciaApp',['ngRoute']);

app.controller('mainCtrl', ['$scope','$http', function($scope,$http){
  
	$scope.menuSuperior = 'parciales/menu.html'; 


	$scope.setActive = function(Opcion){

		$scope.mInicio   = "";
		$scope.mAutos    = "";

		$scope[Opcion] = "active";

	} 

}]);