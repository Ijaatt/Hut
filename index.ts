import Elysia from "elysia";

const app = new Elysia()
  // Define Route
  .get("/", () => "Belajar Elysia !")
  // Run Server
  .listen(3000);