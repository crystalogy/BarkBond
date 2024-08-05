<%--<jsp:include page="include/header.jsp" />--%>
<%--<jsp:include page="include/navbar.jsp" />--%>

<%--<link rel="stylesheet" href="${pageContext.request.contextPath}\css\adoptStyle.css">--%>


<%--<!------------------------------- ⬇️⬇️⬇️ location / pet type bar ⬇️⬇️⬇️---------------->--%>
<%--<div class="locationBarContainer">--%>
<%--    <div class="locationBar">--%>


<%--        <div class="dropdown-petType hover">--%>
<%--            <a href="#">Pet Type</a>--%>
<%--            <ul>--%>
<%--                <li><a href="#">Dogs</a></li>--%>
<%--                <li><a href="#">Cats</a></li>--%>
<%--                <li><a href="#">Birds</a></li>--%>
<%--                <li><a href="#">Rabbits</a></li>--%>
<%--                <li><a href="#">Small & Furry</a></li>--%>
<%--                <li><a href="#">Horses</a></li>--%>
<%--                <li><a href="#">Scales Fins & Others</a></li>--%>
<%--                <li><a href="#">Barnyard</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>



<%--        <!--  <label for="locationSearch"></label><input type="text" id="locationSearch" placeholder="Enter City, State, or ZIP" class="your-search-box-class">-->--%>
<%--        <input class="form-control location" type="text" placeholder="Enter City, State, or ZIP" aria-label="default input example">--%>


<%--    </div>--%>
<%--</div>--%>
<%--<!------------------------------- ⬆️⬆️⬆️ location / pet type bar  ⬆️⬆️⬆️---------------->--%>


<%--<!------------------------------- ⬇️⬇️⬇️ Side Bar Code ⬇️⬇️⬇️---------------->--%>
<%--<div class="sideBarContainer">--%>
<%--<div class="sideBar"></div>--%>
<%--</div>--%>
<%--<!------------------------------- ⬆️⬆️⬆️ Side Bar Code ⬆️⬆️⬆️---------------->--%>


<%--<!------------------------------- ⬇️⬇️⬇️ Cards ⬇️⬇️⬇️---------------->--%>
<%--<div id="cardContainer">--%>
<%--    <div id="cardOutline">--%>
<%--        <div id="cards"></div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<!------------------------------- ⬆️⬆️⬆️ Cards ⬆️⬆️⬆️---------------->--%>
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}\css\adoptStyle.css">--%>
<%--&lt;%&ndash;<script src="${pageContext.request.contextPath}js/card.js"></script>&ndash;%&gt;--%>
<%--<script src="${pageContext.request.contextPath}js/AnimalCard.js"></script>--%>


<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"--%>
<%--        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"--%>
<%--        crossorigin="anonymous"></script>--%>

<%--<div id="pageNumContainer">--%>
<%--    <div class="pagination" id="adoptPagination">--%>
<%--        <a href="#"><link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">--%>
<%--            <span class="material-icons-round arrows">arrow_back_ios</span></a>--%>
<%--        <a href="#">1</a>--%>
<%--        <a href="#" class="active">2</a>--%>
<%--        <a href="#">3</a>--%>
<%--        <a href="#">4</a>--%>
<%--        <a href="#">5</a>--%>
<%--        <a href="#">6</a>--%>
<%--        <a href="#"><link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">--%>
<%--            <span class="material-icons-round arrows">arrow_forward_ios</span></a>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<script>--%>
<%--    var contextPath = "${pageContext.request.contextPath}";--%>
<%--</script>--%>


<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"--%>
<%--        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"--%>
<%--        crossorigin="anonymous"></script>--%>


<%--<jsp:include page="include/footer.jsp" />--%>


<jsp:include page="include/header.jsp" />
<jsp:include page="include/navbar.jsp" />

<link rel="stylesheet" href="${pageContext.request.contextPath}css/adoptStyle.css">

<%--<div class="locationBarContainer">--%>
<%--    <div class="locationBar">--%>
<%--        <div class="dropdown-petType hover">--%>
<%--            <a href="#">Pet Type</a>--%>
<%--            <ul>--%>
<%--                <li><a href="#">Dogs</a></li>--%>
<%--                <li><a href="#">Cats</a></li>--%>
<%--                <li><a href="#">Birds</a></li>--%>
<%--                <li><a href="#">Rabbits</a></li>--%>
<%--                <li><a href="#">Small & Furry</a></li>--%>
<%--                <li><a href="#">Horses</a></li>--%>
<%--                <li><a href="#">Scales Fins & Others</a></li>--%>
<%--                <li><a href="#">Barnyard</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--        <input class="form-control location" type="text" placeholder="Enter City, State, or ZIP" aria-label="default input example">--%>
<%--    </div>--%>
<%--</div>--%>





<div class="locationBarContainer">
    <div class="locationBar">
        <div class="md-12 mt-12 dropdown-pet-type">
            <select class="form-select border-0">
                <option selected="">Dogs</option>
                <option value="1">Cats</option>
                <option value="2">Birds</option>
                <option value="3">Rabbits</option>
                <option value="3">Small & Furry</option>
                <option value="3">Horses</option>
                <option value="3">Scales Fins & Others</option>
            </select>
        </div>
        <div class="md-12 mt-12 location-search">
        <input type="text" class="form-control border-0" placeholder="Location">
        </div>
<%--        <input class="form-control location" type="text" placeholder="Enter City, State, or ZIP" aria-label="default input example">--%>
    </div>
</div>





<%--<div class="container">--%>
<%--    <div class="row g-12 mt-2 searchbar-contents">--%>
<%--        <div>--%>
<%--            <div class="row g-2">--%>
<%--                <div class="h-100 p-5 bg-body-tertiary border rounded-3">--%>
<%--                    <h3>Make a Difference, Adopt a Friend</h3>--%>
<%--                    <div class="col-md-12 mt-2">--%>
<%--                        <input type="text" class="form-control border-0" placeholder="Location">--%>
<%--                    </div>--%>
<%--                    <div class="col md-3 mt-2">--%>


<%--                        <select class="form-select border-0">--%>
<%--                            <option selected="">Dogs</option>--%>
<%--                            <option value="1">Cats</option>--%>
<%--                            <option value="2">Birds</option>--%>
<%--                            <option value="3">Rabbits</option>--%>
<%--                            <option value="3">Small & Furry</option>--%>
<%--                            <option value="3">Horses</option>--%>
<%--                            <option value="3">Scales Fins & Others</option>--%>
<%--                        </select>--%>

<%--                    </div>--%>











<div class="sideBarContainer">
    <div class="sideBar"></div>
</div>

<div id="cardContainer">
    <div id="cardOutline">
        <div id="cards"></div>
    </div>
</div>

<link rel="stylesheet" href="${pageContext.request.contextPath}css/adoptStyle.css">
<script src="${pageContext.request.contextPath}js/card.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

<div id="pageNumContainer">
    <div class="pagination" id="adoptPagination">
        <a href="#"><link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
            <span class="material-icons-round arrows">arrow_back_ios</span></a>
        <a href="#">1</a>
        <a href="#" class="active">2</a>
        <a href="#">3</a>
        <a href="#">4</a>
        <a href="#">5</a>
        <a href="#">6</a>
        <a href="#"><link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
            <span class="material-icons-round arrows">arrow_forward_ios</span></a>
    </div>
</div>

<script>
    var contextPath = "${pageContext.request.contextPath}";
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

<jsp:include page="include/footer.jsp" />

<!-- Add React, ReactDOM, and Babel -->
<script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script>
<script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script>
<script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>

<!-- Root element for React app -->
<div id="react-root"></div>

<!-- Render React component -->
<script type="text/babel">
    import FetchPets from '/static/js';

    ReactDOM.render(<FetchPets />, document.getElementById('react-root'));
</script>

<%--<script>--%>
<%--    ReactDOM.render(<FetchPets />, document.getElementById('root')); // Make sure to render your React component--%>
<%--</script>--%>