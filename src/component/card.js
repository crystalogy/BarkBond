window.addEventListener('load', function() {
    let htmlContent = '';

    for(let i = 0; i < 100; i++) {
        htmlContent += `
            <div class="card">
                <img class="cardImg" src="/src/dogimg.jpg" alt="pet image" style="width:100%">
                    <div class="cardTextContainer">
                        <h4><b>Dog Doe</b></h4>
                        <p>Golden Retriever</p>
                    </div>
            </div>
            `;
    }
    document.getElementById('cards').innerHTML += htmlContent;

});