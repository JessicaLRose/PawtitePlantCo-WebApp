package com.teksystems.ecommerce_site.database.entity;


import lombok.*;

import javax.persistence.*;

@Getter
@Setter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "user_roles")
public class UserRole {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "roles_ID")
    private Integer id;

//    @ManyToOne(fetch = FetchType.LAZY, optional = false)
//    @JoinColumn(name = "user_ID", nullable = false)
//    private User user;


    @Column(name = "user_ID_FK", nullable = false)
    private Integer userRoleID;



    @Column(name = "role_name")
    private String userRole;
}