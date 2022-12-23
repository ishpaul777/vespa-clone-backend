<a name="readme-top"></a>


<div align="center">

  ![](https://img.shields.io/badge/Microverse-blueviolet)
  <br/>

</div>

# 📖 [Vespa-App] <a name="about-project"></a>

**[Vespa-App]** is a BackEnd project to booking an appointment to try a motorcycleis

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://guides.rubyonrails.org/index.html">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **[API endpoint to User Signup]**
- **[API endpoint to User Signin]**
- **[API endpoint to Add Products]**
- **[API endpoint to Get All Products]**
- **[API endpoint to Delete Products]**
- **[API endpoint to Resserve Products]**
- **[API endpoint to Delete Reservations]**


## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites
- Postgresql
- Rails

In order to run this project you need:

### Clone this repository
git clone https://github.com/ishpaul777/vespa-clone-backend

### Run project
- cd hello-rails-back-end
- run **bundle install**
- in config diretory delete **credentals.yml.enc** file 
- run **rake secret** and copy and save the key generated
- run **EDITOR="code --wait" rails credentials:edit**
- run **EDITOR="nano" rails credentials:edit** and add the saved generated key. As shown in the image below, do not change the value of the **secret_key_base variable**, add the **devise variable** and the **jwt_secret_key variable**, after the **jwt_secret_key variable** give two spaces and add the key generated and saved in the previous step:
![nano](https://user-images.githubusercontent.com/21173712/208387017-b2141852-210b-475a-bb45-6e9a076f8013.png)
- Open the file **config\database.yml**
- Modify the connection parameters to point your Postgres Database: username: [your_user] password: [your_password]
- run **rake db:create**
- run **rake db:migrate**
- run **rails server**
- Visit [localhost:3000](http://localhost:3000) in your browser!


### Run Tests
- run **rspec**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🛠 Link to Front-end <a name="built-with"></a>
[Front-end](https://github.com/ishpaul777/vespa-clone-frontend)


## Kanban board
- [Kanban board](https://github.com/users/ishpaul777/projects/6/views/1)
- [Screenshot of the initial state of your Kanban board](https://github.com/ishpaul777/vespa-clone-frontend/issues/16) 
- ***Final number of team members - 2***


## 👥 Authors <a name="authors"></a>

👤 **Custodio Serafim**

- GitHub: [@looh16](https://github.com/looh16)
- Twitter: [@looh16](https://twitter.com/custodiolanga1)
- LinkedIn: [@looh16](https://www.linkedin.com/in/custodio-serafim) 


👤 **Ishpaul Singh**

- Github - [@ishpaul777](https://github.com/ishpaul777)
- Twitter - [@ishpaul777](https://twitter.com/ishpaul777)
- Linkedin - [Ishpaul Singh](https://www.linkedin.com/in/ishpaul777/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing

Contributions, [Issues](https://github.com/ishpaul777/vespa-clone-backend/issues), and feature requests are welcome!

Feel free to check the issues page.

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
- I would like to thank to [Microverse](https://www.microverse.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License

This project is [MIT](https://github.com/ishpaul777/vespa-clone-backend/blob/development/License) licensed.

