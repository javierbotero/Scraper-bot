# Scraper Bot for the website importacionesarturia.com

> This is a Bot that scrapes all the products available in the page mention above. It is the more important sellers of technology in Colombia of products for photographers, videographers and sound engineers.

1. Fork or download the project on your desktop.
2. Being inside the folder where you downloaded the project write in the terminal
```
ruby bin/main.rb
```

3. The Bot is going to ask you to write for categories to list products and prices, just write them the more accurate as the bot shows you, for example:

```
video
```

and then select a products category

```
accesorios
```

After that, you will see a list with name, price, description and, link of the products of that category.

4. The files audio_classes.rb, video_classes.rb and gps_classes.rb are files that in the beginning are empty. After code runs these files are dynamically populated with a Module with classes that are going to be used later to build the instances object of every category.

## Built With

- Ruby
- Nokogiri
- Rubocop
- RSpec

## Live Demo

[![Run on Repl.it](https://repl.it/badge/github/javierbotero/Scraper-bot)](https://repl.it/github/javierbotero/Scraper-bot)

## Author

👤 **Javier Botero**

- Github: [@javierbotero](/github.com/javierbotero)
- Twitter: [@javierbotero1](https://twitter.com/Javierboterodev)
- Linkedin: [Javier Botero](https://www.linkedin.com/in/javierboterodev/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- I wanted a scraper to give updated info on this webpage due to I have bought products there, recommended to those living in Colombia.

## 📝 License

This project is [MIT](lic.url) licensed.
