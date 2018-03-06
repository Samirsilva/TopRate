<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    
    

%>
<div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a target="_blank" href="http://www.cairu.br/"> Site oficial cairu</a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.cairu.br/portal/eventos/index.php"> Eventos</a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.cairu.br/portal/extensao/index.php"> Extensão</a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.cairu.br/portal/servicos.php"> Serviços</a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.cairu.br/portal/arquivos/calendario/CALENDARIO_ALUNOS_2017_3.pdf"> Calendário Acadêmico</a>
                    </li>
                    <!--<li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Dropdown <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                        </ul>
                    </li>-->

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Dashboard <small>Painel Administrativo</small>
                        </h1>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-12">
                        <div class="alert alert-info alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-info-circle"></i>  <strong>Olá Administrador</strong> Dê uma olhada no que tem de novo!
                        </div>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="glyphicon glyphicon-blackboard"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">3</div>
                                        <div>Cursos!</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    <a href="listagemCurso.jsp"><span class="pull-left">Acessar</span></a>
                                    <span class="pull-right"><i class="glyphicon glyphicon-plus"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="glyphicon glyphicon-tags"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">20</div>
                                        <div>Disciplinas!</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    <a href="listagemDisciplina.jsp"><span class="pull-left">Acessar</span></a>
                                    <span class="pull-right"><i class="glyphicon glyphicon-plus"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="glyphicon glyphicon-education"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">15</div>
                                        <div>Professores!</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    <a href="listagemProfessor.jsp"><span class="pull-left">Acessar</span></a>
                                    <span class="pull-right"><i class="glyphicon glyphicon-plus"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="glyphicon glyphicon-user"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">100</div>
                                        <div>Alunos Cadastrados!</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    <a href=""><span class="pull-left">Acessar</span></a>
                                    <span class="pull-right"><i class="glyphicon glyphicon-plus"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div> 
                </div>
                <!-- /.row -->

