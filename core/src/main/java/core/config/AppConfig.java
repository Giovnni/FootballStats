package core.config;

import com.zaxxer.hikari.HikariConfig;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import java.io.IOException;
import java.util.Properties;

@Configuration
@ComponentScan(basePackages = "core.service")
public class AppConfig {

    public static final String DB_HOST = "localhost:3306";

    public static final String DB_SCHEMA = "footballstats";

    public static final String DB_USER = "root";

    public static final String DB_PASSWORD = "root";

    @Bean
    public Properties dbProperties() throws IOException {
        Properties props = new Properties();
        props.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("db.properties"));
        return props;
    }


    @Bean
    public HikariConfig dbConfiguration(Properties dbProperties) {
        HikariConfig config = new HikariConfig();
        config.setJdbcUrl(dbProperties.getProperty("jdbcUrl"));
        config.setUsername(dbProperties.getProperty("username"));
        config.setPassword(dbProperties.getProperty("password"));
        config.addDataSourceProperty("cachePrepStmts", "true");
        config.addDataSourceProperty("prepStmtCacheSize", "250");
        config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");
        config.setDriverClassName("com.mysql.cj.jdbc.Driver");
        return config;
    }
}
