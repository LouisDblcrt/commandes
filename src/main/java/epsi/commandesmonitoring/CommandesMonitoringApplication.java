package epsi.commandesmonitoring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableScheduling;

import epsi.commandesmonitoring.model.User;
import epsi.commandesmonitoring.repository.UserRepository;

@SpringBootApplication
@ComponentScan("epsi.commandesmonitoring")
@EnableScheduling
public class CommandesMonitoringApplication implements CommandLineRunner{

	@Autowired
	private UserRepository userRepository;
	public static void main(String[] args) {
		SpringApplication.run(CommandesMonitoringApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		// TODO Auto-generated method stub
		User user = new User();
		user.setUsername("ADMIN");
		user.setPassword("ADMIN");
	}

}
