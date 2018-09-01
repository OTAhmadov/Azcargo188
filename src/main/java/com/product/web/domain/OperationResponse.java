/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.domain;

import com.product.web.enums.ResultCode;

/**
 *
 * @author shasanov
 */
public class OperationResponse {
    private ResultCode code;
    private MultilanguageString message;
    private Object data;

    public OperationResponse() {
    }

    public OperationResponse(ResultCode code) {
        this.code = code;
    }

    public ResultCode getCode() {
        return code;
    }

    public void setCode(ResultCode code) {
        this.code = code;
    }

    public MultilanguageString getMessage() {
        return message;
    }

    public void setMessage(MultilanguageString message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "OperationResponse{" + "code=" + code + ", message=" + message + ", data=" + data + '}';
    }
}
