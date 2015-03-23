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
