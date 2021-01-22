app.controller('autoCtrl', ['$scope','$routeParams', '$http', function($scope,$routeParams,$http){

	$scope.setActive("mAutos");

	var codigo = $routeParams.codigo; 

	$scope.actualizado = false;
	$scope.auto = {};

	$scope.creando = false;

	if (codigo == "nuevo"){

		$scope.creando = true

	}else{

		$http.get('php/servicios/autos.getAuto.php?c=' + codigo ).success(function(data){
			
				if ( data.err !== undefined ){
					window.location = "#/autos";
					return;
				}
				$scope.auto = data;	
		});
	}

	

	$scope.guardarAuto = function(){

		if ( $scope.creando ) {

			$http.post('php/servicios/autos.crear.php', $scope.auto).success(function(data){
				
				if ( data.err == false ) {
					$scope.actualizado = true;
					
					setTimeout (function(){
						$scope.actualizado =false;
						$scope.$apply();
					}, 3500);
				};
		});

		}else{

			$http.post('php/servicios/autos.guardar.php', $scope.auto).success(function(data){
				
				if ( data.err == false ) {
					$scope.actualizado = true;
					
					setTimeout (function(){
						$scope.actualizado =false;
						$scope.$apply();
					}, 3500);
				};
		});

		}

	}

}]);