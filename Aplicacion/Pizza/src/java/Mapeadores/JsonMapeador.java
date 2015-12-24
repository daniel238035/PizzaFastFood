package Mapeadores;

import Entidades.Json;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface JsonMapeador {
    public List<Json> ProductoMensualJSON();
    public List<Json> ProductoTrimestralJSON();
    public List<Json> ProductoAnualJSON();
    public List<Json> CiudadMensualJSON();
    public List<Json> CiudadTrimestralJSON();
    public List<Json> CiudadAnualJSON();
    
    public Json CPMensualJSON(@Param("ciudad") String ciudad, @Param("pizza") String pizza);
    public Json CPTrimestralJSON(@Param("ciudad") String ciudad, @Param("pizza") String pizza);
    public Json CPAnualJSON(@Param("ciudad") String ciudad, @Param("pizza") String pizza);
}
