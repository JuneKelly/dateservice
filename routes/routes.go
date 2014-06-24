package routes

import (
	"github.com/go-martini/martini"
	"github.com/martini-contrib/render"
	"time"
)

// a handy alias
type JsonMap map[string]interface{}

// root route
func home(r render.Render) {
	now := time.Now().Format(time.UnixDate)
	result := JsonMap{"currentTime": now}

	r.JSON(200, result)
}

// set up the app routes
func Initialize(app *martini.ClassicMartini) {
	// middleware
	app.Use(render.Renderer())

	// url routes
	app.Get("/", home)
}
