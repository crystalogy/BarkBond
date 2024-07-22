<jsp:include page="include/header.jsp" />
<jsp:include page="include/navbar.jsp" />

<link rel="stylesheet" href="${pageContext.request.contextPath}pub/css/adoptStyle.css">


<!------------------------------- ⬇️⬇️⬇️ location / pet type bar ⬇️⬇️⬇️---------------->
<div class="locationBarContainer">
    <div class="locationBar">


        <div class="dropdown-petType hover">
            <a href="#">Pet Type</a>
            <ul>
                <li><a href="#">Dogs</a></li>
                <li><a href="#">Cats</a></li>
                <li><a href="#">Birds</a></li>
                <li><a href="#">Rabbits</a></li>
                <li><a href="#">Small & Furry</a></li>
                <li><a href="#">Horses</a></li>
                <li><a href="#">Scales Fins & Others</a></li>
                <li><a href="#">Barnyard</a></li>
            </ul>
        </div>



        <!--  <label for="locationSearch"></label><input type="text" id="locationSearch" placeholder="Enter City, State, or ZIP" class="your-search-box-class">-->
        <input class="form-control location" type="text" placeholder="Enter City, State, or ZIP" aria-label="default input example">


    </div>
</div>
<!------------------------------- ⬆️⬆️⬆️ location / pet type bar  ⬆️⬆️⬆️---------------->


<!------------------------------- ⬇️⬇️⬇️ Side Bar Code ⬇️⬇️⬇️---------------->
<div class="sideBarContainer">
<div class="sideBar"></div>
</div>
<!------------------------------- ⬆️⬆️⬆️ Side Bar Code ⬆️⬆️⬆️---------------->


<!------------------------------- ⬇️⬇️⬇️ Cards ⬇️⬇️⬇️---------------->
<div id="cardContainer">
    <div id="cardOutline">
        <div id="cards"></div>
    </div>
</div>
<!------------------------------- ⬆️⬆️⬆️ Cards ⬆️⬆️⬆️---------------->
<link rel="stylesheet" href="${pageContext.request.contextPath}pub/css/adoptStyle.css">
<script src="${pageContext.request.contextPath}pub/card.js"></script>
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