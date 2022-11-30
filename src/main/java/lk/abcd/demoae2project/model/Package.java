package lk.abcd.demoae2project.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@Entity
public class Package {
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Id;

    @Column(nullable = false,length = 50)
    private String packagename;

    @Column
    private String packagetype;

    @Column
    private String packageprice;

    @Column
    private String packagedetails;


}