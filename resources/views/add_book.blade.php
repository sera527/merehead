@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">

                @if(Session::has('message'))
                    <p class="alert alert-success">{!! Session::get('message') !!}</p>
                @endif

                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <div class="card">
                    <div class="card-header">Додати книгу</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success">
                                {{ session('status') }}
                            </div>
                        @endif

                            <form enctype="multipart/form-data" method="post" action="{{ route('add_book') }}">
                                {{ csrf_field() }}
                                <div class="form-group">
                                    <label for="author">Автор</label>
                                    <input type="text" class="form-control" required id="author"
                                           name="author">
                                </div>
                                <div class="form-group">
                                    <label for="name">Назва</label>
                                    <input type="text" class="form-control" required id="name"
                                           name="name">
                                </div>
                                <div class="form-group">
                                    <label for="count">Кількість сторінок</label>
                                    <input type="number" class="form-control" required id="count"
                                           name="count">
                                </div>
                                <div class="form-group">
                                    <label for="description">Короткий опис</label>
                                    <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="photo">Фото обкладинки</label>
                                    <input type="file" id="inputFile" name="photo" accept="image/*">
                                </div>
                                <button type="submit" class="btn btn-primary float-right">Відправити</button>
                            </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection