//var etc_check = document.forms.adviserForm.etc_check;
var etc_name = document.forms.adviserForm.etc_name;

function checkEtc(check_a) {
    if(check_a.checked == true){
        enableEtc();
    }else{
        disableEtc();
    }
}

function enableEtc() {
    etc_name.disabled = false;
}

function disableEtc() {
    etc_name.disabled = true;
}