

    


const btnMoveTop = document.querySelector(".move-top");
window.addEventListener("scroll", (e) => {
    if (window.pageYOffset > 150) {
        btnMoveTop.classList.add("show");
    } else {
        btnMoveTop.classList.remove("show");
    }
});


window.onscroll = function () { myFunction(); };

var navbar = document.getElementById("controller");
var sticky = navbar.offsetTop;

function myFunction() {
    if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky");
    } else {
        navbar.classList.remove("sticky");
    }
}
