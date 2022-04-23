// toggle button
const toggleBtn = document.querySelector(".toggle_btn");
const menu = document.querySelector(".nav_menu");

toggleBtn.addEventListener("click", () => {
    menu.classList.toggle("onOff_flex");
})
