package org.kedar.springtut13.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class IndexController {

    public static final Log log = LogFactory.getLog(IndexController.class);

    //    a shortcut for: @RequestMapping(value = "/index")
    @RequestMapping("/index")
    public String index(Model model) {
        log.debug("controller:index in for /index");
        return "index"; // Now we are using tiles, this name matches the tiles definition in /WEB-INF/defs/general.xml
        //the actual location of index.jsp is found from tiles definition
    }
    //    a shortcut for: @RequestMapping(value = "/")
    @RequestMapping("/")
    public String home(Model model) {
        log.debug("controller:index in for /");
        return "default"; // refer to the tiles definition with name "default"
    }
}

