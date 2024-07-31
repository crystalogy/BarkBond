<header class="header">
    <div class="headerContainer">
        <!--        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">-->
        <a href="/"
           class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none justify-content-start">
            <div class="logoContainer">
                <img width="210" class="logo" src="${pageContext.request.contextPath}/logo.png" alt="logo">
            </div>
            <!--                <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>-->
        </a>

        <div class="mainNavContainer">
            <nav class="mainnav">
                <ul class="menuItems">
                    <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/about">About</a></li>
                    <li><a href="${pageContext.request.contextPath}/adopt">Adopt</a></li>
                    <li><a href="${pageContext.request.contextPath}/resources">Resources</a></li>
                    <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
                    <li><a href="${pageContext.request.contextPath}/help">Ways to give</a></li>


                </ul>
            </nav>
        </div>

        <!--------------------------------------------- Search Bar ---------------------------------------------->
        <!--            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">-->
        <!--                <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..." aria-label="Search">-->
        <!--            </form>-->
        <!--------------------------------------- Modal Login/ Signup Buttons------------------------------------>
        <!-- Button trigger modal -->
<%--        <div class="loginsign-btn-div">--%>
<%--            <button type="button" class="btn btn-outline-secondary btn-sm login-btn" data-bs-toggle="modal"--%>
<%--                    data-bs-target="#loginModal" id="login-header">Login--%>
<%--            </button>--%>
<%--            <button type="button" class="btn btn-sm text-white signup-btn" data-bs-toggle="modal"--%>
<%--                    data-bs-target="#signupModal" id="signup-header">Sign-up--%>
<%--            </button>--%>
<%--        </div>--%>

        <div class="loginsign-btn-div">
            <a href="${pageContext.request.contextPath}/account/create-account?view=signin" class="btn btn-outline-secondary btn-sm login-btn" id="login-header">Login</a>
            <a href="${pageContext.request.contextPath}/account/create-account?view=signup" class="btn btn-sm text-white signup-btn" id="signup-header">Sign-up</a>
        </div>

        <!------------------------------------------Login Modal------------------------------------------------->
<%--        <div class="modal fade" id="loginModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"--%>
<%--             aria-labelledby="loginModalLabel" aria-hidden="true">--%>
<%--            <div class="modal-dialog">--%>
<%--                <div class="modal-content">--%>
<%--                    <div class="modal-header">--%>
<%--                        <h1 class="modal-title fs-5 text-black" id="loginModalLabel">Login</h1>--%>
<%--                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--                    </div>--%>
<%--                    <div class="modal-body">--%>
<%--                        <!------------------------------------------Body content------------------------------------------------->--%>

<%--                        <!------------------------------------------------------------------------------------------------------>--%>

<%--                    </div>--%>
<%--                    <div class="modal-footer">--%>
<%--                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Login</button>--%>
<%--                        <!--                            <button type="button" class="btn btn-primary">Understood</button>-->--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!------------------------------------------Signup Modal------------------------------------------------->--%>
<%--        <div class="modal fade" id="signupModal" data-bs-backdrop="static" data-bs-keyboard="false"--%>
<%--             tabindex="-1" aria-labelledby="signupModal" aria-hidden="true">--%>
<%--            <div class="modal-dialog">--%>

<%--                <div class="modal-content">--%>
<%--                    <div class="modal-header">--%>
<%--                        <h1 class="modal-title fs-5 signup-header text-black" id="staticBackdropLabel">Sign--%>
<%--                            up</h1>--%>
<%--                        <button type="button" class="btn-close" data-bs-dismiss="modal"--%>
<%--                                aria-label="Close"></button>--%>
<%--                    </div>--%>
<%--                    <div class="modal-body">--%>
<%--                        <!------------------------------------------Body content------------------------------------------------->--%>
<%--                        <!---------------------------------------First/Last Name----------------------------------------------->--%>

<%--                        <div class="row">--%>
<%--                            <div class="col">--%>
<%--                                <input type="text" class="form-control" placeholder="First name" aria-label="First name">--%>
<%--                            </div>--%>
<%--                            <div class="col">--%>
<%--                                <input type="text" class="form-control" placeholder="Last name" aria-label="Last name">--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!---------------------------------------------------------------------------------------------------------->--%>

<%--                        <!---------------------------------------------------------------------------------------------------------->--%>


<%--                    </div>--%>
<%--                    <div class="modal-footer">--%>
<%--                        <!--                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close-->--%>
<%--                        <!--                                    </button>-->--%>
<%--                        <button type="button" class="btn btn-primary">Sign up</button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
    <!-------------------------------  End of login sign up buttons---------------->
    <!-------------------------------  End of login sign up buttons---------------->


</header>