<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    
    

%>
<div id="main" class="container-fluid">
     
    <div id="top" class="row">
            
        <div class="col-md-9"> <h2>Ranking de Cursos</h2> </div>
     
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
                        <a class="btn btn-success btn-md glyphicon glyphicon-zoom-in" href="viewCursoVisitante.jsp"> VISUALIZAR</a>

                    </td>
                </tr>
                
                <tr>
                    <td><img src="img/second.png"></td>
                    <td>Administração</td>
                    <td>ADM</td>
                    <td>01/01/2015</td>
                    <td>0</td>
                    <td class="actions">
                       <a class="btn btn-success btn-md glyphicon glyphicon-zoom-in" href="viewCursoVisitante.jsp"> VISUALIZAR</a>
                    </td>
                </tr>
                
                <tr>
                    <td><img src="img/third.png"></td>
                    <td>Administração</td>
                    <td>ADM</td>
                    <td>01/01/2015</td>
                    <td>0</td>
                    <td class="actions">
                       <a class="btn btn-success btn-md glyphicon glyphicon-zoom-in" href="viewCursoVisitante.jsp"> VISUALIZAR</a>
                    </td>
                </tr>
 
            </tbody>
        
         </table>
     </div>
    
    </div> <!-- /#list -->
     
    <div id="bottom" class="row">

   
    </div> <!-- /#bottom -->

    
</div>  <!-- /#main -->

