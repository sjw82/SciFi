window.addEventListener("DOMContentLoaded", init, false)
function init() {
    const buttons = document.querySelectorAll(".button")
    for (var i = 0; i < buttons.length; i++) {
        buttons[i].addEventListener("click", toggle, false)
    }
}
function toggle() {
    const panels = document.querySelectorAll("#wrapper > div")
    for (var i = 0; i < panels.length; i++){
        panels[i].style.display = "none"
    }
    const selected = this.id + "text";
    document.querySelector("#" + selected).style.display = "block"
}