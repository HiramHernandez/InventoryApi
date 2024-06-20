package com.muebleria.inventarios;

import com.muebleria.inventarios.services.ExternalService;
import com.muebleria.inventarios.services.UsuarioService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import io.github.cdimascio.dotenv.Dotenv;
import org.springframework.retry.annotation.EnableRetry;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@EnableCaching
@EnableRetry
@RestController
public class InventariosApplication {
	private static Logger logger = LoggerFactory.getLogger(InventariosApplication.class);
	@Autowired
	private ExternalService externalService;

	@Autowired
	private UsuarioService usuarioService;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	public static void loadDotEnv(){
		Dotenv dotenv = Dotenv.load();
		logger.info("Un nuevo código!!!!");
		dotenv.entries().forEach(entry -> System.setProperty(entry.getKey(), entry.getValue()));
	}
	public static void main(String[] args) {
		loadDotEnv();
		SpringApplication.run(InventariosApplication.class, args);
		logger.info("Se ha iniciado la aplicación");
	}

}
