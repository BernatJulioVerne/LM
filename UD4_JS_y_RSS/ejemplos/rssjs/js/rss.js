fetch('rss.xml')
    .then(response => response.text())
    .then(str => (new window.DOMParser()).parseFromString(str, "text/xml"))
    .then(data =>  {
       // console.log("data:",data)
        var rss = data.querySelector('rss');
            // en data tengo el contenido del xml SIEMPRE que el RSS esté en mi mismo servidor.
            // Para eso, usaremos el live server de Visual Studio Code.
            // Intenta ver lo que llega en data y rss.


            var items= rss.querySelectorAll("item");
           // console.log("items:" + items[0].innerHTML)
            var html = ""
            for (var i = 0 ; i< items.length;i++)
            {
                var titulo = items[i].querySelector("title")
                console.log(titulo.innerHTML);
                html =html+ "<h2>" + titulo.innerHTML + "</h2>";

            }


            var contenido = document.querySelector("#contenido")
            contenido.innerHTML=html;
    });
