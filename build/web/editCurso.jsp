<div id="main" class="container-fluid">
                  
    <h3 class="page-header">Editar curso </h3>      
            
    <form action="index.jsp" data-toggle="validator">
           
        <div class="row">
    
                
            <div class="form-group col-md-12">
                  
                <label for="campo1">Nome do curso</label>                 
                <input type="text" class="form-control input-lg" id="nomeCurso"  data-error="Por favor, informe o nome do curso!" required="" palceholder="Informe o nome do curso">
                <div class="help-block with-errors"></div>        
            </div>
                
            <div class="form-group col-md-2">
                 
                <label for="campo2">Sigla</label>                    
                <input type="text" class="form-control input-lg" id="sigla"  data-error="Informe uma sigla" required="">
                 <div class="help-block with-errors"></div>
            </div>
             
            <div class="form-group col-md-2">
                     
                <label for="campo3">Quantidade de turmas</label>        
                <input type="text" class="form-control input-lg" id="qtdTurma" data-error="N. Turmas" required="">
                <div class="help-block with-errors"></div>
            </div>
            
                        
            <div class="form-group col-md-2">
                     
                <label for="campo3">Semestres</label>        
                <input type="text" class="form-control input-lg" id="qtdSemestre" data-error="N. Semestre" required="">
                <div class="help-block with-errors"></div>
            </div>
            
            <div class="form-group col-md-4">
                 <label for="dt_cadastro">Data de Cadastro</label>					
                 <input type="date" class="form-control input-lg" name="dt_cadastro" disabled>
            </div>    
            
       </div>
                                 
        <div class="row">
        
            <div class="form-group col-md-12">
                  
                <label for="campo1">Nome do Coordenador</label>                 
                <input type="text" class="form-control input-lg" id="nomeCoord"  data-error="Por favor, informe o nome do Coordenador!" required="" palceholder="Informe o nome do curso">
                <div class="help-block with-errors"></div>        
            </div>     
   
        </div>     
        
        <hr />
            
            
        <div id="actions" class="row">
                
               
            <div class="col-md-12">
                 
                <button type="submit" class="btn btn-success btn-lg">Editar</button>           
                <a href="listagemCurso.jsp" class="btn btn-default btn-lg">Cancelar</a>
              
            </div>
            
        </div>
            
    </form>  

