angular.module('app').config( 
	($stateProvider, $urlRouterProvider) ->
		$stateProvider
			.state("home"
				url: "/home"
				templateUrl: 'pages/main-panel.html'
			)
			.state("gallery"
				url: "/galleries/:galleryId"
				templateUrl: 'main-panel/gallery.html'
				controller: 'ArtPieces'
			)
			.state("artPieceDetail"
				url: "/galleries/:galleryId/:artPieceId"
				template: '<art-piece-detail></art-piece-detail>'
				controller: 'ArtPieceDetail'
			)
			
		$urlRouterProvider
			.otherwise("/home")
)
