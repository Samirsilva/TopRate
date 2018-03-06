<%@page import="bean.Aluno"%>
<%
    Aluno aluno = (Aluno) session.getAttribute("aluno");
    String mat = request.getParameter("matricula");
    String sen = request.getParameter("senha");
    
if (aluno.getTipo() == 0) {
    
    if (mat == null && sen == null) {            
        
    }else{
       String mt = request.getParameter("matricula");
       String sn = request.getParameter("senha");
        if (mt == "admin" && sn == "admin") {
                aluno.setTipo(1);             
               session.setAttribute("aluno", aluno);
        }
    } 
    
} else {
        if (aluno.getTipo() == 1) {
            //redireciona para ambiente do administrador
            response.sendRedirect("addCurso.jsp");
        } else if (aluno.getTipo() == 2) {
            //redireciona para pagina inicial do site
            response.sendRedirect("index.jsp");
        }

    }


%>
<div id="main" class="container-fluid">
Mst: <%= mat %>
Sen: <%= sen %>


    <form class="form-signin" action="login.jsp" data-toggle="validator">             
        <BR><BR><BR><BR><BR><BR><BR><BR>

        <h1>Bem-Vindo, informe os dados.</h1>
        <BR><BR>       

        <div class="row">    

            <div class="form-group col-md-12">

                <input type="text" class="form-control input-lg" required="" name="matricula" placeholder="EX: 10294882">     
                <div class="help-block with-errors"></div>

            </div>
            <BR>

            <div class="form-group col-md-12">        

                <input type="password" id="inputPassword" class="form-control input-lg" required="required" name="senha" placeholder="Informe sua senha">
                <div class="help-block with-errors"></div>    

                <BR><BR>

                <button class="btn btn-lg btn-success btn-block" type="submit">Entrar</button>   

                Novo por aqui? <a href="cadastro.jsp">   Cadastre-se!</a>

            </div>

        </div>

    </form>

</div>

