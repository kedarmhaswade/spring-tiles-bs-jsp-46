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
        log.debug("controller:index in");
        return "/WEB-INF/jsp/index.jsp"; // returns the location of the view template: our JSP page
    }
    //    a shortcut for: @RequestMapping(value = "/")
    @RequestMapping("/")
    public String home(Model model) {
        log.debug("controller:index in");
        return "default.jsp"; // returns the location of the view template: our JSP page
    }
}

