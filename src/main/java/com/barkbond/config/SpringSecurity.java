package com.barkbond.config;


import org.springframework.context.annotation.*;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.*;
import org.springframework.security.config.annotation.web.builders.*;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.*;
import org.springframework.security.crypto.password.*;
import org.springframework.security.web.*;
import org.springframework.security.web.util.matcher.*;

@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)

@Configuration
public class SpringSecurity {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

        // boilerplate code to protect a common hack
        http.csrf(csrf -> csrf.disable());
//        http.csrf(csrf -> Customizer.withDefaults());

        // this section says allow all pages EXCEPT the ones that are in the AntPathRequestMatcher
        // anything in AntPathRequestMatcher will require the user to be authenticated
        http.authorizeRequests()
                .requestMatchers(
                        new AntPathRequestMatcher("/admin/**"),
                        new AntPathRequestMatcher("/user/**")).authenticated()
                .anyRequest().permitAll();

        // the loginPage parameter is the actual URL of the login page
        // the loginProcessingUrl is the URL that the form will submit to
        http.formLogin(formLogin -> formLogin
                // this a controller method URL for displaying the login page
//                .loginPage("/login/loginPageUrl")
                .loginPage("/account/create-account")
                // this url is part of spring security, and we do not need to implement it in our controller
                // we just need to make the form action submit to this URl

                // this does not exist in any of our controller methods
                // 3 things need to be done on the login.jsp
                // 1) action needs to be set to /account/loginProcessingURL
                // 2) input field for username needs to be named "username"
                // 3) input field for password needs to be named "password"

                  .loginProcessingUrl("/account/loginProcessingURL")
                .successForwardUrl("/account/success"));
                // we build this controller method, however this is just the URL in the browser for the login page
//                .loginProcessingUrl("/account/login"));

        // this is the URL that will log a user out
        http.logout(formLogout -> formLogout
                .invalidateHttpSession(true)
                // this is the URL that will log a user out
                // this is another URL that is included with spring security - we do not a controller method for this
                .logoutUrl("/login/logout")
                // after spring logs the suer out then it will goto this URL
                .logoutSuccessUrl("/"));



        return http.build();
    }

    @Bean
    AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration) throws Exception {
        return authenticationConfiguration.getAuthenticationManager();
    }

    @Bean(name = "passwordEncoder")
    public PasswordEncoder getPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
