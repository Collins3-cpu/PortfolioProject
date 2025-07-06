select*from PortfolioProject..CovidDeaths$
order by 3,4

--select Data
select location,date,total_cases,new_cases,total_deaths,population
from PortfolioProject..CovidDeaths$
order by 1,2


--total deaths vs total cases

select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as DeathPercentage
from PortfolioProject..CovidDeaths$
where location ='Kenya'
order by 1,2

--looking at total cases vs population
-- what % of population got covid
select location,date,total_cases,population,(total_cases/population)*100 as InfectionPercentage
from PortfolioProject..CovidDeaths$
where location ='Kenya'
order by 1,2

-- looking at countries with highest infection rate compared to population
select location,max(total_cases)as HighestInfectionCount,population,max((total_cases/population))*100 as InfectionPercentage
from PortfolioProject..CovidDeaths$
group by location,population
order by InfectionPercentage desc

--showing countries with highest death count per population
select location,max(cast(total_deaths as int))as HighestDeathCount
from PortfolioProject..CovidDeaths$
where continent is not null
group by location
order by HighestDeathCount desc

-- Highest Deaths by Continents 
select continent,max(cast(total_deaths as int))as HighestDeathCount
from PortfolioProject..CovidDeaths$
where continent is not null
group by continent
order by HighestDeathCount desc

--GLOBAL NUMBERS
select sum(new_cases) as totalcases,sum(cast(new_deaths as int))as totaldeaths,sum(cast(new_deaths as int))/sum(new_cases)*100 as DeathPercentage
from PortfolioProject..CovidDeaths$
where continent is not null
order by 1,2

-- looking at total population vs vaccinations
with popvsvac (Continent,Location,Date,Population,New_vaccinations,RollingVaccinations)
as
(
select  dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations,
sum(cast(vac.new_vaccinations as int)) over (partition by dea.location order by dea.location,dea.date)
as RollingVaccinations--(RollingVaccinations/population)*100
from PortfolioProject..CovidDeaths$ dea
join PortfolioProject..CovidVaccinations$ vac
     on dea.location=vac.location
	 and dea.date = vac.date
where dea.continent is not null
--order by 2,3
)
select *,(RollingVaccinations/Population)*100 from popvsvac

--creating views to store data
create view deaths_vs_cases
as
select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as DeathPercentage
from PortfolioProject..CovidDeaths$
where location ='Kenya'


create view cases_vs_population
as
select location,date,total_cases,population,(total_cases/population)*100 as InfectionPercentage
from PortfolioProject..CovidDeaths$
where location ='Kenya'

create view countries_infection_rate
as
select location,max(total_cases)as HighestInfectionCount,population,max((total_cases/population))*100 as InfectionPercentage
from PortfolioProject..CovidDeaths$
group by location,population

create view countries_death_count
as
select location,max(cast(total_deaths as int))as HighestDeathCount
from PortfolioProject..CovidDeaths$
where continent is not null
group by location

create view Deaths_by_Continents 
as
select continent,max(cast(total_deaths as int))as HighestDeathCount
from PortfolioProject..CovidDeaths$
where continent is not null
group by continent



create view global_numbers
as
select sum(new_cases) as totalcases,sum(cast(new_deaths as int))as totaldeaths,sum(cast(new_deaths as int))/sum(new_cases)*100 as DeathPercentage
from PortfolioProject..CovidDeaths$
where continent is not null

select * from global_numbers