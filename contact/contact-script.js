function contactCheck() {
    var username = document.forms[0].elements["username"].value;
    var text = document.forms[0].elements["text"].value;

    if (username.includes(" ") || username == "") {
        window.alert("Username can't be empty, have spaces or have numbers.");
        return false;
    } else if (text.length < 5) {
        window.alert("Message needs to be at least 5 characters long.");
        return false;
    } else if (text.length > 255) {
        window.alert("Message can't be longer that 255 characters.");
        return false;
    } else {
        window.alert("Thank you for your message!");
        return true;
    }
}

function hasNumber(string) {
    var arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    for (var i = 0; i < arr.length; i++) {
        if (string.includes(String(arr[i]))) {
            return true;
        }
    }
    return false;
}