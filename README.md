# bdayscript

## Purpose
I wanted to create a quick shell script that can be called either via cron or inside a `.bashrc` or `.zshrc`.

The corresponding `.csv` files should be placed inside the `~/.bdayscript/` directory. The sed-Commands are tailored to read min-one-digit day and month numbers, like e.g. *2/4/00*. 

## Setup
1. Place the `bdayscript.sh` in a nice and warm place, e.g. `~/scripts/` or something.
2. Create a `~/.bdayscript/` directory.
3. Create a csv "database" in the following form:
```csv
Surname;Name;M(M)/D(D)/YY
Doe;John;12/24/85
```
4. Insert a call to the script sinside your `.bashrc` or `.zshrc` file. Alternatively you can also create a similar cronjob.
```bash
bash ~/scripts/bdayscript.sh
```
5. Never forget a birthday again. 

## To-Do
- [ ] Create a setup agent to manage birthdays in the database.
- [ ] Add multi-language support.

## Authors
- EightSQ - *all by himself* - https://electronvo.lt

## License
This project is licensed under the MIT License.
