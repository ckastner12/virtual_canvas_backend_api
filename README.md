# Virtual-Canvas-Backend-API

Flatiron School Module 5 Project Backend by [Christian Kastner](https://github.com/ckastner12)

The backend for virtual canvas built with Ruby on Rails. Uses ActionCable for websocketing to enable canvas connections with multiple clients. This persists all the animation objects and connects them with their respective canvases and users. Creates user, canvas, bookmarked canvas, and animation end points.

## Installation

Run 'bundle install' to install required gems. The additional gem 'pg' for the PostgreSQL was used as well as uncommenting 'rack-cors' from the given gem suite in Rails.

```bash
bundle install
```

Run 'rails db:migrate' in the root directory to create the database locally. Feel free to run 'rails db:seed to get some starter poems'

```bash
rails db:migrate
rails db:seed
```

Don't forget to start up your rails server with 'rails s'

```bash
rails s -p 3000
```

The number trailing the server start call is very important as frontend fetch calls are set to this routing address

Enjoy hanging out and planning your next adventure

## Contributing

Contributions are welcome. Feel free to open a pull request or branch from this project. Make it your own!

## License

[MIT](https://choosealicense.com/licenses/mit/)
