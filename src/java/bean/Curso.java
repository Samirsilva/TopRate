package bean;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Table(name = "curso")
@Entity
public class Curso {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idCurso" )
    private Long idCurso;
    
    @Column(name = "votos", length = 80, nullable = false )
    private Integer votos;
    
    @Column(name = "quantidadeTurmas", length = 10, nullable = false )
    private Integer quantidadeTurmas;
    
    @Column(name = "quantidadeSemestres", length = 10, nullable = false )
    private Integer quantidadeSemestres;
    
    @Column(name = "dataCadastro", length = 15, nullable = true )
    private String  dataCadastro;
    
    @Column(name = "dataAtualizacao", length = 15, nullable = true )
    private String  dataAtualizacao;
    
    @Column(name = "nomeCurso", length = 80, nullable = false )
    private String  nomeCurso;
    
    @Column(name = "nomeCoordenador", length = 80, nullable = false )
    private String  nomeCoordenador;
    
    @Column(name = "sigla", length = 5, nullable = false )
    private String  sigla;

    //metodos getters
    public Long  getIdCurso()            {return idCurso;}
    public Integer  getVotos()              {return votos;}
    public Integer  getQuantidadeTurmas()   {return quantidadeTurmas;}
    public Integer  getQuantidadeSemestres(){return quantidadeSemestres;}
    public String   getDataCadastro()       {return dataCadastro;}
    public String   getDataAtualizacao()    {return dataAtualizacao;}
    public String   getNomeCurso()          {return nomeCurso;}
    public String   getNomeCoordenador()    {return nomeCoordenador;}
    public String   getSigla()              {return sigla;}

    //metodos Setters
    public void setIdCurso              (Long idCurso)               {this.idCurso               = idCurso;}
    public void setVotos                (Integer votos)                 {this.votos                 = votos;}
    public void setQuantidadeTurmas     (Integer quantidadeTurmas)      {this.quantidadeTurmas      = quantidadeTurmas;}
    public void setQuantidadeSemestres  (Integer quantidadeSemestres)   {this.quantidadeSemestres   = quantidadeSemestres;}
    public void setDataCadastro         (String dataCadastro)           {this.dataCadastro          = dataCadastro;}
    public void setDataAtualizacao      (String dataAtualizacao)        {this.dataAtualizacao       = dataAtualizacao;}
    public void setNomeCurso            (String nomeCurso)              {this.nomeCurso             = nomeCurso;}
    public void setNomeCoordenador      (String nomeCoordenador)        {this.nomeCoordenador       = nomeCoordenador;}
    public void setSigla                (String sigla)                  {this.sigla                 = sigla;}
       
}
