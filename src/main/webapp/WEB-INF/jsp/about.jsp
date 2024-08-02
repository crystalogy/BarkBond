<jsp:include page="include/header.jsp" />
<jsp:include page="include/navbar.jsp" />

<link rel="stylesheet" href="${pageContext.request.contextPath}pub/css/about.css">




<div class="about-hero">
    <div class="hero-content">
        <h1>About Us</h1>
        <p>This website is dedicated to the memory of my beloved dog, Eevee. Her journey from a scared rescue to a loving companion is a testament to the incredible resilience and capacity for love that animals possess. Eevee's mission was simple: to love and be loved. My goal is to share Eevee's legacy of love by helping rescue pets find their forever homes. Through this platform, I continue that mission by connecting pets in need with families who can provide them with the love and care that every animal deserves.</p>
    </div>
</div>

<div class="about-content">
<%--    <div class="image-section">--%>
<%--        <img src="${pageContext.request.contextPath}IMG_1319.jpg" alt="Eevee" class="eevee-image">--%>
<%--    </div>--%>

    <div class="image-section">
        <img id="dog-image" src="${pageContext.request.contextPath}/IMG_1319.jpg" usemap="#image-map" alt="Eevee" class="eevee-image">

        <map name="image-map">
            <!-- Adjust the coordinates to precisely cover the dog's nose -->
            <area shape="circle" coords="802,1025,27" alt="Dog Nose" href="#" onclick="changeImage()">
        </map>
    </div>



    <div class="text-section">
        <h2>Our Mission</h2>
        <p>I believe that every animal deserves a chance to be loved and cherished. Eevee's legacy lives on through every adoption and every pet whose life is changed for the better. I am committed to making a difference, one rescue pet at a time. Thank you for joining me in this mission and for helping me honor Eevee's memory. Together, we can create a brighter future for countless animals.</p>
    </div>
</div>



<script>
    function changeImage() {
        document.getElementById('dog-image').src = '${pageContext.request.contextPath}/dogs.png';
    }
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

<jsp:include page="include/footer.jsp" />