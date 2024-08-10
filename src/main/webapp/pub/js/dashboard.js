// function initializeAddRowButton() {
//     const addRowButton = document.getElementById('addRowButton');
//     const tableBody = document.querySelector('#example tbody');
//
//     if (addRowButton && tableBody) {
//         addRowButton.addEventListener('click', function() {
//             const newRow = document.createElement('tr');
//
//             newRow.innerHTML = `
//                 <td>New ID</td>
//                 <td><span class="status-green">Available</span></td>
//                 <td>New Date</td>
//                 <td>New Animal Type</td>
//                 <td>New Breed</td>
//                 <td>New Name</td>
//                 <td>New Age</td>
//                 <td>New Organization ID</td>
//             `;
//
//             tableBody.appendChild(newRow);
//         });
//     } else {
//         console.error('Add Row button or table body not found.');
//     }
// }
//
// document.addEventListener('DOMContentLoaded', function() {
//     initializeAddRowButton();
// });


function initializeAddRowButton() {
    const addRowButton = document.getElementById('addRowButton');
    const tableBody = document.querySelector('#example tbody');

    if (addRowButton && tableBody) {
        addRowButton.addEventListener('click', function() {
            // Create a new row element
            const newRow = document.createElement('tr');

            // Define the HTML for each column with basic input elements
            newRow.innerHTML = `
                <td>Auto ID</td>
                <td><select name="newStatus"><option value="available">Available</option><option value="unavailable">Unavailable</option></select></td>
                <td>Auto Date</td>
                <td>
                    <select name="newAnimalType">
                        <option value="cat">Cat</option>
                        <option value="dog">Dog</option>
                        <option value="bird">Bird</option>
                        <option value="rabbits">Rabbits</option>
                        <option value="lizard">Lizard</option>
                        <option value="frog">Frog</option>
                        <option value="horse">Horse</option>
                        <option value="pig">Pig</option>
                        <option value="goat">Goat</option>
                        <option value="sheep">Sheep</option>
                        <option value="cow">Cow</option>
                        <option value="hamster">Hamster</option>
                        <option value="turtle">Turtle</option>
                        <option value="snake">Snake</option>
                        <option value="guinea pig">Guinea Pig</option>
                        <option value="ferret">Ferret</option>
                    </select>
                </td>
<!--                <td><input class="database-input" type="text" name="newBreed" placeholder="Enter Breed"></td>-->
                <td><input class="database-input" type="text" name="newBreed" placeholder="Enter Breed"></td>
                <td><input class="database-input" type="text" name="newName" placeholder="Enter Name"></td>
                <td><input class="database-input" type="number" name="newAge" placeholder="Enter Age"></td>
                <td><input class="database-input" type="text" name="newOrganizationID" placeholder="Enter Organization ID"></td>
            `;

            // Append the new row to the table body
            tableBody.appendChild(newRow);
        });
    } else {
        console.error('Add Row button or table body not found.');
    }
}

// Initialize the function on DOMContentLoaded
document.addEventListener('DOMContentLoaded', function() {
    initializeAddRowButton();
});

$('.ui.dropdown').dropdown();
