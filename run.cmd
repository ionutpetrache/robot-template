@pushd %~dp0

@echo activate virtual env
call env\Scripts\activate.bat

@echo run robot suites
py -m robot -A args.txt

@echo deactivate virtual env
call env\Scripts\deactivate.bat

@popd