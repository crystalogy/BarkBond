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
                        <select class="database-select" name="newStatus">
                            <option class="status-available" value="available">Available</option>
                            <option class="status-unavailable" value="unavailable">Unavailable</option>
                        </select>
                    </td>
                    <td>Auto Date</td>
                    <td>
                        <select class="database-select" name="newAnimalType">
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
                    <td><input class="database-input" type="text" name="newBreed" placeholder="Enter Breed"></td>
                    <td><input class="database-input" type="text" name="newName" placeholder="Enter Name"></td>
                    <td><input class="database-input" type="text" name="newGender" placeholder="Enter Gender"></td>
                    <td><input class="database-input" type="text" name="newAge" placeholder="Enter Age"></td>
                    <td><input class="database-input" type="text" name="newPhotoUrl" placeholder="Enter Photo URL"></td>
                    <td><input class="database-input" type="text" name="newOrganizationID" placeholder="Enter Organization ID"></td>
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

    // Attach the listener only once when the DOM is fully loaded
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
