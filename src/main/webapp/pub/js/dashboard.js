// document.addEventListener('DOMContentLoaded', function() {
//     const tabs = document.querySelectorAll('.dashboard-panel-vertical-tabs a');
//     const contentMain = document.querySelector('.content-main');
//     let savedData = {};
//
//     const tabContent = {
//         'Animals': `
//             <button id="addRowButton" class="btn btn-primary dashboard-btn">Add Row</button>
//             <table id="dashboard-table" class="table table-striped table-bordered" cellspacing="0" width="100%">
//                 <thead>
//                     <tr>
//                         <th>ID</th>
//                         <th>Status</th>
//                         <th>Create_Date</th>
//                         <th>Animal Type</th>
//                         <th>Breed</th>
//                         <th>Name</th>
//                         <th>Age</th>
//                         <th>Organization ID</th>
//                     </tr>
//                 </thead>
//                 <tbody>
//                     <!-- Rows will be dynamically added here -->
//                 </tbody>
//             </table>
//         `,
//         'Users': `
//             <table id="dashboard-table" class="table table-striped table-bordered" cellspacing="0" width="100%">
//                 <thead>
//                     <tr>
//                         <th>ID</th>
//                         <th>First Name</th>
//                         <th>Last Name</th>
//                         <th>Email</th>
//                         <th>Profile Created</th>
//                     </tr>
//                 </thead>
//                 <tbody>
//                     <!-- Rows will be dynamically added here -->
//                 </tbody>
//             </table>
//         `,
//         'Organizations': `
//             <table id="dashboard-table" class="table table-striped table-bordered" cellspacing="0" width="100%">
//                 <thead>
//                     <tr>
//                         <th>ID</th>
//                         <th>Organization Name</th>
//                         <th>Location</th>
//                     </tr>
//                 </thead>
//                 <tbody>
//                     <!-- Rows will be dynamically added here -->
//                 </tbody>
//             </table>
//         `
//     };
//
//     tabs.forEach(tab => {
//         tab.addEventListener('click', function(event) {
//             event.preventDefault();
//             const tabName = tab.textContent.trim();
//
//             // Save current data
//             const currentTab = document.querySelector('.dashboard-panel-vertical-tabs a.active').textContent.trim();
//             const currentTableBody = document.querySelector('#dashboard-table tbody');
//             if (currentTableBody) {
//                 savedData[currentTab] = currentTableBody.innerHTML;
//             }
//
//             // Switch tab content
//             tabs.forEach(t => t.classList.remove('active'));
//             tab.classList.add('active');
//             contentMain.innerHTML = tabContent[tabName] || '<p>Content not found</p>';
//
//             // Restore saved data
//             if (savedData[tabName]) {
//                 document.querySelector('#dashboard-table tbody').innerHTML = savedData[tabName];
//             }
//
//             // Reinitialize Add Row button
//             if (tabName === 'Animals') {
//                 initializeAddRowButton();
//             }
//         });
//     });
//
//     if (tabs.length > 0) {
//         tabs[0].click();
//     }
// });
//
// function initializeAddRowButton() {
//     const addRowButton = document.getElementById('addRowButton');
//     const tableBody = document.querySelector('#dashboard-table tbody');
//
//     if (addRowButton && tableBody) {
//         addRowButton.addEventListener('click', function() {
//             const newRow = document.createElement('tr');
//             newRow.innerHTML = `
//                 <td>Auto ID</td>
//                 <td><select class="database-select" name="newStatus"><option value="available">Available</option><option value="unavailable">Unavailable</option></select></td>
//                 <td>Auto Date</td>
//                 <td>
//                     <select class="database-select" name="newAnimalType">
//                         <option value="cat">Cat</option>
//                         <option value="dog">Dog</option>
//                         <option value="bird">Bird</option>
//                         <option value="rabbits">Rabbits</option>
//                         <option value="lizard">Lizard</option>
//                         <option value="frog">Frog</option>
//                         <option value="horse">Horse</option>
//                         <option value="pig">Pig</option>
//                         <option value="goat">Goat</option>
//                         <option value="sheep">Sheep</option>
//                         <option value="cow">Cow</option>
//                         <option value="hamster">Hamster</option>
//                         <option value="turtle">Turtle</option>
//                         <option value="snake">Snake</option>
//                         <option value="guinea pig">Guinea Pig</option>
//                         <option value="ferret">Ferret</option>
//                     </select>
//                 </td>
//
//                 <td><input class="database-input" type="text" name="newBreed" placeholder="Enter Breed"></td>
//                 <td><input class="database-input" type="text" name="newName" placeholder="Enter Name"></td>
//                 <td><input class="database-input" type="text" name="newAge" placeholder="Enter Age"></td>
//                 <td><input class="database-input" type="text" name="newOrganizationID" placeholder="Enter Organization ID"></td>
//             `;
//             tableBody.appendChild(newRow);
//         });
//     } else {
//         console.error('Add Row button or table body not found.');
//     }
// }





//
//
// function initializeAddRowButton() {
//     const addRowButton = document.getElementById('addRowButton');
//     const tableBody = document.querySelector('#dashboard-table tbody');
//
//     if (addRowButton && tableBody) {
//         addRowButton.addEventListener('click', function() {
//             const newRow = document.createElement('tr');
//             newRow.innerHTML = `
//                 <td>Auto ID</td>
//                 <td><select class="database-select" name="newStatus"><option value="available">Available</option><option value="unavailable">Unavailable</option></select></td>
//                 <td>Auto Date</td>
//                 <td><select class="database-select" name="newAnimalType">
//                         <option value="cat">Cat</option>
//                         <option value="dog">Dog</option>
//                         <option value="bird">Bird</option>
//                         <option value="rabbits">Rabbits</option>
//                         <option value="lizard">Lizard</option>
//                         <option value="frog">Frog</option>
//                         <option value="horse">Horse</option>
//                         <option value="pig">Pig</option>
//                         <option value="goat">Goat</option>
//                         <option value="sheep">Sheep</option>
//                         <option value="cow">Cow</option>
//                         <option value="hamster">Hamster</option>
//                         <option value="turtle">Turtle</option>
//                         <option value="snake">Snake</option>
//                         <option value="guinea pig">Guinea Pig</option>
//                         <option value="ferret">Ferret</option>
//                     </select>
//                 </td>
//                 <td><input class="database-input" type="text" name="newBreed" placeholder="Enter Breed"></td>
//                 <td><input class="database-input" type="text" name="newName" placeholder="Enter Name"></td>
//                 <td><input class="database-input" type="number" name="newAge" placeholder="Enter Age"></td>
//                 <td><input class="database-input" type="text" name="newOrganizationID" placeholder="Enter Organization ID"></td>
//             `;
//             tableBody.insertBefore(newRow, tableBody.firstChild);
//         });
//     } else {
//         console.error('Add Row button or table body not found.');
//     }
// }
//
// document.addEventListener('DOMContentLoaded', initializeAddRowButton);






//
//
//
//
//
//
// document.addEventListener('DOMContentLoaded', function() {
//     const tabs = document.querySelectorAll('.dashboard-panel-vertical-tabs a');
//     const contentMain = document.querySelector('.content-main');
//
//     const tabContent = {
//         'Animals': `
//             <table id="dashboard-table" class="table table-striped table-bordered" cellspacing="0" width="100%">
//                 <thead>
//                     <tr>
//                         <th>ID</th>
//                         <th>Status</th>
//                         <th>Create Date</th>
//                         <th>Animal Type</th>
//                         <th>Breed</th>
//                         <th>Name</th>
//                         <th>Age</th>
//                         <th>Organization ID</th>
//                     </tr>
//                 </thead>
//                 <tbody>
//                     <c:forEach items="\${animalList}" var="animal">
//                         <tr>
//                             <td>\${animal.animalID}</td>
//                             <td>
//                                 <c:choose>
//                                     <c:when test="\${animal.status == 'available'}">
//                                         <span class="status-available">\${animal.status}</span>
//                                     </c:when>
//                                     <c:otherwise>
//                                         <span class="status-unavailable">\${animal.status}</span>
//                                     </c:otherwise>
//                                 </c:choose>
//                             </td>
//                             <td>\${animal.createDate}</td>
//                             <td>\${animal.animalType}</td>
//                             <td>\${animal.breed}</td>
//                             <td>\${animal.name}</td>
//                             <td>\${animal.age}</td>
//                             <td>\${animal.organizationId}</td>
//                         </tr>
//                     </c:forEach>
//                 </tbody>
//             </table>
//             <!-- Modal -->
//             <div id="myModal" class="modal fade" role="dialog">
//                 <div class="modal-dialog">
//                     <!-- Modal content-->
//                     <div class="modal-content">
//                         <div class="modal-header">
//                             <button type="button" class="close" data-dismiss="modal">&times;</button>
//                             <h4 class="modal-title">Row information</h4>
//                         </div>
//                         <div class="modal-body"></div>
//                         <div class="modal-footer">
//                             <button type="button" class="btn btn-default dashboard-btn" data-dismiss="modal">Close</button>
//                         </div>
//                     </div>
//                 </div>
//             </div>
//         `,
//         'Users': `
//             <table id="dashboard-table" class="table table-striped table-bordered" cellspacing="0" width="100%">
//                 <thead>
//                     <tr>
//                         <th>ID</th>
//                         <th>First Name</th>
//                         <th>Last Name</th>
//                         <th>Email</th>
//                         <th>Profile Created</th>
//                     </tr>
//                 </thead>
//                 <tbody>
//                     <c:forEach items="\${userList}" var="user">
//                         <tr>
//                             <td>\${user.id}</td>
//                             <td>\${user.firstName}</td>
//                             <td>\${user.lastName}</td>
//                             <td>\${user.email}</td>
//                             <td>\${user.createDate}</td>
//                         </tr>
//                     </c:forEach>
//                 </tbody>
//             </table>
//             <!-- Modal -->
//             <div id="myModal" class="modal fade" role="dialog">
//                 <div class="modal-dialog">
//                     <!-- Modal content-->
//                     <div class="modal-content">
//                         <div class="modal-header">
//                             <button type="button" class="close dashboard-btn" data-dismiss="modal">&times;</button>
//                             <h4 class="modal-title">Row information</h4>
//                         </div>
//                         <div class="modal-body"></div>
//                         <div class="modal-footer">
//                             <button type="button" class="btn btn-default dashboard-btn" data-dismiss="modal">Close</button>
//                         </div>
//                     </div>
//                 </div>
//             </div>
//         `,
//         'Organizations': `
//             <table id="dashboard-table" class="table table-striped table-bordered" cellspacing="0" width="100%">
//                 <thead>
//                     <tr>
//                         <th>ID</th>
//                         <th>Organization Name</th>
//                         <th>Location</th>
//                     </tr>
//                 </thead>
//                 <tbody>
//                     <c:forEach items="\${organizationList}" var="organization">
//                         <tr>
//                             <td>\${organization.id}</td>
//                             <td>\${organization.name}</td>
//                             <td>\${organization.location}</td>
//                         </tr>
//                     </c:forEach>
//                 </tbody>
//             </table>
//             <!-- Modal -->
//             <div id="myModal" class="modal fade" role="dialog">
//                 <div class="modal-dialog">
//                     <!-- Modal content-->
//                     <div class="modal-content">
//                         <div class="modal-header">
//                             <button type="button" class="close dashboard-btn" data-dismiss="modal">&times;</button>
//                             <h4 class="modal-title">Row information</h4>
//                         </div>
//                         <div class="modal-body"></div>
//                         <div class="modal-footer">
//                             <button type="button" class="btn btn-default dashboard-btn" data-dismiss="modal">Close</button>
//                         </div>
//                     </div>
//                 </div>
//             </div>
//         `
//     };
//
//     function reattachEventListeners() {
//         const addRowButton = document.getElementById('addRowButton');
//         if (addRowButton) {
//             addRowButton.addEventListener('click', function() {
//                 // Add row logic here
//             });
//         }
//     }
//
//     tabs.forEach(tab => {
//         tab.addEventListener('click', function(event) {
//             event.preventDefault();
//             tabs.forEach(t => t.classList.remove('active'));
//             tab.classList.add('active');
//             const tabName = tab.textContent.trim();
//             contentMain.innerHTML = tabContent[tabName] || '<p>Content not found</p>';
//             reattachEventListeners();
//         });
//     });
//
//     if (tabs.length > 0) {
//         tabs[0].click();
//     }
// });








// document.addEventListener('DOMContentLoaded', function() {
//     const tabs = document.querySelectorAll('.dashboard-panel-vertical-tabs a');
//     const contentMain = document.querySelector('.content-main');
//
//     const tabContent = {
//         'Animals': `
//             <table id="dashboard-table" class="table table-striped table-bordered" cellspacing="0" width="100%">
//                 <thead>
//                     <tr>
//                         <th>ID</th>
//                         <th>Status</th>
//                         <th>Create Date</th>
//                         <th>Animal Type</th>
//                         <th>Breed</th>
//                         <th>Name</th>
//                         <th>Age</th>
//                         <th>Organization ID</th>
//                     </tr>
//                 </thead>
//                 <tbody>
//                     <c:forEach items="${animalList}" var="animal">
//     <tr>
//         <td>${animal.animalID}</td>
//         <td>
//             <c:choose>
//                 <c:when test="${animal.status == 'available'}">
//                     <span class="status-available">${animal.status}</span>
//                 </c:when>
//                 <c:otherwise>
//                     <span class="status-unavailable">${animal.status}</span>
//                 </c:otherwise>
//             </c:choose>
//         </td>
//         <td>${animal.createDate}</td>
//         <td>${animal.animalType}</td>
//         <td>${animal.breed}</td>
//         <td>${animal.name}</td>
//         <td>${animal.age}</td>
//         <td>${animal.organizationId}</td>
//     </tr>
// </c:forEach>
//                 </tbody>
//             </table>
//             <!-- Modal -->
//             <div id="myModal" class="modal fade" role="dialog">
//                 <div class="modal-dialog">
//                     <!-- Modal content-->
//                     <div class="modal-content">
//                         <div class="modal-header">
//                             <button type="button" class="close" data-dismiss="modal">&times;</button>
//                             <h4 class="modal-title">Row information</h4>
//                         </div>
//                         <div class="modal-body"></div>
//                         <div class="modal-footer">
//                             <button type="button" class="btn btn-default dashboard-btn" data-dismiss="modal">Close</button>
//                         </div>
//                     </div>
//                 </div>
//             </div>
//         `,
//         'Users': `
//             <table id="dashboard-table" class="table table-striped table-bordered" cellspacing="0" width="100%">
//                 <thead>
//                     <tr>
//                         <th>ID</th>
//                         <th>First Name</th>
//                         <th>Last Name</th>
//                         <th>Email</th>
//                         <th>Profile Created</th>
//                     </tr>
//                 </thead>
//                 <tbody>
//                     <c:forEach items="${userList}" var="user">
//                         <tr>
//                             <td>${user.id}</td>
//                             <td>${user.firstName}</td>
//                             <td>${user.lastName}</td>
//                             <td>${user.email}</td>
//                             <td>${user.createDate}</td>
//                         </tr>
//                     </c:forEach>
//                 </tbody>
//             </table>
//             <!-- Modal -->
//             <div id="myModal" class="modal fade" role="dialog">
//                 <div class="modal-dialog">
//                     <!-- Modal content-->
//                     <div class="modal-content">
//                         <div class="modal-header">
//                             <button type="button" class="close dashboard-btn" data-dismiss="modal">&times;</button>
//                             <h4 class="modal-title">Row information</h4>
//                         </div>
//                         <div class="modal-body"></div>
//                         <div class="modal-footer">
//                             <button type="button" class="btn btn-default dashboard-btn" data-dismiss="modal">Close</button>
//                         </div>
//                     </div>
//                 </div>
//             </div>
//         `,
//         'Organizations': `
//             <table id="dashboard-table" class="table table-striped table-bordered" cellspacing="0" width="100%">
//                 <thead>
//                     <tr>
//                         <th>ID</th>
//                         <th>Organization Name</th>
//                         <th>Location</th>
//                     </tr>
//                 </thead>
//                 <tbody>
//                     <c:forEach items="${organizationList}" var="organization">
//                         <tr>
//                             <td>${organization.id}</td>
//                             <td>${organization.name}</td>
//                             <td>${organization.location}</td>
//                         </tr>
//                     </c:forEach>
//                 </tbody>
//             </table>
//             <!-- Modal -->
//             <div id="myModal" class="modal fade" role="dialog">
//                 <div class="modal-dialog">
//                     <!-- Modal content-->
//                     <div class="modal-content">
//                         <div class="modal-header">
//                             <button type="button" class="close dashboard-btn" data-dismiss="modal">&times;</button>
//                             <h4 class="modal-title">Row information</h4>
//                         </div>
//                         <div class="modal-body"></div>
//                         <div class="modal-footer">
//                             <button type="button" class="btn btn-default dashboard-btn" data-dismiss="modal">Close</button>
//                         </div>
//                     </div>
//                 </div>
//             </div>
//         `
//     };
//
//     function reattachEventListeners() {
//         initializeAddRowButton();
//     }
//
//     tabs.forEach(tab => {
//         tab.addEventListener('click', function(event) {
//             event.preventDefault();
//             tabs.forEach(t => t.classList.remove('active'));
//             tab.classList.add('active');
//             const tabName = tab.textContent.trim();
//             contentMain.innerHTML = tabContent[tabName] || '<p>Content not found</p>';
//             reattachEventListeners();
//         });
//     });
//
//     if (tabs.length > 0) {
//         tabs[0].click();
//         initializeAddRowButton();
//     }
// });






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
//                 // Add editable cells to the new row
//                 newRow.innerHTML = `
//                      <td>Auto ID</td>
//                 <td>
//                     <select class="database-select" name="newStatus">
//                         <option value="available">Available</option>
//                         <option value="unavailable">Unavailable</option>
//                     </select>
//                 </td>
//                 <td>Auto Date</td>
//                 <td>
//                     <select class="database-select" name="newAnimalType">
//                         <option value="cat">Cat</option>
//                         <option value="dog">Dog</option>
//                         <option value="bird">Bird</option>
//                         <option value="rabbits">Rabbit</option>
//                         <option value="lizard">Lizard</option>
//                         <option value="frog">Frog</option>
//                         <option value="horse">Horse</option>
//                         <option value="pig">Pig</option>
//                         <option value="goat">Goat</option>
//                         <option value="sheep">Sheep</option>
//                         <option value="cow">Cow</option>
//                         <option value="hamster">Hamster</option>
//                         <option value="turtle">Turtle</option>
//                         <option value="snake">Snake</option>
//                         <option value="guinea pig">Guinea Pig</option>
//                         <option value="ferret">Ferret</option>
//                     </select>
//                 </td>
//                 <td><input class="database-input" type="text" name="newBreed" placeholder="Enter Breed"></td>
//                 <td><input class="database-input" type="text" name="newName" placeholder="Enter Name"></td>
//                 <td><input class="database-input" type="number" name="newAge" placeholder="Enter Age"></td>
//                 <td><input class="database-input" type="text" name="newOrganizationID" placeholder="Enter Organization ID"></td>
//             `;
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
//             // Remove existing event listener if any
//             addRowButton.removeEventListener('click', addRowToTable);
//
//             // Attach the event listener only once
//             addRowButton.addEventListener('click', addRowToTable);
//         } else {
//             console.log("Add Row Button Not Found");
//         }
//     }
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
//     // Attach the listener only once when the DOM is fully loaded
//     attachAddRowListener();
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
                        <select class="database-select" name="newStatus">
                            <option value="available">Available</option>
                            <option value="unavailable">Unavailable</option>
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
                    <td><input class="database-input" type="number" name="newAge" placeholder="Enter Age"></td>
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
