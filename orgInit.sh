sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s --wait 60 --userprefix admin -o externalobjects.demo
sfdx force:data:record:update -s User -w "Name='User User'" -v "FirstName='Admin' LastName='User'"
sfdx force:source:push
sfdx force:user:permset:assign -n External_Objects
sfdx shane:data:tree:import -p data/plan.json -d data/
sfdx shane:user:password:set -g Admin -l User -p salesforce1
sfdx force:org:open
