// Mostrar o modal de login
function mostrarModal() {
    document.getElementById('login-modal').style.display = 'block';
}

// Fechar o modal de login
function fecharModal() {
    document.getElementById('login-modal').style.display = 'none';
}

//Fecha o modal ao clicar fora do contéudo
window.onclick = function(event) {
    const modal = document.getElementById('login-modal');
    if (event.target === modal){
        fecharModal();
    }
};