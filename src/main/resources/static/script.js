
function validarCampos(){
    const email = document.getElementById("email");
    const senha = document.getElementById("senha");
    const btn = document.getElementById("btn_logar");
    
    if(email.value.length > 0 && senhaS.value.length > 0){
        btn.disable = false;
    }
    
}