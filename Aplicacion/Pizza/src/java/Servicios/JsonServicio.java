package Servicios;

import Entidades.Json;
import Mapeadores.JsonMapeador;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JsonServicio {
    @Autowired
    private JsonMapeador jsonMapeador;
    
    public List<Json> GetJsonMensual(){
        List<Json> json = jsonMapeador.ProductoMensualJSON();
        
        return json;
    }
    
    public List<Json> GetJsonTrimestral(){
        List<Json> json = jsonMapeador.ProductoTrimestralJSON();
        
        return json;
    }
    
    public List<Json> GetJsonAnual(){
        List<Json> json = jsonMapeador.ProductoAnualJSON();
        
        return json;
    }
    
    public List<Json> GetJsonCiudadMensual(){
        List<Json> json = jsonMapeador.CiudadMensualJSON();
        
        return json;
    }
    
    public List<Json> GetJsonCiudadTrimestral(){
        List<Json> json = jsonMapeador.CiudadTrimestralJSON();
        
        return json;
    }
    
    public List<Json> GetJsonCiudadAnual(){
        List<Json> json = jsonMapeador.CiudadAnualJSON();
        
        return json;
    }
    
    //Por Ciudad y Producto
    
    public Json GetJsonCPMensual(String ciudad, String pizza){
        Json json = jsonMapeador.CPMensualJSON(ciudad, pizza);
        
        return json;
    }
    
    public Json GetJsonCPTrimestral(String ciudad, String pizza){
        Json json = jsonMapeador.CPTrimestralJSON(ciudad, pizza);
        
        return json;
    }
    
    public Json GetJsonCPAnual(String ciudad, String pizza){
        Json json = jsonMapeador.CPAnualJSON(ciudad, pizza);
        
        return json;
    }
}