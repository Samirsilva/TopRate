package bean;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Table(name = "aluno")
@Entity
public class Aluno implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id" )
    private Long id;
    
    @Column(name = "nome", length = 80, nullable = false )
    private String nome;
   
    @Column(name = "matricula", unique = true, length = 8, nullable = false)
    private String matricula;
    
    @Column(name = "senha", unique = false, length = 8, nullable = false)
    private String senha;
    
    @Column(name = "curso", unique = false, length = 8, nullable = false)
    private String  curso;
    
    @Column(name = "tipo", unique = false, length = 1, nullable = false)
    private Integer  tipo;

    //Metodos Getters
    public Long  getId()            {return id;}
    public String   getNome()       {return nome;}
    public String  getMatricula()   {return matricula;}
    public String  getSenha()      {return senha;}
    public String   getCurso()      {return curso;}
    public Integer getTipo() {return tipo;}
    
    //Metodos Setters
    public void setNome     (String nome)       {this.nome      = nome;}
    public void setMatricula(String matricula)  {this.matricula = matricula;}
    public void setSenha    (String senha)     {this.senha     = senha;}
    public void setCurso    (String curso)      {this.curso     = curso;}
    public void setId       (Long id)           {this.id        = id;}
    public void setTipo     (Integer tipo)      {this.tipo      = tipo;}
      


}
