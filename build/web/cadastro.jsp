

<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="DAO.HibernateUtil"%>
<%@page import="bean.Aluno"%>
<%          
    String matricula = request.getParameter("matricula");
    String senha = request.getParameter("senha");    
    String curso = request.getParameter("curso");
    String nome = request.getParameter("nome");
    
    if(matricula != null && senha != null && nome != null){
        Aluno aluno = new Aluno();
        aluno.setMatricula(matricula);
        aluno.setSenha(senha);
        aluno.setCurso(curso);
        aluno.setNome(nome);
        session.setAttribute("aluno", aluno);
        
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session se = sf.openSession();
        Transaction tx = se.beginTransaction();        
        se.saveOrUpdate(aluno);        
        tx.commit();        
        se.flush();
        se.close(); 
    }
%>
<div id="main" class="container-fluid">
     <a href="addAluno.jsp">Lista</A>          
    <form role="form" action="cadastro.jsp"  data-toggle="validator">
             
        
        <div class="row">  
        
            <div class="form-group col-md-5"> 
                
                </br>
                <label for="matricula">Nome:</label>               
                <input type="text" class="form-control input-lg" required="required" name="nome">        
                <div class="help-block with-errors"></div>                 
                <br>
                
                </br>
                <label for="matricula">Matrícula</label>               
                <input type="text" class="form-control input-lg" required="required" name="matricula" placeholder="EX: 16134114">        
                <div class="help-block with-errors"></div>                 
                <br>
             
            </div>
            
            <div class="form-group col-md-8"> 
            
                <label for="curso" class="control-label" input-lg>Informe o curso</label>          
                <select id="cursoS" class="form-control input-lg" required="required" name="curso">           
                    
                    <option value="unknown">Análise e desenvolvimento de sistemas</option>       
                    <option value="alabama">Pedágogia</option>           
                    <option value="alaska">Serviço social</option>          
            
                </select>         
                <div class="help-block with-errors"></div>
            
            </div>
                
            <div class="form-group col-md-5">   
                        
                <label for="inputPassword" class="control-label">Senha</label>         
                <input type="password" id="inputPassword" class="form-control input-lg" required="required" name="senha" placeholder="Informe sua senha">        
                <div class="help-block with-errors"></div>
            
            </div>

            <div class="form-group col-md-5"> 
                        <label for="inputConfirm" class="control-label">Confirmar senha</label>
                        <input type="password" id="inputConfirm" class="form-control input-lg" required="required" name="Conf_senha" placeholder="Confirme a senha"  data-match="#inputPassword" data-match-error="Atenção! As senhas não estão iguais.">
                        <div class="help-block with-errors"></div>
                        <br>
            </div>
            
            <div class="form-group col-md-5"> 
                        <label for="dt_datastro">Data de Cadastro</label>					
                        <input type="date" class="form-control input-lg" name="dt_cadastro" disabled>
                        <br>
                        <input type="submit" class="btn btn-success input-lg" id="submitbtn" name="submit" value="Cadastrar">
             </div>          
    </form>
    
</div> 
</div> 
