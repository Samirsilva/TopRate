<%@page import="bean.Aluno"%>
<%
    Aluno aluno = (Aluno)session.getAttribute("aluno");
    if(aluno.getTipo() != 1){
    response.sendRedirect("index.jsp");
    }else{
        
    }


%>

<div id="main" class="container-fluid">
                  
    <h3 class="page-header">Adicionar Dísciplina</h3>      
            
    <form action="index.jsp" data-toggle="validator">
           
        <div class="row">
          
            <div class="form-group col-md-12">
                  
                <label for="campo1">Nome da disciplina</label>                 
                <input type="text" class="form-control input-lg" id="nomeDisciplina"  data-error="Por favor, informe o nome da Dísciplina!" required="" palceholder="Informe o nome da dísciplina">
                <div class="help-block with-errors"></div>        
            </div>

       </div>
                                 
 
        <hr />
            
            
        <div id="actions" class="row">
                
               
            <div class="col-md-12">
                 
                <button type="submit" class="btn btn-success btn-lg">Salvar</button>           
                <a href="listagemDisciplina.jsp" class="btn btn-default btn-lg">Cancelar</a>
              
            </div>
            
        </div>
            
    </form>      
        
</div>


