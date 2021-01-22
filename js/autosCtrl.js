app.controller('autosCtrl', ['$scope','$http', function($scope,$http){
	
	$scope.setActive("mAutos");

	$scope.autos = {};
	$scope.posicion = 5; 

	$http.get('php/servicios/autos.listado.php').success(function(data){

		$scope.autos = data;

	});

  	$scope.siguientes = function(){

  		if ( $scope.autos.length > $scope.posicion ) {
  			$scope.posicion += 5;

  		};
  	}
  	  	$scope.anteriores = function(){

  		if ($scope.posicion > 5) {
  			$scope.posicion -= 5;

  		};
  	}


}]);