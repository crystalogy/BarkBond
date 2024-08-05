<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<jsp:include page="../include/header.jsp" />--%>

<%--<!-- a page header -->--%>
<%--<section style="background-color:gray">--%>
<%--    <div class="container">--%>
<%--        <div class="row pt-5 pb-5">--%>
<%--            <h1 class="text-center">Create Account</h1>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>


<%--<section>--%>
<%--    <div class="container">--%>
<%--        <div class="row pt-5 ">--%>
<%--            <div class="col-12">--%>
<%--                <form action="${pageContext.request.contextPath}/account/create-account" method="post">--%>

<%--                    <!-- email input -->--%>
<%--                    <div class="row align-items-center justify-content-center">--%>
<%--                        <div class="col-2">--%>
<%--                            <label for="emailId" class="col-form-label">Email</label>--%>
<%--                        </div>--%>
<%--                        <div class="col-4">--%>
<%--                            <input type="text" id="emailId" name="email" class="form-control <c:if test="${bindingResult.hasFieldErrors('email')}">is-invalid</c:if>" value="${form.email}">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <c:if test="${bindingResult.hasFieldErrors('email')}">--%>
<%--                        <div class="row align-items-center justify-content-center">--%>
<%--                            <div class="offset-2 col-4">--%>
<%--                                <div class="text-danger">--%>
<%--                                    <c:forEach items="${bindingResult.getFieldErrors('email')}" var="error">--%>
<%--                                        ${error.defaultMessage}<br>--%>
<%--                                    </c:forEach>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </c:if>--%>


<%--                    <!-- password input field -->--%>
<%--                    <div class="row align-items-center justify-content-center pt-3">--%>
<%--                        <div class="col-2">--%>
<%--                            <label for="passwordId" class="col-form-label">Password</label>--%>
<%--                        </div>--%>
<%--                        <div class="col-4">--%>
<%--                            <input type="text"--%>
<%--                                   id="passwordId"--%>
<%--                                   name="password"--%>
<%--                                   class="form-control <c:if test="${bindingResult.hasFieldErrors('password')}">is-invalid</c:if>"--%>
<%--                                   value="${form.password}">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <c:if test="${bindingResult.hasFieldErrors('password')}">--%>
<%--                        <div class="row align-items-center justify-content-center">--%>
<%--                            <div class="offset-2 col-4">--%>
<%--                                <div style="color:red">--%>
<%--                                    <c:forEach items="${bindingResult.getFieldErrors('password')}" var="error">--%>
<%--                                        ${error.defaultMessage}<br>--%>
<%--                                    </c:forEach>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </c:if>--%>

<%--                    <div class="row justify-content-center pt-3 ">--%>
<%--                        <div class="col-auto text-center">--%>
<%--                            <button type="submit" class="btn btn-primary">Submit</button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>


<%--<jsp:include page="../include/footer.jsp" />--%>




<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<jsp:include page="../include/header.jsp" />--%>

<%--<!-- External Resources -->--%>
<%--<link href="https://fonts.googleapis.com/css?family=Montserrat:400,800" rel="stylesheet">--%>
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/pub/css/account.css">--%>

<%--<!-- Container for Sign In/Sign Up -->--%>
<%--<div class="container" id="container">--%>
<%--    <div class="form-container sign-up-container">--%>
<%--        <form action="${pageContext.request.contextPath}/account/create-account" method="post">--%>
<%--            <h1>Create Account</h1>--%>
<%--&lt;%&ndash;            <div class="social-container">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <span>or use your email for registration</span>&ndash;%&gt;--%>
<%--            <input type="text" placeholder="First Name" name="firstName" class="<c:if test="${bindingResult.hasFieldErrors('firstName')}">is-invalid</c:if>" value="${form.firstName}" />--%>
<%--            <c:if test="${bindingResult.hasFieldErrors('firstName')}">--%>
<%--                <div class="text-danger">--%>
<%--                    <c:forEach items="${bindingResult.getFieldErrors('firstName')}" var="error">--%>
<%--                        ${error.defaultMessage}<br>--%>
<%--                    </c:forEach>--%>
<%--                </div>--%>
<%--            </c:if>--%>

<%--            <input type="text" placeholder="Last Name" name="lastName" class="<c:if test="${bindingResult.hasFieldErrors('lastName')}">is-invalid</c:if>" value="${form.lastName}" />--%>
<%--            <c:if test="${bindingResult.hasFieldErrors('lastName')}">--%>
<%--                <div class="text-danger">--%>
<%--                    <c:forEach items="${bindingResult.getFieldErrors('lastName')}" var="error">--%>
<%--                        ${error.defaultMessage}<br>--%>
<%--                    </c:forEach>--%>
<%--                </div>--%>
<%--            </c:if>--%>
<%--            <input type="email" placeholder="Email" name="email" class="<c:if test="${bindingResult.hasFieldErrors('email')}">is-invalid</c:if>" value="${form.email}" />--%>
<%--            <c:if test="${bindingResult.hasFieldErrors('email')}">--%>
<%--                <div class="text-danger">--%>
<%--                    <c:forEach items="${bindingResult.getFieldErrors('email')}" var="error">--%>
<%--                        ${error.defaultMessage}<br>--%>
<%--                    </c:forEach>--%>
<%--                </div>--%>
<%--            </c:if>--%>
<%--            <input type="password" placeholder="Password" name="password" class="<c:if test="${bindingResult.hasFieldErrors('password')}">is-invalid</c:if>" value="${form.password}" />--%>
<%--            <c:if test="${bindingResult.hasFieldErrors('password')}">--%>
<%--                <div class="text-danger">--%>
<%--                    <c:forEach items="${bindingResult.getFieldErrors('password')}" var="error">--%>
<%--                        ${error.defaultMessage}<br>--%>
<%--                    </c:forEach>--%>
<%--                </div>--%>
<%--            </c:if>--%>
<%--            <button>Sign Up</button>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--    <div class="form-container sign-in-container">--%>
<%--        <form action="${pageContext.request.contextPath}/account/login" method="post">--%>
<%--            <h1>Sign in</h1>--%>
<%--&lt;%&ndash;            <div class="social-container">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </div>&ndash;%&gt;--%>
<%--            <span>or use your account</span>--%>
<%--            <input type="email" placeholder="Email" name="email" />--%>
<%--            <input type="password" placeholder="Password" name="password" />--%>
<%--            <a href="#">Forgot your password?</a>--%>
<%--            <button>Sign In</button>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--    <div class="overlay-container">--%>
<%--        <div class="overlay">--%>
<%--            <div class="overlay-panel overlay-left">--%>
<%--                <h1>Welcome Back!</h1>--%>
<%--                <p>To keep connected with us please login with your personal info</p>--%>
<%--&lt;%&ndash;                <button class="ghost" id="signIn">Sign In</button>&ndash;%&gt;--%>
<%--                <button type="submit" class="ghost" id="signIn">Sign In</button>--%>
<%--            </div>--%>
<%--            <div class="overlay-panel overlay-right">--%>
<%--                <h1>Hello, Friend!</h1>--%>
<%--                <p>Enter your personal details and start journey with us</p>--%>
<%--&lt;%&ndash;                <button class="ghost" id="signUp">Sign Up</button>&ndash;%&gt;--%>
<%--                <button type="submit" class="ghost" id="signUp">Sign Up</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<jsp:include page="../include/footer.jsp" />--%>

<%--<!-- JavaScript for Form Switching -->--%>
<%--<script>--%>
<%--    const signUpButton = document.getElementById('signUp');--%>
<%--    const signInButton = document.getElementById('signIn');--%>
<%--    const container = document.getElementById('container');--%>

<%--    signUpButton.addEventListener('click', () => {--%>
<%--        container.classList.add("right-panel-active");--%>
<%--    });--%>

<%--    signInButton.addEventListener('click', () => {--%>
<%--        container.classList.remove("right-panel-active");--%>
<%--    });--%>
<%--</script>--%>




<!-- src/main/webapp/WEB-INF/jsp/auth/create-account.jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/header.jsp" />

<!-- External Resources -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,800" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}\css\account.css">

<!-- Container for Sign In/Sign Up -->
<div class="container" id="container">
    <div class="form-container sign-up-container">
<%--        <h1>Create Account</h1>--%>

        <form action="${pageContext.request.contextPath}/account/loginProcessingURL" method="post">

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <h1>Create Account</h1>

<%--            <input type="email" placeholder="Username" name="username" class="<c:if test="${bindingResult.hasFieldErrors('username')}">is-invalid</c:if>" value="${form.userName}" />--%>
<%--            <c:if test="${bindingResult.hasFieldErrors('username')}">--%>
<%--                <div class="text-danger">--%>
<%--                    <c:forEach items="${bindingResult.getFieldErrors('email')}" var="error">--%>
<%--                        ${error.defaultMessage}<br>--%>
<%--                    </c:forEach>--%>
<%--                </div>--%>
<%--            </c:if>--%>

            <input type="text" placeholder="First Name" name="firstName" class="<c:if test="${bindingResult.hasFieldErrors('firstName')}">is-invalid</c:if>" value="${form.firstName}" />
            <c:if test="${bindingResult.hasFieldErrors('firstName')}">
                <div class="text-danger">
                    <c:forEach items="${bindingResult.getFieldErrors('firstName')}" var="error">
                        ${error.defaultMessage}<br>
                    </c:forEach>
                </div>
            </c:if>
            <input type="text" placeholder="Last Name" name="lastName" class="<c:if test="${bindingResult.hasFieldErrors('lastName')}">is-invalid</c:if>" value="${form.lastName}" />
            <c:if test="${bindingResult.hasFieldErrors('lastName')}">
                <div class="text-danger">
                    <c:forEach items="${bindingResult.getFieldErrors('lastName')}" var="error">
                        ${error.defaultMessage}<br>
                    </c:forEach>
                </div>
            </c:if>
            <input type="email" placeholder="Email" name="username" class="<c:if test="${bindingResult.hasFieldErrors('email')}">is-invalid</c:if>" value="${form.email}" />
            <c:if test="${bindingResult.hasFieldErrors('email')}">
                <div class="text-danger">
                    <c:forEach items="${bindingResult.getFieldErrors('email')}" var="error">
                        ${error.defaultMessage}<br>
                    </c:forEach>
                </div>
            </c:if>
            <input type="password" placeholder="Password" name="password" class="<c:if test="${bindingResult.hasFieldErrors('password')}">is-invalid</c:if>" value="${form.password}" />
            <c:if test="${bindingResult.hasFieldErrors('password')}">
                <div class="text-danger">
                    <c:forEach items="${bindingResult.getFieldErrors('password')}" var="error">
                        ${error.defaultMessage}<br>
                    </c:forEach>
                </div>
            </c:if>
            <button type="submit">Sign Up</button>
        </form>
    </div>
    <div class="form-container sign-in-container">
<%--        <h1>Sign in</h1>--%>
        <form action="${pageContext.request.contextPath}/account/loginProcessingURL" method="post">

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <h1>Sign in</h1>
            <input type="email" placeholder="Email" name="username" />
            <input type="password" placeholder="Password" name="password" />
            <a href="#">Forgot your password?</a>
            <button type="submit">Sign In</button>
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Hello, Friend!</h1>
                <p>To keep connected with us please log in with your personal info</p>
                <button class="ghost" id="signIn">Sign In</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Welcome Back!</h1>
                <p>Enter your personal details and start journey with us</p>
                <button class="ghost" id="signUp">Sign Up</button>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../include/footer.jsp" />

<!-- JavaScript for Form Switching -->
<script>
    const signUpButton = document.getElementById('signUp');
    const signInButton = document.getElementById('signIn');
    const container = document.getElementById('container');

    signUpButton.addEventListener('click', () => {
        container.classList.add("right-panel-active");
    });

    signInButton.addEventListener('click', () => {
        container.classList.remove("right-panel-active");
    });

    // Check query parameters to set initial view
    const urlParams = new URLSearchParams(window.location.search);
    const view = urlParams.get('view');
    if (view === 'signin') {
        container.classList.remove("right-panel-active");
    } else if (view === 'signup') {
        container.classList.add("right-panel-active");
    }
</script>
