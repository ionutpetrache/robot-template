@pushd %~dp0

@echo create python environment
py -m venv env

@echo activate virtual environment
call env\Scripts\activate.bat

@echo activate external python libraries
python -m pip install -r .\requirements.txt || GOTO error

@echo deactivate environment
call env\Scripts\deactivate.bat

@goto end

:error
@echo  Error occurred!

:end
@popd