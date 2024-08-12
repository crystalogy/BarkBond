document.getElementById('apply-filters').addEventListener('click', function() {
    applyFilters();
});

function applyFilters() {
    // Retrieve filter values
    const age = document.getElementById('filter-age').value;
    const size = document.getElementById('filter-size').value;
    const gender = document.getElementById('filter-gender').value;
    const specialNeeds = document.getElementById('filter-special-needs').checked;

    // Construct the filter criteria object
    const filterCriteria = {
        age: age,
        size: size,
        gender: gender,
        specialNeeds: specialNeeds
    };

    // Send the filter criteria to the server (if server-side filtering is used)
    // Or filter the animals on the client-side
    fetchFilteredAnimals(filterCriteria);
}

function fetchFilteredAnimals(criteria) {
    fetch('/adopt/animals', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(criteria)
    })
        .then(response => response.json())
        .then(data => {
            // Process the filtered animals data
            updateAnimalCards(data);
        })
        .catch(error => console.error('Error:', error));
}

function updateAnimalCards(animals) {
    const cardContainer = document.getElementById('cards');
    cardContainer.innerHTML = ''; // Clear existing cards

    animals.forEach(animal => {
        const card = document.createElement('div');
        card.className = 'card';
        card.innerHTML = `
            <img class="cardImg" src="${contextPath}${animal.photoUrl}" alt="animal image"/>
            <div class="card-contents">
                <h6>${animal.name}</h6>
                <p>${animal.breed}</p>
                <p>${animal.gender}</p>
                <p>${animal.age}</p>
            </div>
        `;
        cardContainer.appendChild(card);
    });
}
