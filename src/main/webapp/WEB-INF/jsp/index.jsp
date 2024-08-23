


<jsp:include page="include/header.jsp"/>
<jsp:include page="include/navbar.jsp"/>


<link rel="stylesheet" href="${pageContext.request.contextPath}pub/css/index.css">

<div class="page-container">
    <div class="index-hero">

        <div class="phrase-container">
            <div class="box">


                <div class="title">
                    <span class="block"></span>
                    <h1 id="hero-phrase">Filling homes with happiness, one bond at a time<span></span></h1>
                </div>



            </div>
        </div>




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








<div class="search-container">






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