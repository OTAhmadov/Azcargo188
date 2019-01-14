/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.domain;

import lombok.Data;

/**
 *
 * @author Orkhan
 */
@Data
public class About {
    private int id;
    private MultilanguageString title;
    private MultilanguageString content;

    public About() {
    }

    public About(int id, MultilanguageString title, MultilanguageString content) {
        this.id = id;
        this.title = title;
        this.content = content;
    }
}
