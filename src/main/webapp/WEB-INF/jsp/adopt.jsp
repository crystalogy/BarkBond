<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="include/header.jsp" />
<jsp:include page="include/navbar.jsp" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/pub/css/adopt.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/pub/css/adoptStyle.css">
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/pub/js/card.js">--%>

<div class="locationBarContainer">



    <div class="locationBar">
        <div class="md-12 mt-12 dropdown-pet-type">
            <select class="form-select border-0">f
                <option selected="">Dogs</option>
                <option value="1">Cats</option>
                <option value="2">Birds</option>
                <option value="3">Rabbits</option>
                <option value="3">Small & Furry</option>
                <option value="3">Horses</option>
                <option value="3">Scales Fins & Others</option>
                <option value="3">Barnyard</option>
            </select>
        </div>
        <div class="md-12 mt-12 location-search">
            <input type="text" class="form-control border-0" placeholder="Location">
        </div>
        <%--        <input class="form-control location" type="text" placeholder="Enter City, State, or ZIP" aria-label="default input example">--%>


        <div class="md-12 mt-12 filters-dropdown">
            <button class="btn btn-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" width="20" height="20">
                    <path d="M27.49 2h-22A1.54 1.54 0 0 0 4 3.53v2a1.53 1.53 0 0 0 .31.93l7.83 10.36a4.32 4.32 0 0 1 .86 2.59v4.92a3.57 3.57 0 0 0 1.36 2.8l3.22 2.5a1.52 1.52 0 0 0 .93.32 1.44 1.44 0 0 0 .67-.16 1.5 1.5 0 0 0 .82-1.37v-9a4.32 4.32 0 0 1 .86-2.6l7.83-10.35a1.53 1.53 0 0 0 .31-.93v-2A1.52 1.52 0 0 0 27.49 2zM27 5.39l-7.73 10.22A6.37 6.37 0 0 0 18 19.43v8l-2.45-1.89a1.57 1.57 0 0 1-.55-1.21v-4.92a6.29 6.29 0 0 0-1.27-3.79L6 5.39V4h21z" style="fill:#231f20"/>
                </svg>
                More
            </button>

            <div class="dropdown-menu p-4" aria-labelledby="dropdownMenuButton">


                <label for="age">Age:</label>
                <select id="age" name="age" class="form-control mb-3">
                    <option value="puppy">All</option>
                    <option value="puppy">Puppy</option>
                    <option value="young">Young</option>
                    <option value="adult">Adult</option>
                    <option value="senior">Senior</option>
                </select>

                <label for="age">Size:</label>
                <select id="age" name="age" class="form-control mb-3">
                    <option value="puppy">All</option>
                    <option value="puppy">Small</option>
                    <option value="puppy">Medium</option>
                    <option value="young">Large</option>
                    <option value="adult">Extra Large</option>
                </select>

                <label for="gender">Gender:</label>
                <select id="gender" name="age" class="form-control mb-3">
                    <option value="puppy">All</option>
                    <option value="puppy">Female</option>
                    <option value="puppy">Male</option>
                </select>


                <div class="form-check mb-2">
                    <input type="checkbox" id="has-3d-tour" name="has-3d-tour" class="form-check-input" checked>
                    <label class="form-check-label" for="has-3d-tour">Special Needs</label>
                </div>

                <button class="btn btn-apply">Apply</button>
                <button class="btn btn-secondary">Reset all filters</button>
            </div>
        </div>

        <%--        <a href="${pageContext.request.contextPath}/account/create-account?view=signin" class="btn btn-outline-secondary btn-sm login-btn" id="login-header">More</a>--%>


    </div>
</div>


<div id="cardContainer">
    <div id="cards">
        <c:forEach items="${animals}" var="animal">
            <div class="card">
                <img class="cardImg" src="${pageContext.request.contextPath}${animal.photoUrl}" alt="animal image"/>
                <div class="card-contents">
                    <h6>${animal.name}</h6>
                    <p>${animal.breed}</p>
                    <p>${animal.gender}</p>
                    <p>${animal.age}</p>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

<!-- Root element for React app -->
<div id="react-root"></div>

<!-- Render React component -->
<script type="text/babel">
    import FetchPets from 'webapp/pub/js';

    ReactDOM.render(<FetchPets />, document.getElementById('react-root'));
</script>

