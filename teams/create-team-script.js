let team_name = document.getElementById("team-name").value;
let team_nationality = document.getElementById("team-nationality").value;
let team_submit_btn = document.getElementById("team-form-btn");

function checkFormValues() {

    if(team_name.length > 2 || team_nationality.length > 4) {


        document.getElementById("team-form-btn").onclick = function () {
            location.href="create-players-page.php";
        }
    } else {

        alert("Team name must be at least 2 characters long and nationality must be correct!!")

    }
}

document.getElementById('team-logo').onchange = function () {
    var src = URL.createObjectURL(this.files[0])
    document.getElementById('image').src = src
}
