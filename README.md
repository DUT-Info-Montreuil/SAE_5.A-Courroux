# Courroux

## Project Overview

Courroux is a web application developed for timetable management, initiated by the pedagogical manager of the Computer Science department at IUT de Montreuil. The aim is to revamp the existing timetable system used at the IUT, as the Java JWT timetable created in 2004 no longer aligns with the evolving needs of various users. This application is designed to be versatile and is extendable for use by other universities. Moreover, its open-source license permits users to modify it freely, and there's an option to utilize only the API and reconstruct the front-end from scratch.

## Table of Contents

- [Technologies](#technologies)
- [Contributors](#contributors)
- [Setup](#setup)
- [Credits](#credits)

## Technologies
**Frameworks:**
![Angular](https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white)
![Flask](https://img.shields.io/badge/Flask-000000?style=for-the-badge&logo=flask&logoColor=white)
![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white)

**Languages:**
![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white)
![Python](https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)

**Database:**
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)

**CICD:**
![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)
![Jenkins](https://img.shields.io/badge/Jenkins-D24939?style=for-the-badge&logo=Jenkins&logoColor=white)
![Sonarqube](https://img.shields.io/badge/Sonarqube-5190cf?style=for-the-badge&logo=sonarqube&logoColor=white)

## Setup
### Installation

### 1. Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/DUT-Info-Montreuil/SAE_5.A-Courroux.git
cd SAE_5.A-Courroux/
```

### 2. Initialize and Update Submodules

```bash
git submodule update --init --recursive
```

### 3. Change Passwords

*It is strongly advised to change the default passwords in the Docker Compose file (docker-compose.yml). Replace "root" with a secure password of your choice.*

 > 
> Open docker-compose.yml and update the MYSQL_USER, MYSQL_PASSWORD and MYSQL_ROOT_PASSWORD values under the db service.
 > 

### 4. Run the deploy.sh script
```bash
./deploy.sh
```

The deploy.sh script will traverse all directories, execute deployment scripts (if any), and then launch the services using Docker Compose.

### Important Note :warning:
Before running the deploy.sh script, ensure that you have correctly configured the .env and docker-compose.yml files as explained earlier.

### Security Notice :lock:

For security reasons, please be aware that during your future pushes to this `.git`, the `docker-compose.yml` and `.env` files will not be updated.

### Configuration

After completing the installation, you can begin creating promotions, subgroups, rooms, resources, and accounts for teachers and students. For student accounts, you can generate them using a CSV file. Subsequently, time slots can be added for students, along with various other features to facilitate administration and optimize workflow within the institution.

## Credits
The template and images used for the login page are sourced from [Figma](https://www.figma.com/community/file/1288813236193744337).

## Contributors
- **Onur Genc**
- **Cyril Grosjean**
- **Nicolas Ramirez**
- **Jonas Obrun**
- **Ismaël Argence**
