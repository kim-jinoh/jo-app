package com.jokim.application.front;

import org.junit.jupiter.api.Test;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

public class IndexControllerTest {

    @Test
    public void index() {
        standaloneSetup(new IndexController())
        .defaultRequest(get("/"))
        .alwaysExpect(status().isOk())
        .alwaysExpect(view().name("index"))
        .build();
    }
}
