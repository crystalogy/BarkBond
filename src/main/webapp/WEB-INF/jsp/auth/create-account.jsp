<!-- src/main/webapp/WEB-INF/jsp/auth/create-account.jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="../include/header.jsp" />

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,800" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}\pub\css\account.css">

<!-- Container for Sign In/Sign Up -->
<div class="container" id="container">
    <div class="form-container sign-up-container">
<%--        <h1>Create Account</h1>--%>

        <form action="${pageContext.request.contextPath}/account/create-account" method="post">

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

            <sec:authorize access="hasAuthority('ADMIN')">
<%--                <div class="col col-2 form-check">--%>
                    <label class="form-check-label" for="role">
                        Admin:
                    </label>
                    <input name="role" class="form-check-input" type="checkbox" value="ADMIN" id="role"
<%--                           <c:if test="${roles.contains('ADMIN')}">checked</c:if> >--%>
<%--                </div>--%>
            </sec:authorize>


            <input type="email" placeholder="Email" name="username" class="<c:if test="${bindingResult.hasFieldErrors('email')}">is-invalid</c:if>" value="${form.username}" />
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
                <h1>Hello!</h1>
                <p>Already have an account?</p>
                <button class="ghost" id="signIn">Sign In</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Welcome Back!</h1>
<%--                <p>Want to sign up? </p>--%>
                <button class="ghost" id="signUp">Sign Up</button>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../include/footer.jsp" />

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


    const urlParams = new URLSearchParams(window.location.search);
    const view = urlParams.get('view');
    if (view === 'signin') {
        container.classList.remove("right-panel-active");
    } else if (view === 'signup') {
        container.classList.add("right-panel-active");
    }
</script>
