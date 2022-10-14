<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

    {{-- ajax cdn --}}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    {{-- ajax cdn --}}

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


    {{-- bootstrap 5 cdn --}}
    {{-- font awesome cdn --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    {{-- font awesome cdn --}}
    {{-- custom css --}}




</head>

<body>
    <nav class="navbar navbar-expand-sm navbar-light bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Movie Search</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarID"
                aria-controls="navbarID" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarID">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>

                </div>
            </div>
        </div>
    </nav>

    <div class="container">

        <div class="mb-5 mt-3">
            <form action="#">

                <div class="input-group mb-3">
                    <input type="text" class="form-control " aria-describedby="button-addon2" name='search'
                        placeholder="Search" />
                    <button class="btn btn-outline-warning " type="submit" id="button-addon2">Search</button>

                </div>

            </form>
        </div>
        <div class="img-container">

        </div>
    </div>

    <script>


        fetch('data.json')
            .then(response => response.json())
            .then(data => {
                console.log(data);
                card = document.querySelector('.img-container');
                data.forEach(element => {
                    card.innerHTML += `
                    <div class="card mb-3">
                        <div class="row justify-content-center">
                            <div class="col-md-3">
                                <img src="${element.Movie_Poster}" class="img-fluid" alt="...">
                            </div>
                            
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title text-warning">${element.Title}</h5>
                                    <p class="card-text">Year: ${element.Year}</p>
                                    <p class="card-text">IMDBID Rating: ${url(element.IMDBID)}</p>
                                    <p class="card-text">Rating: ${element.Rating}</p>
                                    <p class="card-text"><small class="text-muted">Runtime: ${element.Runtime}</small></p>
                                    <p class="card-text"><small class="text-muted">Genres: ${element.Genres}</small></p>
                                    <p class="card-text"><small class="text-muted"> Director: ${element.Director} </small></p>
                                    <p class="card-text"><small class="text-muted">Writers: ${element.Writers}</small></p>
                                    <p class="card-text"><small class="text-muted">Cast: ${element.Cast}</small></p>
                                    <p class="card-text"><small class="text-muted">Short Summary: ${element.Short_Summary}</small></p>
                                    <p class="card-text">Summary: ${element.Summary}</p>
                                    <p class="card-text"><small class="text-muted">YouTube Trailer: ${youtube_url(element.YouTube_Trailer)}</small></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    `
                });



            })
            .catch(err => console.log(err))


        // ajax for Year search from movies table from database

        $(document).ready(function () {
            $('form').submit(function (e) {
                e.preventDefault();
                var search = $('input[name="search"]').val();
                $.ajax({
                    url: "{{ route('search') }}",
                    type: "GET",
                    data: {
                        search: search
                    },
                    success: function (data) {
                        console.log(data);
                        card = document.querySelector('.img-container');
                        card.innerHTML = '';
                        data.forEach(element => {
                            card.innerHTML += `
                            <div class="card mb-3">
                                <div class="row justify-content-center">
                                    <div class="col-md-3">
                                        <img src="${element.Movie_Poster}" class="img-fluid" alt="...">
                                    </div>
                                    
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title text-warning">${element.Title}</h5>
                                            <p class="card-text">Year: ${element.Year}</p>
                                            <p class="card-text">IMDBID Rating: ${url(element.IMDBID)}</p>
                                            <p class="card-text">Rating: ${element.Rating}</p>
                                            <p class="card-text"><small class="text-muted">Runtime: ${element.Runtime}</small></p>
                                            <p class="card-text"><small class="text-muted">Genres: ${element.Genres}</small></p>
                                            <p class="card-text"><small class="text-muted"> Director: ${element.Director} </small></p>
                                            <p class="card-text"><small class="text-muted">Writers: ${element.Writers}</small></p>
                                            <p class="card-text"><small class="text-muted">Cast: ${element.Cast}</small></p>
                                            <p class="card-text"><small class="text-muted">Short Summary: ${element.Short_Summary}</small></p>
                                            <p class="card-text">Summary: ${element.Summary}</p>
                                            <p class="card-text"><small class="text-muted">YouTube Trailer: ${youtube_url(element.YouTube_Trailer)}</small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            `
                        });
                    }
                });
            });
        });

        


       
        // function for url
        function youtube_url(youtube_url) {
            if (youtube_url == null) {
                return 'Not Available';
            } else {
                return `<a href="https://www.youtube.com/watch?v=${youtube_url}" target="_blank"><i class="fa fa-youtube-play" style="font-size:24px"></i></a>`;
            }
        }

        // function for url
        function url(url) {
            if (url == null) {
                return 'Not Available';
            } else {
                return `<a href="https://www.imdb.com/title/${url}" target="_blank"><i class="fa fa-imdb" style="font-size:24px"></i></a>`;
            }
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous">
    </script>
</body>

</html>
