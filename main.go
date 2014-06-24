package main

import (
	"github.com/go-martini/martini"
	"github.com/ShaneKilkelly/dateservice/routes"
)

func main() {
	app := martini.Classic()
	routes.Initialize(app)
	app.Run()
}
