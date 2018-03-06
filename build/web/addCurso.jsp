
<%@page import="bean.Aluno"%>
<%@page import="bean.Curso"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="DAO.HibernateUtil"%>

<%
    Aluno aluno = (Aluno)session.getAttribute("aluno");
    if(aluno.getTipo() != 1){
    response.sendRedirect("index.jsp");
    }else{
    

    
    String nome = request.getParameter("matricula");
    String nomeCoord = request.getParameter("matricula");
    String sigla = request.getParameter("senha");    
    String qnt_turmas = request.getParameter("curso");
    String qnt_semestres = request.getParameter("nome");
    
    if(nome != null && sigla != null && nome != null){
        Curso curso = new Curso();
        curso.setNomeCurso(nome);
        curso.setNomeCoordenador(nomeCoord);
        curso.setSigla(sigla);
        curso.setDataAtualizacao("08/05/2017");
        curso.setDataCadastro("08/05/2017");
        curso.setQuantidadeTurmas((Integer) Integer.parseInt(qnt_turmas));
        curso.setQuantidadeSemestres((Integer) Integer.parseInt(qnt_semestres));
        
        session.setAttribute("curso", curso);        
        
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session se = sf.openSession();
        Transaction tx = se.beginTransaction();        
        se.saveOrUpdate(curso);        
        tx.commit();        
        se.flush();
        se.close();   
     
    }
    }
    
%>

<div id="main" class="container-fluid">
                  
    <h3 class="page-header">Adicionar Curso</h3>      
            
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
                 
                <button type="submit" class="btn btn-success btn-lg">Salvar</button>           
                <a href="listagemCurso.jsp" class="btn btn-default btn-lg">Cancelar</a>
              
            </div>
            
        </div>
            
    </form>      
        
</div>

