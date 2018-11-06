(() => {
    const box = document.querySelectorAll('.data-box');

    function fetchData(id, detail, percentage) {
        fetch(`./includes/info.php?boxid=${id}`)
            .then(res => res.json())
            .then(data => {
                detail.textContent = data[0].detail;
                detail.classList.add('show');
                percentage.textContent = data[0].percentage;
                percentage.classList.add('show');
            })
            .catch(function(error) {
                console.error(error);
            });
    }

    function fetchUsage() {
        fetch(`./includes/usage.php`)
            .then(res => res.json())
            .then(data => {
                let usageWrap = document.querySelector('.usage');
                for (let i = 0; i < data.length; i++){
                    let yr = data[i].yr,
                        usg = data[i].usg;
                    usageWrap.appendChild(createBars(yr, usg));
                }
            })
            .catch(function(error) {
                console.error(error);
            });
    }

    function createBars(yr, usg) {
        let el = document.createElement('div');
        el.classList.add('data-bar');
        el.innerHTML = yr + '<span class="bar"></span>' + usg;
        el.querySelector('.bar').style.height = usg * 10 + 'px';
        return el;
    }


    for (let i=0; i<box.length; i++){
        box[i].addEventListener('click', function () {
            let detail = this.querySelector('.data-detail'),
                title = this.querySelector('.data-title'),
                per = this.querySelector('.percentage');
            title.classList.add('show');
            fetchData(this.id, detail, per);
        });
    }
    window.addEventListener('load', fetchUsage);

})();