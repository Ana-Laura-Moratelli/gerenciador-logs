function filtrarTabela() {
    var filtroSelect = document.getElementById("filtroSelect");
    var tabela = document.getElementById("tabela");
    var linhas = tabela.getElementsByTagName("tr");

    for (var i = 1; i < linhas.length; i++) {
        var tipoLinha = linhas[i].getElementsByTagName("td")[1].innerText;
        var filtroSelecionado = filtroSelect.value;

        if (filtroSelecionado === "todos" || tipoLinha === filtroSelecionado) {
            linhas[i].style.display = "";
        } else {
            linhas[i].style.display = "none";
        }
    }
}