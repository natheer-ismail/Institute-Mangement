const MenuHide = document.getElementById("MenuBar");
const HideNavigation = document.getElementById("Navigaion");
const NavigationCountainer = document.getElementById("NavigationContainer");
const txtLogoHide = document.getElementById("txtLogo");
const NavHideH1 = document.getElementById("Nav");
const HideDropDown = document.getElementById("DropDown");
const LangUl = document.getElementById("Language_ul");




MenuHide.addEventListener("click", () => {
    HideMenu();
})
function HideMenu() {
    HideNavigation.classList.toggle("is-active");
    txtLogoHide.classList.toggle("is-active");
    NavHideH1.classList.toggle("is-active");
    MenuHide.classList.toggle("is-active");
    HideDropDown.classList.toggle("is-active");
    LangUl.classList.toggle("is-active");
    NavigationCountainer.classList.toggle("is-active");



}