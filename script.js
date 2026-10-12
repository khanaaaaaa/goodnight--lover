const enter = document.getElementById("enter");
const jumpscare = document.getElementById("jumpscare");
const sound = document.getElementById("scary-sound");

enter.addEventListener("click", function() {
    jumpscare.style.display = "block";
    sound.currentTime = 0;
    sound.play().catch(error => {
        console.log("Sound could not play:", error);
    });
    setTimeout(function() {
        window.location.href = "home.html";
    }, 3000);
});