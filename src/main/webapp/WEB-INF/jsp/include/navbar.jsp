<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>

<%--<header class="header">--%>
<%--    <div class="headerContainer">--%>
<%--        <!--        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">-->--%>
<%--        <a href="/"--%>
<%--           class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none justify-content-start">--%>
<%--            <div class="logoContainer">--%>
<%--                <img width="210" class="logo" src="${pageContext.request.contextPath}images/logo.png" alt="logo">--%>
<%--            </div>--%>
<%--            <!--                <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>-->--%>
<%--        </a>--%>

<%--        <div class="mainNavContainer">--%>
<%--            <nav class="mainnav">--%>
<%--                <ul class="menuItems">--%>
<%--                    <li><a href="${pageContext.request.contextPath}/">Home</a></li>--%>
<%--                    <li><a href="${pageContext.request.contextPath}/about">About</a></li>--%>
<%--                    <li><a href="${pageContext.request.contextPath}/adopt">Adopt</a></li>--%>
<%--                    <li><a href="${pageContext.request.contextPath}/resources">Resources</a></li>--%>
<%--                    <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>--%>
<%--                    <li><a href="${pageContext.request.contextPath}/help">Ways to give</a></li>--%>






<%--&lt;%&ndash;                    <li class="dropdown d-none d-xl-inline-flex user-dropdown">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <img class="rounded-circle ms-2 sm-user-image" src="${pageContext.request.contextPath}images/no-profile-picture.jpg" alt="Profile image">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <span class="font-weight-normal"> First Lastname </span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <a class="dropdown-item"><i class="dropdown-item-icon icon-user text-primary"></i> My Profile <span class="badge badge-pill badge-danger">1</span></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <a class="dropdown-item"><i class="dropdown-item-icon icon-speech text-primary"></i> Messages</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <a class="dropdown-item"><i class="dropdown-item-icon icon-energy text-primary"></i> Activity</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <a class="dropdown-item"><i class="dropdown-item-icon icon-question text-primary"></i> FAQ</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <a class="dropdown-item"><i class="dropdown-item-icon icon-power text-primary"></i>Sign Out</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </li>&ndash;%&gt;--%>

<%--          <sec:authorize access="isAuthenticated()">--%>
<%--                    <li class="nav-item dropdown d-none d-xl-inline-flex user-dropdown">--%>
<%--                        <div class="d-flex align-items-center">--%>
<%--                        <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                            <img class="rounded-circle ms-2 sm-user-image" src="${pageContext.request.contextPath}images/no-profile-picture.jpg" alt="Profile image">--%>
<%--&lt;%&ndash;                            <span class="font-weight-normal users-name"> ${user.firstname} </span>&ndash;%&gt;--%>
<%--<span class="font-weight-normal users-name"><sec:authentication property="name" /></span>--%>
<%--                        </a>--%>
<%--                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">--%>
<%--                            <a class="dropdown-item"><i class="dropdown-item-icon icon-user text-primary"></i> My Profile</a>--%>
<%--                            <sec:authorize access="hasAuthority('ADMIN')">--%>
<%--&lt;%&ndash;                            <a class="dropdown-item"><i class="dropdown-item-icon icon-speech text-primary"></i>Dashboard</a>&ndash;%&gt;--%>
<%--                                <a class="dropdown-item" href="${pageContext.request.contextPath}/dashboard">--%>
<%--                                    <i class="dropdown-item-icon icon-speech text-primary"></i>Dashboard--%>
<%--                                </a>--%>
<%--                            </sec:authorize>--%>
<%--                            <a class="dropdown-item"><i class="dropdown-item-icon icon-energy text-primary"></i> Activity</a>--%>

<%--&lt;%&ndash;                            <a class="dropdown-item"><i class="dropdown-item-icon icon-power text-primary"></i>Sign Out</a>&ndash;%&gt;--%>


<%--                        <sec:authorize access="isAuthenticated()">--%>
<%--    <a class="dropdown-item" style="display: flex; align-items: center;">--%>
<%--        <i class="dropdown-item-icon icon-power text-primary"></i>--%>
<%--        <form action="/login/logout" method="post" style="display: inline; margin: 0;">--%>
<%--            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
<%--            <button class="nav-link" type="submit" style="background: none; border: none; padding: 0; color: inherit; cursor: pointer; display: inline; margin: 0; text-transform: uppercase;">Sign Out</button>--%>
<%--        </form>--%>
<%--    </a>--%>
<%--    <a class="dropdown-item" style="display: flex; align-items: center;">--%>
<%--        <i class="dropdown-item-icon icon-user text-primary"></i>--%>
<%--        <span class="nav-link" style="background: none; border: none; padding: 0; color: inherit; cursor: pointer; display: inline; margin: 0;">--%>
<%--&lt;%&ndash;            <sec:authentication property="name"/>&ndash;%&gt;--%>
<%--        </span>--%>
<%--    </a>--%>
<%--</sec:authorize>--%>



<%--&lt;%&ndash;                            <sec:authorize access="isAuthenticated()">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a class="dropdown-item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <form action="/login/logout" method="post">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <button class="nav-link" type="submit">Log Out</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </form>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <button class="nav-link"><sec:authentication property="name"/></button>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </sec:authorize>&ndash;%&gt;--%>



<%--                        </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--           </sec:authorize>--%>

<%--            </nav>--%>
<%--        </div>--%>


<%--        <div class="loginsign-btn-div">--%>
<%--            <a href="${pageContext.request.contextPath}/account/create-account?view=signin" class="btn btn-outline-secondary btn-sm login-btn" id="login-header">Login</a>--%>
<%--            <a href="${pageContext.request.contextPath}/account/create-account?view=signup" class="btn btn-sm text-white signup-btn" id="signup-header">Sign-up</a>--%>
<%--        </div>--%>

<%--&lt;%&ndash;        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>&ndash;%&gt;--%>

<%--        <link rel="stylesheet" href="${pageContext.request.contextPath}css/global.css">--%>
<%--        <script src="${pageContext.request.contextPath}resources/static/js/user-dropdown.js"></script>--%>
<%--</header>--%>



<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<header class="header">
    <div class="headerContainer">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none justify-content-start">
            <div class="logoContainer">
                <img width="210" class="logo" src="${pageContext.request.contextPath}/pub/images/logo.png" alt="logo">
            </div>
        </a>

        <div class="mainNavContainer">
            <nav class="mainnav">
                <ul class="menuItems">
                    <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/about">About</a></li>
                    <li><a href="${pageContext.request.contextPath}/adopt/animals">Adopt</a></li>
                    <li><a href="${pageContext.request.contextPath}/resources">Resources</a></li>
                    <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
                    <li><a href="${pageContext.request.contextPath}/help">Ways to give</a></li>
                </ul>
            </nav>
        </div>

        <div class="loginsign-btn-div">
            <sec:authorize access="!isAuthenticated()">
                <a href="${pageContext.request.contextPath}/account/create-account?view=signin" class="btn btn-outline-secondary btn-sm login-btn" id="login-header">Login</a>
                <a href="${pageContext.request.contextPath}/account/create-account?view=signup" class="btn btn-sm text-white signup-btn" id="signup-header">Sign-up</a>
            </sec:authorize>

            <sec:authorize access="isAuthenticated()">
                <li class="nav-item dropdown d-none d-xl-inline-flex user-dropdown">
                    <div class="d-flex align-items-center">
                        <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                            <img class="rounded-circle ms-2 sm-user-image" src="${pageContext.request.contextPath}/pub/images/no-profile-picture.jpg" alt="Profile image">
                            <span class="font-weight-normal users-name"><sec:authentication property="name" /></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                            <a class="dropdown-item"><i class="dropdown-item-icon icon-user text-primary"></i> My Profile</a>
                            <sec:authorize access="hasAuthority('ADMIN')">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/dashboard">
                                    <i class="dropdown-item-icon icon-speech text-primary"></i>Dashboard
                                </a>
                            </sec:authorize>
                            <a class="dropdown-item"><i class="dropdown-item-icon icon-energy text-primary"></i> Activity</a>
                            <a class="dropdown-item" style="display: flex; align-items: center;">
                                <i class="dropdown-item-icon icon-power text-primary"></i>
                                <form action="/login/logout" method="post" style="display: inline; margin: 0;">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                    <button class="nav-link" type="submit" style="background: none; border: none; padding: 0; color: inherit; cursor: pointer; display: inline; margin: 0; text-transform: uppercase;">Sign Out</button>
                                </form>
                            </a>
                        </div>
                    </div>
                </li>
            </sec:authorize>
        </div>
    </div>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/pub/css/global.css">
    <script src="${pageContext.request.contextPath}/pub/js/user-dropdown.js"></script>
</header>