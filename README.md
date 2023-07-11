<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Budget-app ](#-practice-test-driven-developmenttdd-)
  - [🛠 Built With ](#-built-with-)
  - [🛠 Tech Stack ](#-tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
  - [👥 Authors](#-authors)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Spend Rite <a name="about-project"></a>

Introducing Spendrite, the ultimate mobile web application designed to revolutionize your budget management. With Spendrite, you can effortlessly take control of your finances and track your spending habits in a user-friendly and intuitive manner. Here's a description of the key features and functionalities. 
[]-Transaction Tracking:  
[]-Budget Planning: 
[]-Real-time Expense Monitoring: 
[]-Category Analysis: 

## Render Deploy 🚀

> [Live demo](https://jh-f1k0.onrender.com/)

## Video demo

> [Video demo](https://www.loom.com/share/2cbe7cf26a7f4ec1b69066a123c2644c)

## 🛠 Built With <a name="built-with"></a>

> <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
> <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
> <li><a href="https://www.postgresql.org/">Postgresql</a></li>

### Key Features <a name="key-features"></a>

> - Add Categories.
> - List delete categories.
> - Add transaction.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

## UML Diagram :

<img src = 'erd_diagram.png'>

## To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Mac or PC
- Install Ruby
- Install Rails
- Install Postgresql
- Understanding of Ruby

### Setup

- Clone this repository to your desired folder:

```sh
 git clone git@github.com:uchexm/Spendrit.git
```

- Navigate into the cloned folder

```sh
 cd Budget-app

```

- Install this project with:

```sh
 bundle install
```

- Set up the database
  Change the username and password of your postgres account in `config/database.yml`

```sh
 rails db:create db:migrate
```

- Start the server

```sh
 rails s
```

- Run tests

```sh
 rails db:migrate RAILS_ENV=test
```

```sh
 rspec spec
```

- if it shows error try using this command

```sh
 bundle exec rspec spec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors<a name="authors"></a>

👤 **Uchechi Nwaka**

- GitHub: [@uchexm](https://github.com/uchexm)
- LinkedIn: [@nwakauc](https://www.linkedin.com/in/nwakauc/)
- Twiter [@nwakauc](https://twitter.com/Nwakauc)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/uchexm/Spendrit/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, please leave a ⭐️

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- I would like to thank Microverse for providing us with reading materials that aided us to during the project development
- Credit to the original designer by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENCE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
