// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)
import { application } from "./application";
import HomepageController from "./homepage_controller";
application.register("homepage", HomepageController);
