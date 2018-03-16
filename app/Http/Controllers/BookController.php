<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Book;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Str;
use Auth;

class BookController extends Controller
{
    /**
     * Show book list.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books = Book::orderBy('updated_at', 'desc')->paginate(2);
        $count = Book::count();

        return view('list', ['books' => $books, 'count' => $count]);
    }

    /**
     * Show the form for adding a new book.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        return view('add_book');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'author' => 'required|string|max:100',
            'name' => 'required|string|max:100',
            'count' => 'required|numeric',
            'description' => 'required|string',
        ]);

        $img = $validatedData['author'].' '.$validatedData['name'];
        $img = Str::slug($img);
        $extension = Input::file('photo')->getClientOriginalExtension();
        $img = $img.'.'.$extension;
        Input::file('photo')->move('images/books', $img);
        $photo = 'images/books/'.$img;

        $book = new Book();
        $book->author = $validatedData['author'];
        $book->name = $validatedData['name'];
        $book->number_of_pages = $validatedData['count'];
        $book->description = $validatedData['description'];
        $book->image = $photo;
        $book->owner_id = Auth::id();
        $book->save();

        return redirect()->route('add_book_form')->with('message', 'Форму успішно відправлено!');
    }
}
