@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Список книг</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success">
                                {{ session('status') }}
                            </div>
                        @endif
                        <a href="{{ route('add_book_form') }}" class="btn btn-primary">Додати книгу</a>
                        <p class="pull-right">Всього книг: <span class="badge">{{$count}}</span></p>
                            @foreach($books as $book)
                                <div class="row">
                                    <div class="col-md-3 col-lg-3">
                                    <img src='{{ asset($book->image) }}' alt='{{ $book->name }}' class="img-responsive img-rounded" style="width:100%">
                                    </div>
                                    <div class='col-md-9 col-lg-9'>
                                        <p><b>Назва: </b>{{ $book->name }}</p>
                                        <p><b>Автор: </b>{{ $book->author }}</p>
                                        <p><b>Кількість сторінок: </b>{{ $book->number_of_pages }}</p>
                                        <p><b>Опис: </b>{{ $book->description }}</p>
                                    </div>
                                </div>
                                <br>
                            @endforeach
                        {{ $books->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
