package Controladores;

import Entidades.Acceso;
import Entidades.Ciudad;
import Entidades.Json;

import Entidades.Producto;
import Entidades.Usuario;
import Servicios.CiudadServicio;
import Servicios.JsonServicio;

import Servicios.ProductoServicio;
import Servicios.UsuarioServicio;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductoControlador {
    
    @Autowired
    private CiudadServicio ciudadServicio;
    @Autowired
    private ProductoServicio productoServicio;    
    @Autowired
    private UsuarioServicio usuarioServicio;
    @Autowired
    private JsonServicio jsonServicio;  
   
 
    
    //Login
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView Index() {        
        //Preguntar si está logeado        
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }
    
    //CHARTProducto
    @RequestMapping(value = "/chart_producto", method = RequestMethod.GET)
    public ModelAndView ChartProducto(HttpSession sesion){
        String user = (String) sesion.getAttribute("user");
        String rol= usuarioServicio.obtenerRol(user);
         ModelAndView mv;
        if(user!=null && rol.equals("A")){
                    //Preguntar si está logeado
                Usuario usuario = usuarioServicio.obtenerUsuario(user);
                List<Json> jsonMes = jsonServicio.GetJsonMensual();
                List<Json> jsonTri = jsonServicio.GetJsonTrimestral();
                List<Json> jsonAnu = jsonServicio.GetJsonAnual();

                List<String> resultadoMes = new ArrayList();
                List<String> resultadoTri = new ArrayList();
                List<String> resultadoAnu = new ArrayList();


                for (int i = 0; i < jsonMes.size(); i++) {
                    //Mes
                    String resultadoM = jsonMes.get(i).getResultado();
                    resultadoMes.add(resultadoM);
                }

                for (int j = 0; j < jsonTri.size(); j++) {
                    //Trimestre
                    String resultadoT = jsonTri.get(j).getResultado();
                    resultadoTri.add(resultadoT);
                }

                for (int k = 0; k < jsonAnu.size(); k++) {
                    //Anual
                    String resultadoA = jsonAnu.get(k).getResultado();
                    resultadoAnu.add(resultadoA);
                } 

                mv = new ModelAndView("chart_producto");
                mv.addObject("usuario", usuario);
                mv.addObject("resultadoMes", resultadoMes);
                mv.addObject("resultadoTri", resultadoTri);
                mv.addObject("resultadoAnu", resultadoAnu);
        }else{
        
        mv = new ModelAndView("index");
        }

        
        return mv;
    } 
    
    //CHARTCiudad
    @RequestMapping(value = "/chart_ciudad", method = RequestMethod.GET)
    public ModelAndView ChartCiudad(HttpSession sesion){
        String user = (String) sesion.getAttribute("user");
        String rol= usuarioServicio.obtenerRol(user);
         ModelAndView mv;
        if(user!=null && rol.equals("A")){
            
                Usuario usuario = usuarioServicio.obtenerUsuario(user);
                    //Preguntar si está logeado
                List<Json> jsonMes = jsonServicio.GetJsonCiudadMensual();
                List<Json> jsonTri = jsonServicio.GetJsonCiudadTrimestral();
                List<Json> jsonAnu = jsonServicio.GetJsonCiudadAnual();

                List<String> resultadoMes = new ArrayList();
                List<String> resultadoTri = new ArrayList();
                List<String> resultadoAnu = new ArrayList();


                for (int i = 0; i < jsonMes.size(); i++) {
                    //Mes
                    String resultadoM = jsonMes.get(i).getResultado();
                    resultadoMes.add(resultadoM);
                }

                for (int j = 0; j < jsonTri.size(); j++) {
                    //Trimestre
                    String resultadoT = jsonTri.get(j).getResultado();
                    resultadoTri.add(resultadoT);
                }

                for (int k = 0; k < jsonAnu.size(); k++) {
                    //Anual
                    String resultadoA = jsonAnu.get(k).getResultado();
                    resultadoAnu.add(resultadoA);
                } 

                mv = new ModelAndView("chart_ciudad");
                mv.addObject("usuario",usuario);
                mv.addObject("resultadoMes", resultadoMes);
                mv.addObject("resultadoTri", resultadoTri);
                mv.addObject("resultadoAnu", resultadoAnu);
        }else{
        
        mv = new ModelAndView("index");
        }
       
       
        
        return mv;
    }
    
    //CHARTCiudadProducto - GET
    @RequestMapping(value = "/chart_ciudad_producto", method = RequestMethod.GET)
    public ModelAndView ChartProductoCiudadGet(HttpSession sesion){
        String user = (String) sesion.getAttribute("user");
        String rol= usuarioServicio.obtenerRol(user);
         ModelAndView mv;
        if(user!=null && rol.equals("A")){
            Usuario usuario = usuarioServicio.obtenerUsuario(user);
            mv = new ModelAndView("chart_ciudad_producto");
            mv.addObject("usuario", usuario);
        }else{
        
        mv = new ModelAndView("index");
        }

        return mv;
    }
    
    
    //CHARTCiudadProducto - POST
    @RequestMapping(value = "/chart_ciudad_producto", method = RequestMethod.POST)
    public ModelAndView ChartProductoCiudad(
            @RequestParam(value="ciudad") String ciudad,
            @RequestParam(value="pizza") String pizza,
            HttpSession sesion){
        String user = (String) sesion.getAttribute("user");
        String rol= usuarioServicio.obtenerRol(user);
         ModelAndView mv;
        if(user!=null && rol.equals("A")){
                Usuario usuario = usuarioServicio.obtenerUsuario(user);
                Json jsonMes = jsonServicio.GetJsonCPMensual(ciudad, pizza);
                Json jsonTri = jsonServicio.GetJsonCPTrimestral(ciudad, pizza);
                Json jsonAnu = jsonServicio.GetJsonCPAnual(ciudad, pizza);

                String resultadoMes = jsonMes.getResultado();
                System.out.println(resultadoMes);
                String resultadoTri = jsonTri.getResultado();
                System.out.println(resultadoTri);
                String resultadoAnu = jsonAnu.getResultado();
                System.out.println(resultadoAnu);

                mv = new ModelAndView("chart_ciudad_producto");

                mv.addObject("resultadoMes", resultadoMes);
                mv.addObject("resultadoTri", resultadoTri);
                mv.addObject("resultadoAnu", resultadoAnu);
                mv.addObject("usuario", usuario);
        }else{
        
        mv = new ModelAndView("index");
        }
        
        
        
        return mv;
    }
    
    
    //registrar pedido
    /*@RequestMapping(value = "/registrar_pedido", method = RequestMethod.GET)
    public ModelAndView registrarPedido() {        
              
        ModelAndView mv = new ModelAndView("registrar_pedido");
        
        List<Producto> productos = productoServicio.ConsultarGeneral("");
        List<Ciudad> ciudades= ciudadServicio.obtenerCiudad("");
        
        mv.addObject("ciudades",ciudades);
        mv.addObject("productos",productos);
        
        return mv;
    }*/
    
    
    @RequestMapping(value = "/registrar_pedido", method = RequestMethod.GET)
    public ModelAndView NuevaVenta(
            HttpSession session
    ) {
        String user= (String) session.getAttribute("user");
        String rol = usuarioServicio.obtenerRol(user);
        ModelAndView modelAndView;
        System.out.println(user);
        System.out.println(rol);
        if(user!=null && rol.equals("R")){
            modelAndView = new ModelAndView("registrar_pedido");
            Usuario usuario = usuarioServicio.obtenerUsuario(user);
            List<Ciudad> ciudades = ciudadServicio.obtenerCiudad("");
            List<Producto> productos = productoServicio.ConsultarGeneral("");

            modelAndView.addObject("ciudades",ciudades);
            modelAndView.addObject("productos",productos);
            modelAndView.addObject("usuario",usuario);
        }else{
            modelAndView = new ModelAndView("index");
        }
        return modelAndView;
    }
    
    
    
        
}
