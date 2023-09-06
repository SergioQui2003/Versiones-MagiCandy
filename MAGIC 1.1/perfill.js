$(function(){
    var operacao = "A"; //"A"=Adição; "E"=Edição
    var indice_selecionado = -1; //Índice do item selecionado na lista
    var tbClientes = localStorage.getItem("tbClientes");// Recupera os dados armazenados
    tbClientes = JSON.parse(tbClientes); // Converte string para objeto

    if(tbClientes == null){ // Caso não haja conteúdo, iniciamos um vetor vazio
        tbClientes = [];
    }

    $("#frmCadastro").on("submit",function(){
        if(operacao == "A"){
            return Adicionar(tbClientes);
        }else{
            return Editar(tbClientes,indice_selecionado);
}
    });

    Listar(tbClientes);

    $("#tblListar").on("click", ".btnEditar", function(){
        operacao = "E";
    indice_selecionado = parseInt($(this).attr("alt"));
    var cli = JSON.parse(tbClientes[indice_selecionado]);
    $("#txtCodigo").val(cli.Codigo);
    $("#txtNome").val(cli.Nome);
    $("#txtTelefone").val(cli.Telefone);
    $("#txtEmail").val(cli.Email);
    $("#txtCodigo").attr("readonly","readonly");
    $("#txtNome").focus();
    });

    $("#tblListar").on("click", ".btnExcluir",function(){
    indice_selecionado = parseInt($(this).attr("alt"));
    Excluir(tbClientes, indice_selecionado);
    Listar(tbClientes);
    });
});

function Adicionar(tbClientes){

    var cliente = JSON.stringify({
        Codigo   : $("#txtCodigo").val(),
        Nome     : $("#txtNome").val(),
        Telefone : $("#txtTelefone").val(),
        Email    : $("#txtEmail").val()
    });
    tbClientes.push(cliente);
    console.log("tbClientes - " + tbClientes);
    localStorage.setItem("tbClientes", JSON.stringify(tbClientes));
    alert("Registro adicionado.");
    return true;
}

function Editar(tbClientes,indice_selecionado){
    tbClientes[indice_selecionado] = JSON.stringify({
            Codigo   : $("#txtCodigo").val(),
            Nome     : $("#txtNome").val(),
            Telefone : $("#txtTelefone").val(),
            Email    : $("#txtEmail").val()
        });//Altera o item selecionado na tabela
    localStorage.setItem("tbClientes", JSON.stringify(tbClientes));
    alert("Informações editadas.")
    operacao = "A"; //Volta ao padrão
    return true;
}

function Excluir(tbClientes, indice_selecionado){
    tbClientes.splice(indice_selecionado, 1);
    localStorage.setItem("tbClientes", JSON.stringify(tbClientes));
    alert("Registro excluído.");

}

function Listar(tbClientes){
    $("#tblListar").html("");
    $("#tblListar").html(
        "<thead>"+
        "   <tr>"+
        "   <th></th>"+
        "   <th>Código</th>"+
        "   <th>Nome</th>"+
        "   <th>Telefone</th>"+
        "   <th>Email</th>"+
        "   </tr>"+
        "</thead>"+
        "<tbody>"+
        "</tbody>"
        );
    for(var i in tbClientes){
        var cli = JSON.parse(tbClientes[i]);
        $("#tblListar tbody").append("<tr>");
        $("#tblListar tbody").append("<td><img src='localStorage/edit.png' alt='"+i+"'class='btnEditar'/><img src='localStorage/delete.png' alt='"+i+"' class='btnExcluir'/></td>");
        $("#tblListar tbody").append("<td>"+cli.Codigo+"</td>");
        $("#tblListar tbody").append("<td>"+cli.Nome+"</td>");
        $("#tblListar tbody").append("<td>"+cli.Telefone+"</td>");
        $("#tblListar tbody").append("<td>"+cli.Email+"</td>");
        $("#tblListar tbody").append("</tr>");
    }
}