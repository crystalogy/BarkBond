const client = new petfinder.Client({ apiKey: "LEmhixqFGUmzZoblm6WbbqACPU1TOrNYAzCO2hHudBjFBIhjw7", secret: "o3rFIpJWvP6hKNQjkMGUZuLOhjQuCGkF5Fp2ObDc" });

async function showAnimals(animalType, searchBreed) {
    let page = 1;
    do {
        apiResult = await client.animal.search({
            type: animalType,
            breed: searchBreed,
            page,
            limit: 100,
        });
        let dogIdx = (page - 1) * 100;
        apiResult.data.animals.forEach(function(animal) {
            console.log(` -- ${++dogIdx}: ${animal.name} id: ${animal.id} url: ${animal.url}`);
        });

        page++;
    } while(apiResult.data.pagination && apiResult.data.pagination.total_pages >= page);
}

(async function() {
    await showAnimals("Dog", "Bernedoodle");
})();