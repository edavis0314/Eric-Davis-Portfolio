/*create database CharacterManager;*/
use CharacterManager;

/*Create Table Players(Username varchar (36) NOT NULL, Password varchar (36) NOT NULL, PlayerID int NOT NULL, Primary Key(PlayerID));
Create Table PlayerName(PlayerID int NOT NULL, PlayerName text NOT NULL, foreign key(PlayerID) references Players(PlayerID));
Create Table Characters(PlayerID int NOT NULL, CharacterID int NOT NULL, primary key(CharacterID), foreign key(PlayerID) references Players(PlayerID));
Create Table Money (CharacterID int NOT NULL, Copper int NOT NULL, Silver int NOT NULL, Elirium int NOT NULL, Gold int NOT NULL, Platnium int NOT NULL, foreign key(CharacterID) references Characters(CharacterID));
Create Table EffectTable(EffectID int not null, Effect text, primary key(EffectID));
Create Table MagicItem(MagicItemID int not null, EffectID int not null, Slots int not null, primary key(MagicItemID), foreign key(EffectID) references EffectTable(EffectID));
Create Table SkillProf(SkillProfID int NOT NULL, Name text NOT NULL, Type text NOT NULL, primary key(SkillProfID));
Create Table LangAndProf(LangAndProfID int NOT NULL, Name text NOT NULL, Type text NOT NULL, NOTES text NOT NULL, primary key(LangAndProfID));
Create Table Ally(AllyID int NOT NULL, CharacterID int NOT NULL, NOTES text NOT NULL, primary key(AllyID), foreign key(CharacterID) references Characters(CharacterID));
Create Table Equipment(EquipmentID int not null, Name text not null, Cost varchar (20) not null, Weight int not null, MagicItemID int not null, NOTES text not null, primary key(EquipmentID), foreign key(MagicItemID) references MagicItem(MagicItemID));
Create Table Mount(MountID int not null, Name text not null, Cost varchar (20) not null, Speed int not null, MagicItemID int not null, CarryCapacity int not null, NOTES text not null, primary key(MountID), foreign key(MagicItemID) references MagicItem(MagicItemID));
Create Table Feat(FeatID int not null, Name text not null, MagicItemID int not null, Requirements text not null, NOTES text not null, primary key(FeatID), foreign key(MagicItemID) references MagicItem(MagicItemID));
Create table Magic(MagicID int not null, Name text not null, Type varchar (30) not null, MagicItemID int not null, Level int not null, CastingTime varchar (50) not null, RangeOfSpell varchar (50) not null, Components text not null, Duration varchar (50) not null, NOTES text not null, primary key(MagicID), foreign key(MagicItemID) references MagicItem(MagicItemID));
Create table Weapon(WeaponID int not null, Name text not null, Cost varchar (20) not null, MagicItemID int not null, Type varchar (30) not null, DamType varchar (50) not null, RangeOfWeapon varchar (50) not null, DamDie text not null, Weight int not null, NOTES text not null, primary key(WeaponID), foreign key(MagicItemID) references MagicItem(MagicItemID));
Create table Armor(ArmorID int not null, Name text not null, Cost varchar (20) not null, Stats text not null, MagicItemID int not null, StrRequirement int not null, Stealth bit not null, Type varchar (50) not null, Weight int not null, NOTES text not null, primary key(ArmorID), foreign key(MagicItemID) references MagicItem(MagicItemID));
Create Table CharacterRecord(CharacterID int NOT NULL, CharacterName text NOT NULL, CharacterLevel int NOT NULL, CharacterExperience int NOT NULL, Class varchar (20) NOT NULL, Spec varchar (50), Background text NOT NULL, Alignment varchar(20) NOT NULL, Strength int NOT NULL, Dexterity int NOT NULL, Constitution int NOT NULL, Inteligence int NOT NULL, Wisdom int NOT NULL, Charisma int NOT NULL, Speed int NOT NULL, MaxHP int NOT NULL, CurrentHP int NOT NULL, TempHP int NOT NULL, ArmorClass int NOT NULL, DeathSaveSuccess int NOT NULL, DeathSaveFail int NOT NULL, SpellSave int NOT NULL, SpellAttack int NOT NULL, SpellCastingAbility varchar (500) NOT NULL, Age int NOT NULL, Height int NOT NULL, Weight int NOT NULL, Inspiration int NOT NULL, PersonalityTraits text NOT NULL, Ideals text NOT NULL, Bonds text NOT NULL, Flaws text NOT NULL, Race varchar (200) NOT NULL, CustomBackstory text NOT NULL, EyeColor varchar (100) NOT NULL, HairColor varchar (100) NOT NULL, SkinColor varchar (100) NOT NULL, Acrobatics int NOT NULL, AnimalHandling int NOT NULL, Arcana int NOT NULL, Athletics int NOT NULL, Deception int NOT NULL, History int NOT NULL, Insight int NOT NULL, Intimidation int NOT NULL, Investigation int NOT NULL, Medicine int NOT NULL, Nature int NOT NULL, Perception int NOT NULL, Performance int NOT NULL, Persuasion int NOT NULL, Religion int NOT NULL, SlightofHand int NOT NULL, Stealth int NOT NULL, Survival int NOT NULL, foreign key(CharacterID) references Characters(CharacterID));
Create Table SkillProfRecord(CharacterID int NOT NULL, SkillProfID int NOT NULL, foreign key(CharacterID) references Characters(CharacterID), foreign key(SkillProfID) references SkillProf(SkillProfID));
Create table LangAndProfRecord(CharacterID int NOT NULL, LangAndProfID int NOT NULL, foreign key(CharacterID) references Characters(CharacterID), foreign key(LangAndProfID) references LangAndProf(LangAndProfID));
Create table EquipmentRecord(CharacterID int NOT NULL, Amount int not null, EquipmentID int NOT NULL, foreign key(CharacterID) references Characters(CharacterID), foreign key(EquipmentID) references Equipment(EquipmentID));
Create table MountRecord(CharacterID int NOT NULL, Amount int not null, MountID int NOT NULL, foreign key(CharacterID) references Characters(CharacterID), foreign key(MountID) references Mount(MountID));
Create table ArmorRecord(CharacterID int NOT NULL, Amount int not null, ArmorID int NOT NULL, foreign key(CharacterID) references Characters(CharacterID), foreign key(ArmorID) references Armor(ArmorID)); 
Create table WeaponRecord(CharacterID int NOT NULL, Amount int not null, WeaponID int NOT NULL, foreign key(CharacterID) references Characters(CharacterID), foreign key(WeaponID) references Weapon(WeaponID));
Create table AllyRecord(CharacterID int NOT NULL, AllyID int NOT NULL, foreign key(CharacterID) references Characters(CharacterID), foreign key(AllyID) references Ally(AllyID));
Create table FeatRecord(CharacterID int NOT NULL, FeatID int NOT NULL, foreign key(CharacterID) references Characters(CharacterID), foreign key(FeatID) references Feat(FeatID));
Create table MagicRecord(CharacterID int NOT NULL, MagicID int NOT NULL, foreign key(CharacterID) references Characters(CharacterID), foreign key(MagicID) references Magic(MagicID));
Create Table MonsterRecord(MonsterID int NOT NULL, MonsterName text NOT NULL, Class varchar (20) NOT NULL, Spec varchar (50), Alignment varchar(20) NOT NULL, Strength int NOT NULL, Dexterity int NOT NULL, Constitution int NOT NULL, Inteligence int NOT NULL, Wisdom int NOT NULL, Charisma int NOT NULL, Speed int NOT NULL, MaxHP int NOT NULL, CurrentHP int NOT NULL, TempHP int NOT NULL, ArmorClass int NOT NULL, SpellSave int NOT NULL, SpellAttack int NOT NULL, SpellCastingAbility text NOT NULL, Race text NOT NULL, CustomBackstory text NOT NULL, Acrobatics int NOT NULL, AnimalHandling int NOT NULL, Arcana int NOT NULL, Athletics int NOT NULL, Deception int NOT NULL, History int NOT NULL, Insight int NOT NULL, Intimidation int NOT NULL, Investigation int NOT NULL, Medicine int NOT NULL,Nature int NOT NULL, Perception int NOT NULL, Performance int NOT NULL, Persuasion int NOT NULL, Religion int NOT NULL, SlightofHand int NOT NULL, Stealth int NOT NULL, Survival int NOT NULL, Primary Key (MonsterID));
Create Table SkillProfRecord_Monster(MonsterID int NOT NULL, SkillProfID int NOT NULL, foreign key(MonsterID) references MonsterRecord(MonsterID), foreign key(SkillProfID) references SkillProf(SkillProfID));
Create table LangAndProfRecord_Monster(MonsterID int NOT NULL, LangAndProfID int NOT NULL, foreign key(MonsterID) references MonsterRecord(MonsterID), foreign key(LangAndProfID) references LangAndProf(LangAndProfID));
Create table EquipmentRecord_Monster(MonsterID int NOT NULL, Amount int not null, EquipmentID int NOT NULL, foreign key(MonsterID) references MonsterRecord(MonsterID), foreign key(EquipmentID) references Equipment(EquipmentID));
Create table MountRecord_Monster(MonsterID int NOT NULL, Amount int not null, MountID int NOT NULL, foreign key(MonsterID) references MonsterRecord(MonsterID), foreign key(MountID) references Mount(MountID));
Create table ArmorRecord_Monster(MonsterID int NOT NULL, Amount int not null, ArmorID int NOT NULL, foreign key(MonsterID) references MonsterRecord(MonsterID), foreign key(ArmorID) references Armor(ArmorID)); 
Create table WeaponRecord_Monster(MonsterID int NOT NULL, Amount int not null, WeaponID int NOT NULL, foreign key(MonsterID) references MonsterRecord(MonsterID), foreign key(WeaponID) references Weapon(WeaponID));
Create table AllyRecord_Monster(MonsterID int NOT NULL, AllyID int NOT NULL, foreign key(MonsterID) references MonsterRecord(MonsterID), foreign key(AllyID) references Ally(AllyID));
Create table FeatRecord_Monster(MonsterID int NOT NULL, FeatID int NOT NULL, foreign key(MonsterID) references MonsterRecord(MonsterID), foreign key(FeatID) references Feat(FeatID));
Create table MagicRecord_Monster(MonsterID int NOT NULL, MagicID int NOT NULL, foreign key(MonsterID) references MonsterRecord(MonsterID), foreign key(MagicID) references Magic(MagicID));
*/

Select * From Players;
Select * From PlayerName;
Select * From Characters;
Select * From Money;
Select * From EffectTable;
Select * From MagicItem;
Select * From SkillProf;
Select * From LangAndProf;
Select * From Ally;
Select * From Equipment;
Select * From Mount;
Select * From Feat;
Select * From Magic;
Select * From Weapon;
Select * From Armor;
Select * From CharacterRecord;
Select * From SkillProfRecord;
Select * From LangAndProfRecord;
Select * From EquipmentRecord;
Select * From MountRecord;
Select * From ArmorRecord;
Select * From WeaponRecord;
Select * From AllyRecord;
Select * From FeatRecord;
Select * From MagicRecord;
Select * From MonsterRecord;
Select * From SkillProfRecord_Monster;
Select * From LangAndProfRecord_Monster;
Select * From EquipmentRecord_Monster;
Select * From MountRecord_Monster;
Select * From ArmorRecord_Monster;
Select * From WeaponRecord_Monster;
Select * From AllyRecord_Monster;
Select * From FeatRecord_Monster;
Select * From MagicRecord_Monster;