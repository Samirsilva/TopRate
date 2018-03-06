<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    
    

%>
<div id="main" class="container-fluid">
     
    <div id="top" class="row">
            
        <div class="col-md-9"> <h2>Ranking de Cursos</h2> </div>
 

 
        <div class="col-md-3">
        
            <a href="addCurso.jsp" class="btn btn-success btn-lg pull-right h2 glyphicon glyphicon-plus"> NOVO CURSO</a>
    
        </div>
     
    </div> <!-- /#top -->
     
    <hr />
     
    <div id="list" class="row">
     
     <div class="table-responsive col-md-12">
        
         <table class="table table-striped" cellspacing="0" cellpadding="0">
            
             <thead>
                
                 <tr>
                    
                     <th>Posição</th> 
                     <th>Nome do curso</th>
                     <th>Sigla</th>
                     <th>Data de atualização</th>
                     <th>Votos</th>
                     <th class="actions">Ações</th>
                 
                 </tr>
            
             </thead>
            
             <tbody>
 
                <tr>
                    <td><img src="img/first.png"></td>
                    <td>Analise e desenvolvimento de sistemas</td>
                    <td>ADS</td>
                    <td>01/01/2015</td>
                    <td>0</td>
                    <td class="actions">
                        <button class="btn btn-primary " type="submit">
                    
                        <span class="glyphicon glyphicon-heart-empty"></span>
                
                        </button>
                        <a class="btn btn-success btn-md glyphicon glyphicon-zoom-in" href="viewCurso.jsp"> VISUALIZAR</a>
                        <a class="btn btn-warning btn-md glyphicon glyphicon-edit" href="editCurso.jsp"> EDITAR</a>
                        <a class="btn btn-danger btn-md glyphicon glyphicon-remove"  href="#" data-toggle="modal" data-target="#delete-modal"> EXCLUIR</a>
                    </td>
                </tr>
                
                <tr>
                    <td><img src="img/second.png"></td>
                    <td>Administração</td>
                    <td>ADM</td>
                    <td>01/01/2015</td>
                    <td>0</td>
                    <td class="actions">
                        <button class="btn btn-primary " type="submit">
                    
                        <span class="glyphicon glyphicon-heart-empty"></span>
                
                        </button>
                       <a class="btn btn-success btn-md glyphicon glyphicon-zoom-in" href="viewCurso.jsp"> VISUALIZAR</a>
                        <a class="btn btn-warning btn-md glyphicon glyphicon-edit" href="editCurso.jsp"> EDITAR</a>
                        <a class="btn btn-danger btn-md glyphicon glyphicon-remove"  href="#" data-toggle="modal" data-target="#delete-modal"> EXCLUIR</a>
                    </td>
                </tr>
                
                <tr>
                    <td><img src="img/third.png"></td>
                    <td>Administração</td>
                    <td>ADM</td>
                    <td>01/01/2015</td>
                    <td>0</td>
                    <td class="actions">
                        <button class="btn btn-primary " type="submit">
                    
                        <span class="glyphicon glyphicon-heart-empty"></span>
                
                        </button>
                       <a class="btn btn-success btn-md glyphicon glyphicon-zoom-in" href="viewCurso.jsp"> VISUALIZAR</a>
                        <a class="btn btn-warning btn-md glyphicon glyphicon-edit" href="editCurso.jsp"> EDITAR</a>
                        <a class="btn btn-danger btn-md glyphicon glyphicon-remove"  href="#" data-toggle="modal" data-target="#delete-modal"> EXCLUIR</a>
                    </td>
                </tr>
 
            </tbody>
        
         </table>
     </div>
    
    </div> <!-- /#list -->
     
    <div id="bottom" class="row">

   
    </div> <!-- /#bottom -->

    
</div>  <!-- /#main -->

