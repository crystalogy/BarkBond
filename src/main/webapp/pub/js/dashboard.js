// document.addEventListener('DOMContentLoaded', function() {
//     const tabs = document.querySelectorAll('.dashboard-panel-vertical-tabs a');
//     const contents = document.querySelectorAll('.dashboard-content');
//
//     function addRowToTable() {
//         const activeContent = document.querySelector('.dashboard-content:not([style*="display: none"])');
//         if (activeContent) {
//             const table = activeContent.querySelector('table tbody');
//             if (table) {
//                 const newRow = document.createElement('tr');
//
//                 // Add editable cells to the new row with proper name attributes
//                 newRow.innerHTML = `
//                     <td>Auto ID</td>
//                     <td>
//                         <select class="database-select" name="newStatus">
//                             <option class="status-available" value="available">Available</option>
//                             <option class="status-unavailable" value="unavailable">Unavailable</option>
//                         </select>
//                     </td>
//                     <td>Auto Date</td>
//                     <td>
//                         <select class="database-select" name="newAnimalType">
//                             <option value="Cat">Cat</option>
//                             <option value="Dog">Dog</option>
//                             <option value="Bird">Bird</option>
//                             <option value="Rabbit">Rabbit</option>
//                             <option value="Lizard">Lizard</option>
//                             <option value="Frog">Frog</option>
//                             <option value="Horse">Horse</option>
//                             <option value="Pig">Pig</option>
//                             <option value="Goat">Goat</option>
//                             <option value="Sheep">Sheep</option>
//                             <option value="Cow">Cow</option>
//                             <option value="Hamster">Hamster</option>
//                             <option value="Turtle">Turtle</option>
//                             <option value="Snake">Snake</option>
//                             <option value="Guinea pig">Guinea Pig</option>
//                             <option value="Ferret">Ferret</option>
//                         </select>
//                     </td>
//                     <td><input class="database-input" type="text" name="newBreed" placeholder="Enter Breed"></td>
//                     <td><input class="database-input" type="text" name="newName" placeholder="Enter Name"></td>
//                     <td><input class="database-input" type="text" name="newGender" placeholder="Enter Gender"></td>
//                     <td><input class="database-input" type="text" name="newAge" placeholder="Enter Age"></td>
//                     <td><input class="database-input" type="text" name="newPhotoUrl" placeholder="Enter Photo URL"></td>
//                     <td><input class="database-input" type="text" name="newOrganizationID" placeholder="Enter Organization ID"></td>
//                 `;
//
//                 table.appendChild(newRow);
//                 console.log('New editable row added');
//             } else {
//                 console.error('Table body not found');
//             }
//         } else {
//             console.error('Active content not found');
//         }
//     }
//
//     function attachAddRowListener() {
//         const addRowButton = document.getElementById('addRowButton');
//         if (addRowButton) {
//             console.log("Add Row Button Found");
//
//             // Ensure that the listener is attached only once
//             addRowButton.removeEventListener('click', addRowToTable);
//             addRowButton.addEventListener('click', addRowToTable);
//         } else {
//             console.log("Add Row Button Not Found");
//         }
//     }
//
//     // Attach the listener only once when the DOM is fully loaded
//     attachAddRowListener();
//
//     tabs.forEach(tab => {
//         tab.addEventListener('click', function(event) {
//             event.preventDefault();
//             tabs.forEach(t => t.classList.remove('active'));
//             tab.classList.add('active');
//
//             const selectedTab = tab.getAttribute('data-tab');
//             contents.forEach(content => {
//                 content.style.display = 'none';
//             });
//
//             const selectedContent = document.getElementById(selectedTab);
//             if (selectedContent) {
//                 selectedContent.style.display = 'block';
//             }
//         });
//     });
//
//     if (tabs.length > 0) {
//         tabs[0].click(); // Load the first tab by default
//     }
// });


// -------------------------second version (I like everything but it doesnt save to database-------------------------

// document.addEventListener('DOMContentLoaded', function() {
//     const tabs = document.querySelectorAll('.dashboard-panel-vertical-tabs a');
//     const contents = document.querySelectorAll('.dashboard-content');
//
//     function addRowToTable() {
//         const activeContent = document.querySelector('.dashboard-content:not([style*="display: none"])');
//         if (activeContent) {
//             const table = activeContent.querySelector('table tbody');
//             if (table) {
//                 const newRow = document.createElement('tr');
//
//                 // Add editable cells to the new row with proper name attributes
//                 newRow.innerHTML = `
//                     <td>Auto ID</td>
//                     <td>
//                         <select class="database-select" name="newStatus">
//                             <option class="status-available" value="available">Available</option>
//                             <option class="status-unavailable" value="unavailable">Unavailable</option>
//                         </select>
//                     </td>
//                     <td>Auto Date</td>
//                     <td>
//                         <select class="database-select" name="newAnimalType">
//                             <option value="Cat">Cat</option>
//                             <option value="Dog">Dog</option>
//                             <option value="Bird">Bird</option>
//                             <option value="Rabbit">Rabbit</option>
//                             <option value="Lizard">Lizard</option>
//                             <option value="Frog">Frog</option>
//                             <option value="Horse">Horse</option>
//                             <option value="Pig">Pig</option>
//                             <option value="Goat">Goat</option>
//                             <option value="Sheep">Sheep</option>
//                             <option value="Cow">Cow</option>
//                             <option value="Hamster">Hamster</option>
//                             <option value="Turtle">Turtle</option>
//                             <option value="Snake">Snake</option>
//                             <option value="Guinea pig">Guinea Pig</option>
//                             <option value="Ferret">Ferret</option>
//                         </select>
//                     </td>
//                     <td><input class="database-input" type="text" name="newBreed" placeholder="Enter Breed"></td>
//                     <td><input class="database-input" type="text" name="newName" placeholder="Enter Name"></td>
//                     <td><input class="database-input" type="text" name="newGender" placeholder="Enter Gender"></td>
//                     <td><input class="database-input" type="text" name="newAge" placeholder="Enter Age"></td>
//                     <td><input class="database-input" type="text" name="newPhotoUrl" placeholder="Enter Photo URL"></td>
//                     <td><input class="database-input" type="text" name="newOrganizationID" placeholder="Enter Organization ID"></td>
//                 `;
//
//                 table.appendChild(newRow);
//                 console.log('New editable row added');
//             } else {
//                 console.error('Table body not found');
//             }
//         } else {
//             console.error('Active content not found');
//         }
//     }
//
//     function attachAddRowListener() {
//         const addRowButton = document.getElementById('addRowButton');
//         if (addRowButton) {
//             console.log("Add Row Button Found");
//
//             // Ensure that the listener is attached only once
//             addRowButton.removeEventListener('click', addRowToTable);
//             addRowButton.addEventListener('click', addRowToTable);
//         } else {
//             console.log("Add Row Button Not Found");
//         }
//     }
//
//     function makeCellEditable(cell) {
//         const originalValue = cell.innerText.trim();
//         let inputField;
//
//         // If it's a dropdown field (like status), handle it differently
//         if (cell.dataset.field === 'adoptionStatus') {
//             inputField = document.createElement('select');
//             inputField.className = 'database-select';
//             inputField.name = cell.dataset.field;
//
//             const options = ['available', 'unavailable'];
//             options.forEach(optionValue => {
//                 const option = document.createElement('option');
//                 option.value = optionValue;
//                 option.textContent = optionValue.charAt(0).toUpperCase() + optionValue.slice(1);
//                 if (optionValue === originalValue.toLowerCase()) {
//                     option.selected = true;
//                 }
//                 inputField.appendChild(option);
//             });
//         } else {
//             // For other fields, use a text input
//             inputField = document.createElement('input');
//             inputField.type = 'text';
//             inputField.className = 'database-input';
//             inputField.name = cell.dataset.field;
//             inputField.value = originalValue;
//         }
//
//         cell.innerHTML = ''; // Clear cell content
//         cell.appendChild(inputField); // Add the input field
//
//         inputField.focus(); // Focus on the input field
//
//         inputField.addEventListener('blur', function() {
//             cell.innerText = inputField.value; // Save the new value in the cell
//             cell.dataset.value = inputField.value; // Update the data-value attribute
//             // Optionally, you could trigger a save here or set a flag to save changes later
//         });
//
//         inputField.addEventListener('keypress', function(event) {
//             if (event.key === 'Enter') {
//                 inputField.blur(); // Trigger blur event to save and exit
//             }
//         });
//     }
//
//     // Handle click-to-edit functionality
//     document.querySelectorAll('.editable').forEach(function(cell) {
//         cell.addEventListener('click', function() {
//             makeCellEditable(cell);
//         });
//     });
//
//     // Attach the listener only once when the DOM is fully loaded
//     attachAddRowListener();
//
//     tabs.forEach(tab => {
//         tab.addEventListener('click', function(event) {
//             event.preventDefault();
//             tabs.forEach(t => t.classList.remove('active'));
//             tab.classList.add('active');
//
//             const selectedTab = tab.getAttribute('data-tab');
//             contents.forEach(content => {
//                 content.style.display = 'none';
//             });
//
//             const selectedContent = document.getElementById(selectedTab);
//             if (selectedContent) {
//                 selectedContent.style.display = 'block';
//             }
//         });
//     });
//
//     if (tabs.length > 0) {
//         tabs[0].click(); // Load the first tab by default
//     }
// });










document.addEventListener('DOMContentLoaded', function() {
    const tabs = document.querySelectorAll('.dashboard-panel-vertical-tabs a');
    const contents = document.querySelectorAll('.dashboard-content');

    function addRowToTable() {
        const activeContent = document.querySelector('.dashboard-content:not([style*="display: none"])');
        if (activeContent) {
            const table = activeContent.querySelector('table tbody');
            if (table) {
                const newRow = document.createElement('tr');

                // Add editable cells to the new row with proper name attributes
                newRow.innerHTML = `
                    <td>Auto ID</td>
                    <td>
                        <select class="database-select" name="status">
                            <option class="status-available" value="available">Available</option>
                            <option class="status-unavailable" value="unavailable">Unavailable</option>
                        </select>
                    </td>
                    <td>Auto Date</td>
                    <td>
                        <select class="database-select" name="animalType">
                            <option value="Cat">Cat</option>
                            <option value="Dog">Dog</option>
                            <option value="Bird">Bird</option>
                            <option value="Rabbit">Rabbit</option>
                            <option value="Lizard">Lizard</option>
                            <option value="Frog">Frog</option>
                            <option value="Horse">Horse</option>
                            <option value="Pig">Pig</option>
                            <option value="Goat">Goat</option>
                            <option value="Sheep">Sheep</option>
                            <option value="Cow">Cow</option>
                            <option value="Hamster">Hamster</option>
                            <option value="Turtle">Turtle</option>
                            <option value="Snake">Snake</option>
                            <option value="Guinea pig">Guinea Pig</option>
                            <option value="Ferret">Ferret</option>
                        </select>
                    </td>
                    <td><input class="database-input" type="text" name="breed" placeholder="Enter Breed"></td>
                    <td><input class="database-input" type="text" name="name" placeholder="Enter Name"></td>
                    <td><input class="database-input" type="text" name="gender" placeholder="Enter Gender"></td>
                    <td><input class="database-input" type="text" name="age" placeholder="Enter Age"></td>
                    <td><input class="database-input" type="text" name="photoUrl" placeholder="Enter Photo URL"></td>
                    <td><input class="database-input" type="text" name="organizationId" placeholder="Enter Organization ID"></td>
                `;

                table.appendChild(newRow);
                console.log('New editable row added');
            } else {
                console.error('Table body not found');
            }
        } else {
            console.error('Active content not found');
        }
    }

    function attachAddRowListener() {
        const addRowButton = document.getElementById('addRowButton');
        if (addRowButton) {
            console.log("Add Row Button Found");

            // Ensure that the listener is attached only once
            addRowButton.removeEventListener('click', addRowToTable);
            addRowButton.addEventListener('click', addRowToTable);
        } else {
            console.log("Add Row Button Not Found");
        }
    }

    function makeCellEditable(cell) {
        const originalValue = cell.innerText.trim();
        let inputField;

        // If it's a dropdown field (like status), handle it differently
        if (cell.dataset.field === 'status') {
            inputField = document.createElement('select');
            inputField.className = 'database-select';
            inputField.name = cell.dataset.field;

            const options = ['available', 'unavailable'];
            options.forEach(optionValue => {
                const option = document.createElement('option');
                option.value = optionValue;
                option.textContent = optionValue.charAt(0).toUpperCase() + optionValue.slice(1);
                if (optionValue === originalValue.toLowerCase()) {
                    option.selected = true;
                }
                inputField.appendChild(option);
            });
        } else {
            // For other fields, use a text input
            inputField = document.createElement('input');
            inputField.type = 'text';
            inputField.className = 'database-input';
            inputField.name = cell.dataset.field;
            inputField.value = originalValue;
        }

        cell.innerHTML = ''; // Clear cell content
        cell.appendChild(inputField); // Add the input field

        inputField.focus(); // Focus on the input field

        inputField.addEventListener('blur', function() {
            cell.innerText = inputField.value; // Save the new value in the cell
            cell.dataset.value = inputField.value; // Update the data-value attribute
        });

        inputField.addEventListener('keypress', function(event) {
            if (event.key === 'Enter') {
                inputField.blur(); // Trigger blur event to save and exit
            }
        });
    }

    // Handle click-to-edit functionality
    document.querySelectorAll('.editable').forEach(function(cell) {
        cell.addEventListener('click', function() {
            makeCellEditable(cell);
        });
    });

    function handleSaveButtonClick() {
        const animalForm = document.getElementById('animalForm');
        const editedRows = [];

        animalForm.querySelectorAll('tbody tr').forEach(row => {
            const animal = {};
            row.querySelectorAll('td').forEach(cell => {
                const fieldName = cell.dataset.field;
                if (fieldName) {
                    const input = cell.querySelector('input, select');
                    if (input) {
                        animal[fieldName] = input.value.trim();
                    } else {
                        animal[fieldName] = cell.innerText.trim(); // Fallback for text content
                    }
                }
            });
            if (Object.keys(animal).length > 0 && animal.animalID) {  // Ensure the ID is present
                editedRows.push(animal);
            }
        });

        // Send the data to the server
        const xhr = new XMLHttpRequest();
        xhr.open('POST', animalForm.action, true);
        xhr.setRequestHeader('Content-Type', 'application/json');
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                alert('Changes saved successfully!');
            } else if (xhr.readyState === 4) {
                alert('Error saving changes.');
            }
        };
        xhr.send(JSON.stringify(editedRows));
    }


    document.querySelector('.dashboard-btn[type="submit"]').addEventListener('click', function(event) {
        event.preventDefault(); // Prevent the form from submitting normally
        handleSaveButtonClick(); // Save the data via AJAX
    });


    attachAddRowListener();

    tabs.forEach(tab => {
        tab.addEventListener('click', function(event) {
            event.preventDefault();
            tabs.forEach(t => t.classList.remove('active'));
            tab.classList.add('active');

            const selectedTab = tab.getAttribute('data-tab');
            contents.forEach(content => {
                content.style.display = 'none';
            });

            const selectedContent = document.getElementById(selectedTab);
            if (selectedContent) {
                selectedContent.style.display = 'block';
            }
        });
    });

    if (tabs.length > 0) {
        tabs[0].click(); // Load the first tab by default
    }
});
