This is coming from the home method that handles the request to "/" i.e. the root context.
Also, note that web.xml has:
<pre>
&lt;servlet-mapping>
    &lt;servlet-name>dispatcher&lt;/servlet-name>
    &lt;url-pattern>/&lt;/url-pattern>
&lt;/servlet-mapping>
</pre>

Thus, the IndexController handles both '/' and '/index' requests.
And since the dispatcher servlet is registered at '/' via url-mapping, dispatcher receives it
and then it lets IndexController handle them.

<p> / are forwarded to me, the default.jsp</p>

<p> /index are forwarded to /WEB-INF/jsp/index.jsp </p>
Note the structure of the web-app as well.
<p> if you request /default.jsp, then of course, this jsp is returned.</p>

<p>
    <b>And we have also removed the welcome-file-list from web.xml</b>

</p>

<h2> What is new in this app?</h2>

<h3> Part 1 Using Tiles: Video 4</h3>
<b>Note: Everything is now routed through tiles.</b>
<p>
    Basically, we are starting to use apache tiles to manage multiple pages. Apache tiles is used
    as a taglib on any JSP page and it can be used as a layout manager of sorts.
<ol>
    <li> Spring has tiles <a
            href="http://docs.spring.io/spring/docs/current/spring-framework-reference/htmlsingle/#view-tiles-integrate">support</a>.
    </li>
    <li> You add a specific Spring bean named TilesConfigurer to the servlet context.
        The bean then looks up the "Tiles Definitions" and loads them up.
    </li>
    <pre>
        &lt;bean id=&quot;tilesConfigurer&quot; class=&quot;org.springframework.web.servlet.view.tiles3.TilesConfigurer&quot;&gt;
            &lt;property name=&quot;definitions&quot;&gt;
                &lt;list&gt;
                    &lt;value&gt;/WEB-INF/defs/general.xml&lt;/value&gt;
                    &lt;value&gt;/WEB-INF/defs/widgets.xml&lt;/value&gt;
                    &lt;value&gt;/WEB-INF/defs/administrator.xml&lt;/value&gt;
                    &lt;value&gt;/WEB-INF/defs/customer.xml&lt;/value&gt;
                    &lt;value&gt;/WEB-INF/defs/templates.xml&lt;/value&gt;
                &lt;/list&gt;
            &lt;/property&gt;
        &lt;/bean&gt;
        </pre>
    <li> The tiles definitions are xml files!</li>
    <li> For our purpose, to begin with we use only the general.xml from the list above.</li>
    <li>
        We need the view resolver bean as well:
        <pre>
            &lt;bean id=&quot;viewResolver&quot;
                       class=&quot;org.springframework.web.servlet.view.UrlBasedViewResolver&quot;&gt;
                &lt;property name=&quot;viewClass&quot; value=&quot;org.springframework.web.servlet.view.tiles3.TilesView&quot;/&gt;
            &lt;/bean&gt;
        </pre>
    </li>
    <li>We modify general.xml to use the Tiles inheritance (common/index) etc.</li>
    <li>Add pom.xml dependencies to apache tiles core and tiles jsp</li>
</ol>
</p>

<h3> Part 2 Using TwBS: Video 5</h3>
