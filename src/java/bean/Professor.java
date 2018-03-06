package bean;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Table(name = "professor")
@Entity
public class Professor {
        
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idProfessor" )
    private Long idProfessor;
    
    @Column(name = "votos", length = 80, nullable = false )
    private Integer votos;
    
    @Column(name = "nomeDisciplina", length = 80, nullable = false )
    private String  nomeProfessor;
    
    @Column(name = "dataCadastro", length = 80, nullable = false )
    private String  dataCadastro;
    
    @Column(name = "dataAtualizacao", length = 80, nullable = false )
    private String  dataAtualizacao;

    //Metodos getters
    public Long  getIdProfessor()    {return idProfessor;}
    public Integer  getVotos()          {return votos;}
    public String   getNomeProfessor()  {return nomeProfessor;}
    public String   getDataCadastro()   {return dataCadastro;}
    public String   getDataAtualizacao(){return dataAtualizacao;}
    
    //Metodos Setters
    public void setIdProfessor      (Long idProfessor)   {this.idProfessor       = idProfessor;}
    public void setVotos            (Integer votos)         {this.votos             = votos;}
    public void setNomeProfessor    (String nomeProfessor)  {this.nomeProfessor     = nomeProfessor;}
    public void setDataCadastro     (String dataCadastro)   {this.dataCadastro      = dataCadastro;}
    public void setDataAtualizacao  (String dataAtualizacao){this.dataAtualizacao   = dataAtualizacao;}
}
