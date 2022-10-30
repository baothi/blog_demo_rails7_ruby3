import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  initialize() {
    // console.log("Initialized")
  }
  connect() {
    // this.element.textContent = "Hello"
    // console.log("hello world!")
  }
  toggleForm(event) {
    
    event.preventDefault();
    event.stopPropagation();
    const formID = event.params["form"];
    const commentBodyID = event.params["body"];
    // const editButtonID = event.params["edit"];

    const form = document.getElementById(formID);
    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");
    const commentBody = document.getElementById(commentBodyID);
    // const editButton = document.getElementById(editButtonID);

    commentBody.classList.toggle("d-none");
    // form.classList.toggle("mt-5");
    // commentBody.classList.toggle("d-none");
    // this.toggleEditButton(editButton);
    console.log("I clicked the edit button.");
  }
}
