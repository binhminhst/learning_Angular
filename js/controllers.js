 
var app = angular.module("appShop", []); 

app.factory('authInterceptor', function ($rootScope, $q, $window) {
  return {
    request: function (config) {
      config.headers = config.headers || {};
      if ($window.sessionStorage.token) {
        config.headers.Authorization = 'Bearer ' + $window.sessionStorage.token; 
      }
      return config;
    },
    response: function (response) {
      if (response.status === 401) {
         alert('Can not authentication'); return false;
      }
      return response || $q.when(response);
    }
  };
});

app.config(function ($httpProvider) {
   $httpProvider.interceptors.push('authInterceptor');  
});		   
		   
app.controller("UserController", function($scope, $http, $window, $q) {
                  
		$scope.loginUser = function(){								
					$http({ 
							method: 'POST',
							url: 'api/public/api/login', 
							params: { input_email: $scope.email , input_password: $scope.password } 
					}).then(function (data) {  
							  var respone_data =  angular.fromJson(data).data; 
							  $scope.data_show = respone_data.message ; 							
							if(respone_data.status == 1){
								
								 getToken(); // Login success
								
							}
					});											
		}
		
		function getToken(){
				 
					$http({ 
							method: 'GET',
							url: 'api/public/api/auth/create/'+$scope.email+'/'+$scope.password 
					}).then(function (data) { 
						    $window.sessionStorage.token = angular.fromJson(data).data ;
						    localStorage.setItem('key_token', angular.fromJson(data).data);
							getInfoShop();	
					});
					
		} // getToken  
		
		function getInfoShop(){			        
					$http({ 
							method: 'GET',
							url: 'api/public/api/shop/show' 
					}).then(function (data) { // console.log(data.data[0].id); return false;
							 $scope.data_list = data.data  ; 
							 						
					});
		} // getInfoShop
				
		           
		$scope.searchShop = function(){
					if(((String($scope.fFabRic) == "") || (String($scope.fFabRic) == "undefined")) &&
					   ((String($scope.fType) == "") || (String($scope.fType) == "undefined"))){
						getInfoShop();
					}						
					else if((String($scope.fFabRic) != "") && ((String($scope.fType) == "") || (String($scope.fType) == "undefined"))){
						$http({ 
								method: 'GET',
								url: 'api/public/api/shop/fab_ric/'+$scope.fFabRic
						}).then(function (data) {  
								if(angular.fromJson(data.data) == "") $scope.data_list = "Data Updating";
								else								  $scope.data_list = data.data  ; 
						});		

					}
					else if((String($scope.fType) != "") && ((String($scope.fFabRic) == "") || (String($scope.fFabRic) == "undefined"))){
						$http({ 
								method: 'GET',
								url: 'api/public/api/shop/type/'+$scope.fType
						}).then(function (data) {  
								if(angular.fromJson(data.data) == "") $scope.data_list = "Data Updating";
								else								  $scope.data_list = data.data  ;
						});		

					}
					else if((String($scope.fFabRic) != "") && (String($scope.fType) != "")){
						$http({ 
								method: 'GET',
								url: 'api/public/api/shop/show/'+$scope.fFabRic+'/'+$scope.fType 
						}).then(function (data) {  
								if(angular.fromJson(data.data) == "") $scope.data_list = "Data Updating";
								else								  $scope.data_list = data.data  ; 
						});		

					}
		}
});  
 