// app/javascript/controllers/index.js
import { application } from "./application";
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading";
// import HomeController from "./home_controller";
import ReactController from "./react_controller";

// Eager load all controllers defined in the import map under controllers/**/*_controller
eagerLoadControllersFrom("controllers", application);

// application.register("home", HomeController);
application.register("react", ReactController);
