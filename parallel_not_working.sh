#!/bin/bash

accounts_files="main.json file1.json file2.json"

for account_file in $accounts_files; do
	tilix -e "bash -c 'source venv/bin/activate; python main.py -l fr -f accounts/$account_file; exec bash'"
done
