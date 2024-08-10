
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}pub/css/index.css">--%>


<jsp:include page="include/header.jsp"/>
<jsp:include page="include/navbar.jsp"/>
<%--<h1 class="page-title">This is my first JSP page</h1>--%>
<%--<h2>${message}</h2>--%>

<link rel="stylesheet" href="${pageContext.request.contextPath}pub\css\index.css">
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}pub/css/global.css">--%>

<div class="page-container">
    <div class="index-hero">

        <div class="phrase-container">
            <div class="box">


                <div class="title">
                    <span class="block"></span>
                    <h1 id="hero-phrase">Filling homes with happiness, one bond at a time<span></span></h1>
                </div>

                <%--            <div class="role">--%>
                <%--                <div class="block"></div>--%>
                <%--                <p>one bond at a time</p>--%>
                <%--            </div>--%>

            </div>
        </div>


        <%--    <div id="phrase-container">--%>
        <%--    <h1 id="hero-phrase">Filling homes with happiness, one bond at a time.</h1>--%>
        <%--    </div>--%>

        <div class="hero-container">
            <div class="index-img-container">
                <ul class="index-hero-ul">
                    <%--        <!-- https://www.petfinder.com/dog/violet-22221612/mo/kansas-city/kc-pet-project-mo579/ -->--%>
                    <li><div class="image-container"><img class="hero-img-size-1" src="${pageContext.request.contextPath}pub/images/hero1.png" alt="featured pet #1"><div class="feature-pet-name">Violet</div></div></li>
                    <%--        <!-- https://www.petfinder.com/cat/nala-50058498/nc/apex/connies-kittens-nc1016/ -->--%>
                    <li><div class="image-container"><img class="hero-img-size-2" src="${pageContext.request.contextPath}pub/images/hero2.png" alt="featured pet #1"><div class="feature-pet-name">Nala</div></div></li>
                    <%--        <!-- https://www.petfinder.com/dog/jem-16864734/tn/dresden/red-fern-animal-shelter-tn466/ -->--%>
                    <li><div class="image-container"><img  class="hero-img-size-2" src="${pageContext.request.contextPath}pub/images/hero3.png" alt="featured pet #1"><div class="feature-pet-name">Jem</div></div></li>
                    <%--        <!-- https://www.petfinder.com/cat/winky-48859782/nc/salisbury/faithful-friends-animal-sanctuary-nc519/ -->--%>
                    <li><div class="image-container"><img  class="hero-img-size-2" src="${pageContext.request.contextPath}pub/images/hero4.png" alt="featured pet #1"><div class="feature-pet-name">Winky</div></div></li>
                    <%--        <!-- petfinder.com/dog/leo-58583706/ca/burlingame/peninsula-humane-society-and-spca-ca39/ -->--%>
                    <li><div class="image-container"><img class="hero-img-size-3" src="${pageContext.request.contextPath}pub/images/hero5.png" alt="featured pet #1"><div class="feature-pet-name">Leo</div></div></li>
                    <%--        <!-- https://www.petfinder.com/dog/dani-36788342/ny/albany/help-orphan-puppies-ny604/ -->--%>
                    <li><div class="image-container"><img class="hero-img-size-4" src="${pageContext.request.contextPath}pub/images/hero6.png" alt="featured pet #1"><div class="feature-pet-name">Dani</div></div></li>
                    <%--        <!-- https://spcawake.org/adopt/pet-details/?aid=103540&cid=24&tid=Dog -->--%>
                    <%--            https://www.petfinder.com/dog/luka-69987095/nc/raleigh/spca-of-wake-county-nc590/--%>
                    <li><div class="image-container"><img class="hero-img-size-5" src="${pageContext.request.contextPath}pub/images/hero7.png" alt="featured pet #1"><div class="feature-pet-name">Luka</div></div></li>
                    <%--        <!-- https://www.petfinder.com/cat/buddy-has-a-maine-coon-personality-50640969/ca/newport-beach/animal-network-of-orange-county-ca956/ -->--%>
                    <li><div class="image-container"><img class="hero-img-size-6" src="${pageContext.request.contextPath}pub/images/hero8.png" alt="featured pet #1"><div class="feature-pet-name">Buddy</div></div></li>
                    <%--        <!-- https://www.petfinder.com/dog/luna-72475699/nc/lexington/friends-in-need-animal-rescue-inc-nc648/ -->--%>
                    <li><div class="image-container"><img class="hero-img-size-7" src="${pageContext.request.contextPath}pub/images/hero9.png" alt="featured pet #1"><div class="feature-pet-name">Luna</div></div></li>
                    <%--        <!-- https://www.petfinder.com/cat/winky-48859782/nc/salisbury/faithful-friends-animal-sanctuary-nc519/ -->--%>
                    <li><div class="image-container"><img class="hero-img-size-2" src="${pageContext.request.contextPath}pub/images/hero4.png" alt="featured pet #1"><div class="feature-pet-name">Winky</div></div></li>
                    <%--        <!-- https://www.petfinder.com/cat/winky-48859782/nc/salisbury/faithful-friends-animal-sanctuary-nc519/ -->--%>
                    <li><div class="image-container"><img class="hero-img-size-2" src="${pageContext.request.contextPath}pub/images/hero4.png" alt="featured pet #1"><div class="feature-pet-name">Winky</div></div></li>
                    <%--        <!-- https://www.petfinder.com/cat/winky-48859782/nc/salisbury/faithful-friends-animal-sanctuary-nc519/ -->--%>
                    <li><div class="image-container"><img class="hero-img-size-2" src="${pageContext.request.contextPath}pub/images/hero4.png" alt="featured pet #1"><div class="feature-pet-name">Winky</div></div></li>

                </ul>
            </div>
        </div>
    </div>
</div>


<%--<div class="searchbar">--%>
<%--    <div class="dropdown">--%>
<%--        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--            Dropdown button--%>
<%--        </button>--%>
<%--        <ul class="dropdown-menu">--%>
<%--            <li><a class="dropdown-item" href="#">Dogs</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Cats</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Birds</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Rabbits</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Small & Furry</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Horses</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Scales Fins & Others</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Barnyard</a></li>--%>
<%--        </ul>--%>
<%--    </div>--%>

<%--</div>--%>


<%--<div class="container-fluid mb-5 wow fadeIn index-search-bar" data-wow-delay="0.1s" style="padding: 35px; visibility: visible; animation-delay: 0.1s; animation-name: fadeIn;">--%>
<%--    <div class="container">--%>
<%--        <div class="row g-2 searchbar-contents">--%>
<%--            <div class="col-md-12">--%>
<%--                <div class="row g-2 centered-content">--%>
<%--                    <div class="col-md-4">--%>
<%--                        <input type="text" class="form-control border-0" placeholder="Location">--%>
<%--                    </div>--%>
<%--                    <div class="col search-btn-col">--%>
<%--                        <select class="form-select border-0">--%>
<%--                            <option selected="">Dogs</option>--%>
<%--                            <option value="1">Cats</option>--%>
<%--                            <option value="2">Birds</option>--%>
<%--                            <option value="3">Rabbits</option>--%>
<%--                            <option value="3">Small & Furry</option>--%>
<%--                            <option value="3">Horses</option>--%>
<%--                            <option value="3">Scales Fins & Others</option>--%>
<%--                        </select>--%>

<%--            </div>--%>
<%--            <div class="col-md-1">--%>
<%--                <button class="btn border-0 w-100 search-btn">Search</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div class="search-container">--%>
<%--<div class="row  row search-row">    &lt;%&ndash; align-items-md-stretch&ndash;%&gt;--%>
<%--    <div class="col">--%>
<%--&lt;%&ndash;        <div class="h-100 p-5 rounded-3">&ndash;%&gt;--%>
<%--<div class="img-container">--%>
<%--            <img  class="dogcat-img" src="${pageContext.request.contextPath}dogcat.png" alt="dog cat">--%>
<%--</div>--%>
<%--&lt;%&ndash;            <h2>Change the background</h2>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <p>Swap the background-color utility and add a `.text-*` color utility to mix up the jumbotron look. Then, mix and match with additional component themes and more.</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <button class="btn btn-outline-light" type="button">Example button</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--    </div>--%>
<%--    <div class="col-md-6 search-box">--%>
<%--        <div class="img-">--%>

<%--            <h3>Make a Difference, Adopt a Friend</h3>--%>

<%--            <div class="container">--%>
<%--                        <div class="row g-12 mt-2 searchbar-contents">--%>
<%--                            <div class="col-md-12">--%>
<%--                                <div class="row g-2">--%>
<%--                                    <div class="col-md-12">--%>
<%--                                        <input type="text" class="form-control border-0" placeholder="Location">--%>
<%--                                    </div>--%>
<%--                                    <div class="col md-3">--%>
<%--                                        <select class="form-select border-0">--%>
<%--                                            <option selected="">Dogs</option>--%>
<%--                                            <option value="1">Cats</option>--%>
<%--                                            <option value="2">Birds</option>--%>
<%--                                            <option value="3">Rabbits</option>--%>
<%--                                            <option value="3">Small & Furry</option>--%>
<%--                                            <option value="3">Horses</option>--%>
<%--                                            <option value="3">Scales Fins & Others</option>--%>
<%--                                        </select>--%>

<%--                            </div>--%>
<%--&lt;%&ndash;                            <div class="col-md-1">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <button class="btn border-0 w-100 search-btn">Search</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
<%--                        </div>--%>


<%--&lt;%&ndash;            <p>Make a Difference, Adopt a Friend</p>&ndash;%&gt;--%>
<%--             <div class="center-button">--%>
<%--            <button class="btn mt-2 search-btn" type="button">Search</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</div>--%>





<div class="search-container">


    <%--    <div class="row align-items-md-stretch">--%>
    <%--        <div class="col-md-6">--%>
    <%--            <div class="h-100 p-5 text-bg-dark rounded-3">--%>
    <%--                <h2>Change the background</h2>--%>
    <%--                <p>Swap the background-color utility and add a `.text-*` color utility to mix up the jumbotron look. Then, mix and match with additional component themes and more.</p>--%>
    <%--                <button class="btn btn-outline-light" type="button">Example button</button>--%>
    <%--            </div>--%>
    <%--        </div>--%>

    <%--        <div class="col-md-6">--%>
    <%--            <div class="h-100 p-5 bg-body-tertiary border rounded-3">--%>
    <%--                <h2>Add borders</h2>--%>
    <%--                <p>Or, keep it light and add a border for some added definition to the boundaries of your content. Be sure to look under the hood at the source HTML here as we've adjusted the alignment and sizing of both column's content for equal-height.</p>--%>
    <%--                <button class="btn btn-outline-secondary" type="button">Example button</button>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <%--    </div>--%>



    <%--        <div class="h-100 p-5 rounded-3">--%>
    <div class="img-container">
        <img class="dogs-img" src="${pageContext.request.contextPath}\pub\images\dogs.png" alt="dog cat">
    </div>

    <div class="col-md-6 search-box">
        <div class="img-">


            <div class="container">
                <div class="row g-12 mt-2 searchbar-contents">
                    <div class="col-md-12">
                        <div class="row g-2">
                            <div class="h-100 p-5 bg-body-tertiary border rounded-3">
                                <h3>Make a Difference, Adopt a Friend</h3>
                                <div class="col-md-12 mt-2 location-search">
                                    <input type="text" class="form-control border-0" placeholder="Location">
                                </div>
                                <div class="col md-3 mt-2">


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
                                <%--                            <div class="col-md-1">--%>
                                <%--                                <button class="btn border-0 w-100 search-btn">Search</button>--%>
                                <%--                            </div>--%>




                                <div class="center-button">
                                    <button class="btn mt-2 search-btn" type="button">Search</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>

    </div>


<jsp:include page="include/footer.jsp"/>