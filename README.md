# Module - [EVENT] [Love is in the air] [Level 60]

[English](README.md) | [Français](README_FR.md)

### Description

*Set event "love is in the air" for level 60*

### How to implement module?

###### Get project

Clone project within modules folder under then name `${MODULE_NAME}`.

###### Update server source code

From now on, I'll consider we're currently in root of your warcraft server project.\
Apply git patch by typing following command :
>git apply --ignore-space-change --ignore-whitespace modules/${MODULE_NAME}/.patch

Or modify directly `src/` with you favorite editor\
and apply modification seen in `modules/${MODULE_NAME}/.patch`.

###### Modify Data Base

Apply request seen in sql files under `modules/${MODULE_NAME}/sql/` folder\
for each respective table.\
(`world` <=> `acore_world` / `auth` <=> `acore_auth` / `char` <=> `acore_char`)

Here one command I use often to implement directly multiple sql files: 
>for sql in $(find modules/*${MODULE_NAME}*/sql/*TABLE*/ -type f -name '*.sql'); do mysql -u*USERDB* -h*HOSTDB* -D*acore_TABLE* -p < ${sql}; done

###### Add DBC files

Get DBC subfolders found in `modules/${MODULE_NAME}/data/`\
Put them in your data folder (as seen in worldserver.conf).

Add them also in the client directory under data folder.


>For this module we add item in DBC, here the id reserved:\
> ```60000```

###### Recompile and that all.

### Licensing

MIT license.

### Credits

* [Jackhein](https://github.com/Jackhein) (author of this module)
* [Miorey](https://github.com/Miorey/)

Our server [MurlocVillage](https://wotlk.murlocvillage.com/fr/)\
&nbsp;Thanks to [AzerothCore](http://azerothcore.org/)
