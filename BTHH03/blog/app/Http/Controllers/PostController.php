<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Retrieve all the posts
        $posts = Post::orderBy('created_at', 'desc')->paginate(10);
        // Pass the posts data to the view
        return view('posts.index', ['posts' => $posts]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // Just return the view
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validate the form data
        $validated = $request->validate([
            'title' => 'required|max:255',
            'body' => 'required',
        ]);
        // Create a new post instance and save it to the database
        $post = new Post;
        $post->title = $request->title;
        $post->body = $request->body;
        $post->save();
        // Redirect the user to the index view
        return redirect('/posts');
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        // Retrieve the post by its id
        $post = Post::findOrFail($id);
        // Pass the post data to the view
        return view('posts.show', ['post' => $post]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
