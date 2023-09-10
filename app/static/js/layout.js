function buscarPersona(nombre)
{
    console.log("persona: "+$('#busqueda').val());
}

function eliminarModal(id)
{
    console.log("Registro => " , id)
    $('#confirmacion').modal('show')
    $('#registroSeleccionado').val(id);
}

function eliminarDesactivar()
{
    $('#confirmacion').modal('hide')
}