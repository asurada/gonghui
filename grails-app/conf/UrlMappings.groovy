class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
        "/"(controller:'home', action:'index')
		"/dev"(view:"/index")
		"500"(view:'/error')
	}
}
