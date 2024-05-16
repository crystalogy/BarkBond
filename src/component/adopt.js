// JS Code to detect header and footer size to try and fix sidebar issue
// This did not resolve the sidebar issue

// window.addEventListener('load', function() {
//     let header = document.querySelector('header');
//     let footer = document.querySelector('footer');
//     let sidebar = document.querySelector('.petSearchSideBar');
//
//     // Calculate the height of the sidebar
//     let sidebarHeight = window.innerHeight - header.offsetHeight - footer.offsetHeight;
//
//     // Set the height of the sidebar
//     sidebar.style.height = sidebarHeight + 'px';
// });
//
// window.addEventListener('resize', function() {
//     let header = document.querySelector('header');
//     let footer = document.querySelector('footer');
//     let sidebar = document.querySelector('.petSearchSideBar');
//
//     // Recalculate and update the height of the sidebar when the window is resized
//     let sidebarHeight = window.innerHeight - header.offsetHeight - footer.offsetHeight;
//     sidebar.style.height = sidebarHeight + 'px';
// });
