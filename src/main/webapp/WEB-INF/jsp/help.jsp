<jsp:include page="include/header.jsp" />
<jsp:include page="include/navbar.jsp" />


<link rel="stylesheet" href="${pageContext.request.contextPath}pub\css\help.css">


<div class="cards-container">
    <h1>Ways to Give</h1>
    <div class="cards">
        <div class="card">
            <div class="card-image">
                <img src="${pageContext.request.contextPath}pub/images/donate.png" alt="Donate">
            </div>
            <div class="card-content">
                <h2>Donate</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec venenatis odio.</p>
                <a href="${pageContext.request.contextPath}pub/images/post1.png" class="button">Read More</a>
            </div>
        </div>
        <div class="card">
            <div class="card-image">
                <img class="give-img" src="${pageContext.request.contextPath}pub/images/volunteer.png" alt="Volunteer">
            </div>
            <div class="card-content">
                <h2>Volunteer</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec venenatis odio.</p>
                <a href="${pageContext.request.contextPath}pub/images/post2.png" class="button">Read More</a>
            </div>
        </div>
        <div class="card">
            <div class="card-image">
                <img src="${pageContext.request.contextPath}pub/images/a1.png" alt="Foster">
            </div>
            <div class="card-content">
                <h2>Foster</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec venenatis odio.</p>
                <a href="${pageContext.request.contextPath}pub/images/post3.png" class="button">Read More</a>
            </div>
        </div>
        <div class="card adopt">
            <div class="card-image">
                <img src="${pageContext.request.contextPath}pub/images/adopt.png" alt="Adopt">
            </div>
            <div class="card-content">
                <h2>Adopt</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec venenatis odio.</p>
                <a href="${pageContext.request.contextPath}pub/blog/post4.png" class="button">Read More</a>
            </div>
        </div>
    </div>
</div>




<%--<div class="ways-to-give">--%>
<%--    <h1>Ways to Give</h1>--%>
<%--    <div class="giving-options">--%>
<%--        <div class="option">--%>
<%--            <img src="${pageContext.request.contextPath}images/donate.png" alt="Donate">--%>
<%--            <h2>Donate</h2>--%>
<%--            <p>Your generous donations help us provide food, shelter, and medical care to animals in need. Every contribution makes a difference.</p>--%>
<%--            <a href="${pageContext.request.contextPath}donate.jsp" class="button">Donate Now</a>--%>
<%--        </div>--%>
<%--        <div class="option">--%>
<%--            <img src="${pageContext.request.contextPath}images/volunteer.png" alt="Volunteer">--%>
<%--            <h2>Volunteer</h2>--%>
<%--            <p>Give your time and talents by volunteering with us. Whether you can help with animal care, fundraising, or events, we have a role for you.</p>--%>
<%--            <a href="${pageContext.request.contextPath}volunteer.jsp" class="button">Learn More</a>--%>
<%--        </div>--%>
<%--        <div class="option">--%>
<%--            <img src="${pageContext.request.contextPath}images/foster.png" alt="Foster">--%>
<%--            <h2>Foster</h2>--%>
<%--            <p>Open your home and heart to a pet in need. Fostering provides temporary care until a forever home is found.</p>--%>
<%--            <a href="${pageContext.request.contextPath}foster.jsp" class="button">Become a Foster</a>--%>
<%--        </div>--%>
<%--        <div class="option">--%>
<%--            <img src="${pageContext.request.contextPath}images/adopt.png" alt="Adopt">--%>
<%--            <h2>Adopt</h2>--%>
<%--            <p>Adopt a pet and give them a loving home. Browse our adoptable pets and find your new best friend today.</p>--%>
<%--            <a href="${pageContext.request.contextPath}adopt.jsp" class="button">Find a Pet</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

<jsp:include page="include/footer.jsp" />