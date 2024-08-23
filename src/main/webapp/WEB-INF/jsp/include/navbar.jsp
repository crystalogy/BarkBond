<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<header class="header">
    <div class="headerContainer">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none justify-content-start">
            <div class="logoContainer">
                <img width="210" class="logo" src="${pageContext.request.contextPath}pub/images/logo.png" alt="logo">
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
                            <img class="rounded-circle ms-2 sm-user-image" src="${pageContext.request.contextPath}pub/images/no-profile-picture.jpg" alt="Profile image">
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
                                <form action="login/logout" method="post" style="display: inline; margin: 0;">
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

    <link rel="stylesheet" href="${pageContext.request.contextPath}pub/css/global.css">
    <script src="${pageContext.request.contextPath}pub/js/user-dropdown.js"></script>
</header>