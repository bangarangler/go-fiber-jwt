package main

import (
	"github.com/gofiber/fiber"
)

func main() {
	app := fiber.New()

	app.Get("/", func(ctx *fiber.Ctx) {
		ctx.Send("hello world")
	})

	err := app.Listen(3000)
	if err != nil {
		panic(err)
	}
}
