function checkInput() {
    var input = document.getElementById('search-input');
    var icon = document.getElementById('icon');
    
    if (input.value.trim() === '') {
        icon.classList.add('disabled');
    }
    else {

        icon.classList.remove('disabled');
    }
}


document.getElementById('search-input').addEventListener('input', function() {
    var query = this.value;
    var suggestionsList = document.getElementById('suggestions-list');
    suggestionsList.innerHTML = '';

    checkInput();

    if (query.length > 0) {
        fetch('CODIGO.php?q=' + query)
        .then(response => response.json())
        .then(data => {
            data.forEach(suggestion => {
                var li = document.createElement('li');
                li.textContent = suggestion.word;
                li.addEventListener('click', function() {
                    document.getElementById('search-input').value = this.textContent;
                });
                suggestionsList.appendChild(li);
            });
        });
    }
});

document.getElementById('icon').addEventListener('click', function() {
    var query = document.getElementById('search-input').value;
    if (query.trim() !== '') {
        window.open('https://www.google.com/search?q=' + encodeURIComponent(query), '_blank');
    }
});

checkInput();
