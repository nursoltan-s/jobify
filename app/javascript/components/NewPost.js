import React, { useState, useEffect } from 'react';
import axios from 'axios';

function NewPost() {
  const [title, setTitle] = useState('');
  const [body, setBody] = useState('');

  useEffect(() => {}, []);

  const handleSubmit = event => {
    event.preventDefault();

    const post = {
      title: title,
      body: body
    };

    axios.post('/api/posts', post).then(response => {
      console.log(response);
      console.log(response.data);
    });
  };

  return (
    <div>
      <h1>New Post</h1>
      <form onSubmit={e => handleSubmit(e)}>
        <input
          name="title"
          placeholder="title"
          type="text"
          onChange={e => setTitle(e.target.value)}
        />
        <input
          name="body"
          placeholder="body"
          type="text"
          onChange={e => setBody(e.target.value)}
        />
        <button>Create Post</button>
      </form>
    </div>
  );
}

export default NewPost;
