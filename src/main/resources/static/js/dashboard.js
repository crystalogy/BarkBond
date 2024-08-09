function initializeAddRowButton() {
    const addRowButton = document.getElementById('addRowButton');
    const tableBody = document.querySelector('#example tbody');

    if (addRowButton && tableBody) {
        addRowButton.addEventListener('click', function() {
            const newRow = document.createElement('tr');

            newRow.innerHTML = `
                <td>New ID</td>
                <td><span class="status-green">Available</span></td>
                <td>New Date</td>
                <td>New Animal Type</td>
                <td>New Breed</td>
                <td>New Name</td>
                <td>New Age</td>
                <td>New Organization ID</td>
            `;

            tableBody.appendChild(newRow);
        });
    } else {
        console.error('Add Row button or table body not found.');
    }
}

document.addEventListener('DOMContentLoaded', function() {
    initializeAddRowButton();
});