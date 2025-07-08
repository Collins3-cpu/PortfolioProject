 -- Cleaning Data in SQL
 select* from
 PortfolioProject.dbo.[National Housing]

-- Change Sale Date
select SaleDate,convert(date,SaleDate)
from
 PortfolioProject.dbo.[National Housing]

alter table [National Housing]
add ConvertedDate Date;


update [National Housing]
set ConvertedDate=convert(date,SaleDate)

select ConvertedDate from
PortfolioProject.dbo.[National Housing]

-- populate property address data
select a.ParcelID,a.PropertyAddress,b.ParcelID,b.PropertyAddress,isnull(a.PropertyAddress,b.PropertyAddress)
from
PortfolioProject.dbo.[National Housing] a
join PortfolioProject.dbo.[National Housing] b
     on a.ParcelID=b.ParcelID
	 AND a.[UniqueID ]<>b.[UniqueID ]
where a.PropertyAddress is null

update a
set PropertyAddress=isnull(a.PropertyAddress,b.PropertyAddress)
from PortfolioProject.dbo.[National Housing] a
join PortfolioProject.dbo.[National Housing] b
     on a.ParcelID=b.ParcelID
	 AND a.[UniqueID ]<>b.[UniqueID ]
where a.PropertyAddress is null

-- confirm nulls replaced
select PropertyAddress
from PortfolioProject.dbo.[National Housing]
where PropertyAddress is null

-- Breaking out address into individualcolumns Adress, city,state
select PropertyAddress
from PortfolioProject.dbo.[National Housing]

select substring(PropertyAddress,1,CHARINDEX(',',PropertyAddress)-1) as Address,
substring(PropertyAddress,CHARINDEX(',',PropertyAddress)+1,LEN(PropertyAddress)) as Address
from PortfolioProject.dbo.[National Housing]

Alter Table [National Housing]
add PropertySplitAddress varchar(100)

Alter Table [National Housing]
add PropertySplitCity  varchar(100)

Update [National Housing]
set  PropertySplitAddress=substring(PropertyAddress,1,CHARINDEX(',',PropertyAddress)-1) 

Update [National Housing]
set  PropertySplitCity=substring(PropertyAddress,CHARINDEX(',',PropertyAddress)+1,LEN(PropertyAddress))

select* from  [National Housing]

-- using parsename with owneraddress
select PARSENAME(replace(OwnerAddress,',','.'),3),
 PARSENAME(replace(OwnerAddress,',','.'),2),
  PARSENAME(replace(OwnerAddress,',','.'),1)
from [National Housing]

Alter Table [National Housing]
add ownerSplitAddress varchar(100)

Alter Table [National Housing]
add ownerSplitCity  varchar(100)

Alter Table [National Housing]
add ownerSplitState  varchar(20)

Update [National Housing]
set  ownerSplitAddress=PARSENAME(replace(OwnerAddress,',','.'),3)

Update [National Housing]
set ownerSplitCity =PARSENAME(replace(OwnerAddress,',','.'),2)

Update [National Housing]
set  ownerSplitState=PARSENAME(replace(OwnerAddress,',','.'),1)

-- Change Y and N to Yes and No in 'sold as vacant'column
select distinct SoldAsVacant
from PortfolioProject.dbo.[National Housing]

select  SoldAsVacant,
case when SoldAsVacant='Y' then 'Yes'
     when SoldAsVacant='N' then 'No'
	 else  SoldAsVacant
	 end
from PortfolioProject.dbo.[National Housing]

update PortfolioProject.dbo.[National Housing]
set SoldAsVacant= case when SoldAsVacant='Y' then 'Yes'
     when SoldAsVacant='N' then 'No'
	 else  SoldAsVacant
	 end

-- Remove Duplicates
with RowNumCTE as (
select*,
    ROW_NUMBER()over(
	partition by ParcelID,
	             PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 order by
				      UniqueID
					  ) row_num
from PortfolioProject.dbo.[National Housing]
--order by ParcelID
)
Delete
from RowNumCTE
where row_num>1

--Delete Unused columns
select*
from PortfolioProject.dbo.[National Housing]

Alter Table PortfolioProject.dbo.[National Housing]
drop column OwnerAddress,PropertyAddress,SaleDate,TaxDistrict