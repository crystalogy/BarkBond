window.addEventListener('load', function() {
    const animals = [
        {
            photoUrl: contextPath + '/images/dog1.jpg',
            name: 'Buddy',
            age: '1',
            breed: 'Golden Retriever'
        },
        {
            photoUrl: contextPath + '/images/dog2.jpg',
            name: 'Max',
            age: '1',
            breed: 'Labrador Retriever'
        },
        {
            photoUrl: contextPath + '/images/dog3.jpg',
            name: 'Bella',
            age: '1',
            breed: 'German Shepherd'
        },
        {
            photoUrl: contextPath + '/images/dog3.jpg',
            name: 'Bella',
            age: '1',
            breed: 'German Shepherd'
        },
        {
            photoUrl: contextPath + '/images/dog3.jpg',
            name: 'Bella',
            age: '1',
            breed: 'German Shepherd'
        }
    ];

    let htmlContent = '';

    animals.forEach(animal => {
        htmlContent += `
            <div class="card-outline">
                <div class="card">
                    <img class="cardImg" src="${animal.photoUrl}" alt="adoptable pet image">
                    <div class="cardTextContainer">
                        <h4><b>${animal.name}</b></h4>
                        <p>${animal.breed}</p>
                        <p>${animal.age}</p>
                    </div>
                </div>
            </div>
        `;
    });

    document.getElementById('cards').innerHTML = htmlContent;
});





// window.addEventListener('load', function() {
//     let htmlContent = '';
//
//     for(let i = 0; i < 12; i++) {
//         htmlContent += `
//         <div class="card-outline">
//             <div class="card">
//                 <img class="cardImg" src="` + contextPath + `/images/dogTestImg.jpg" alt="adoptable pet image">
//                     <div class="cardTextContainer">
//                         <h4><b>Dog Doe</b></h4>
//                         <p>Golden Retriever</p>
//                     </div>
//             </div>
//         </div>
//             `;
//     }
//     document.getElementById('cards').innerHTML += htmlContent;
//
// });























// window.addEventListener('load', async function() {
//     const results = await fetchAnimals();
//
//     let htmlContent = '';
//
//     results.forEach(result => {
//         const photoUrl = result.photos && result.photos.length > 0 ? result.photos[0].full : contextPath + '/dogTestImg.jpg';
//         const name = result.name || 'Unknown';
//         const breed = result.breeds && result.breeds.primary ? result.breeds.primary : 'Unknown';
//
//         htmlContent += `
//             <div class="card">
//                 <img class="cardImg" src="${photoUrl}" alt="adoptable pet image">
//                 <div class="cardTextContainer">
//                     <h4><b>${name}</b></h4>
//                     <p>${breed}</p>
//                 </div>
//             </div>
//         `;
//     });
//
//     const cardsElement = document.getElementById('cards');
//     if (cardsElement) {
//         cardsElement.innerHTML = htmlContent;
//     } else {
//         console.error('The cards element does not exist in the DOM.');
//     }
// });
//
// async function renewAccessToken() {
//     const response = await fetch("/api/oauth-token");
//
//     if (!response.ok) {
//         throw new Error("Failed to renew access token");
//     }
//
//     const data = await response.json();
//     return data.access_token;
// }
//
// async function fetchAnimals() {
//     const accessToken = await renewAccessToken();
//     const res = await fetch("https://api.petfinder.com/v2/animals", {
//         headers: {
//             Authorization: `Bearer ${accessToken}`,
//         },
//     });
//
//     if (!res.ok) {
//         throw new Error(`HTTP error! status: ${res.status}`);
//     }
//
//     const data = await res.json();
//     if (Array.isArray(data.animals)) {
//         return data.animals;
//     } else {
//         console.error("Unexpected response data:", data);
//         return [];
//     }
// }