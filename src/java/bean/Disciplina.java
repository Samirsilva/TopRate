package bean;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Table(name = "disciplina")
@Entity
public class Disciplina {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idDisciplina" )
    private Long idDisciplina;
        
    @Column(name = "votos", length = 80, nullable = false )
    private Integer votos;
    
    @Column(name = "nomeDisciplina", length = 80, nullable = false )
    private String  nomeDisciplina;
    
    @Column(name = "dataCadastro", length = 80, nullable = false )
    private String  dataCadastro;
    
    @Column(name = "dataAtualizacao", length = 80, nullable = false )
    private String  dataAtualizacao;

    //Metodos getters
    public Long  getIdDisciplina()   {return idDisciplina;}
    public Integer  getVotos()          {return votos;}
    public String   getNomeDisciplina() {return nomeDisciplina;}
    public String   getDataCadastro()   {return dataCadastro;}
    public String   getDataAtualizacao(){return dataAtualizacao;}
    
    //Metodos Setters
    public void setIdDisciplina     (Long idDisciplina)  {this.idDisciplina      = idDisciplina;}
    public void setVotos            (Integer votos)         {this.votos             = votos;}
    public void setNomeDisciplina   (String nomeDisciplina) {this.nomeDisciplina    = nomeDisciplina;}
    public void setDataCadastro     (String dataCadastro)   {this.dataCadastro      = dataCadastro;}
    public void setDataAtualizacao  (String dataAtualizacao){this.dataAtualizacao   = dataAtualizacao;}
       
}
