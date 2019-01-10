package PC;

import org.hibernate.annotations.Proxy;

import javax.persistence.*;

@Entity
@Table(name = "pc")
@Proxy(lazy=false)
public class PC {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "OPT")
    private String opt;

    @Column(name = "QUAN")
    private int quan;

    @Column(name = "NEED")
    private byte need;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOpt() {
        return opt;
    }

    public void setOpt(String opt) {
        this.opt = opt;
    }

    public int getQuan() {
        return quan;
    }

    public void setQuan(int quan) {
        this.quan = quan;
    }

    public byte getNeed() {
        return need;
    }

    public void setNeed(byte need) {
        this.need = need;
    }

    @Override
    public String toString() {
        return "PC{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", opt='" + opt + '\'' +
                ", quan=" + quan +
                ", need=" + need +
                '}';
    }
}
