/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.service;

import com.product.web.domain.OperationResponse;
import com.product.web.enums.ResultCode;
import com.product.web.util.FtpUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Nazrin
 */
@Service
public class FtpService {
    private static final Logger log = Logger.getLogger(FtpService.class);
    
    @Value("${ftp.host}")
    private String host;
    
    @Value("${ftp.port}")
    private int port;
    
    @Value("${ftp.username}")
    private String username;
    
    @Value("${ftp.password}")
    private String password;
    
    
    public FTPFile[] listFtpDirectories(String directory) throws IOException {
        
        FTPClient client = new FTPClient();
        
        try {
            client.connect(host, port);
            
            if(!client.login(username, password)) {
                throw new IOException("Invalid ftp username/password");
            }
            
            client.changeWorkingDirectory(directory);
            return client.listDirectories();
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        finally {
            if(client.isConnected()) {
                client.logout();
                client.disconnect();
            }
        }
        
        return null;
    }
    
    public FTPFile[] listFtpFiles(String directory) throws IOException {
        
        FTPClient client = new FTPClient();
        
        try {
            client.connect(host, port);
            
            if(!client.login(username, password)) {
                throw new IOException("Invalid ftp username/password");
            }
            
            client.changeWorkingDirectory(directory);
            return client.listFiles();
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        finally {
            if(client.isConnected()) {
                client.logout();
                client.disconnect();
            }
        }
        
        return null;
    }
    
    public OperationResponse saveFtpFile(String directory, MultipartFile file, String name) throws IOException {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        
        FTPClient client = new FTPClient();
        
        try {
            client.connect(host, port);
            
            if(!client.login(username, password)) {
                throw new IOException("Invalid ftp username/password");
            }
            
            client.enterLocalPassiveMode();
            client.changeWorkingDirectory(directory);
            
            try(InputStream inputStream = file.getInputStream()) {
                client.setFileType(FTP.BINARY_FILE_TYPE);
//                String fullPath = directory + "/" + name + FtpUtils.getExtension(file.getContentType());
                String fullPath = name + FtpUtils.getExtension(file.getContentType());
               
                if(client.storeFile(fullPath, inputStream))  {
                    operationResponse.setData(fullPath);
                    operationResponse.setCode(ResultCode.OK);
                }
//                client.getReplyCode()
                
            }
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        finally {
            if(client.isConnected()) {
                client.logout();
                client.disconnect();
            }
        }
        
        return operationResponse;
    }
    
    public byte[] downloadFtpFile(String filePath) throws IOException {
        
        FTPClient client = new FTPClient();
        
        try {
            disableCertificateValidation();
            client.connect(host, port);
            
            
            if(!client.login(username, password)) {
                throw new IOException("Invalid ftp username/password");
            }
            
            client.enterLocalPassiveMode();
            
            try(ByteArrayOutputStream outputStream = new ByteArrayOutputStream()) {
                client.setFileType(FTP.BINARY_FILE_TYPE);
                client.retrieveFile(filePath, outputStream);
                return outputStream.toByteArray();
            }
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        finally {
            if(client.isConnected()) {
                client.logout();
                client.disconnect();
            }
        }
        
        return null;
    }
    
    public OperationResponse removeFtpFile(String fileFullPath) throws IOException {
        OperationResponse operationResponse = new OperationResponse(ResultCode.ERROR);
        
        FTPClient client = new FTPClient();
        
        try {
            client.connect(host, port);
            if(!client.login(username, password)) {
                throw new IOException("Invalid ftp username/password");
            }
            
            if(client.deleteFile(fileFullPath)) {
                operationResponse.setData(fileFullPath);
                operationResponse.setCode(ResultCode.OK);
            }
        }
        catch(Exception e) {
            log.error(e.getMessage(), e);
        }
        finally {
            if(client.isConnected()) {
                client.logout();
                client.disconnect();
            }
        }
        
        return operationResponse;
    }
    
    public static void disableCertificateValidation() {
    // Create a trust manager that does not validate certificate chains
    TrustManager[] trustAllCerts = new TrustManager[] { 
      new X509TrustManager() {
        public X509Certificate[] getAcceptedIssuers() { 
          return new X509Certificate[0]; 
        }
        public void checkClientTrusted(X509Certificate[] certs, String authType) {}
        public void checkServerTrusted(X509Certificate[] certs, String authType) {}
    }};

    // Ignore differences between given hostname and certificate hostname
    HostnameVerifier hv = new HostnameVerifier() {
      public boolean verify(String hostname, SSLSession session) { return true; }
    };

    // Install the all-trusting trust manager
    try {
      SSLContext sc = SSLContext.getInstance("SSL");
      sc.init(null, trustAllCerts, new SecureRandom());
      HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
      HttpsURLConnection.setDefaultHostnameVerifier(hv);
    } catch (Exception e) {}
  }
}
