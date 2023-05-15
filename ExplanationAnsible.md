# Ansible-Playbooks 
We will creating a blueprint of automation tasks—which are complex IT actions executed with limited or no human involvement

# Steps
1. After running the commands in the Explanation.md, on your root directory create a Vagrantfile
```
touch Vagrantfile
```
2. Run the following command which creates and configures guest machines according to your Vagrantfile
```
vagrant up
```
3. Create a playbook.
```
touch playbook.yml
```
4. Populate the playbook with the necessary details i.e playbook name, hosts and the various tasks to automated
5. Create a vars.yml to store variables referenced in the playbook
```
touch vars.yml
```
5. Run the follwing commands to create respective roles which are used in the playbook.yml
```
ansible-galaxy init git
ansible-galaxy init docker
ansible-galaxy init docker-compose
```
6. Move the respective folders created after running the commands above into a one folder with the name "roles"
7. Edit the respective git, docker and docker-compose roles which are located in "tasks/main" in their respective directory
8. Update the variable file with what is the vars.yml
9. Run the following command to get necessary credentials for the your hosts file as it will output valid configuration for an SSH config file
```
vagrant ssh-config
```
10. Create the respective files
```
touch hosts
touch ansible.cfg
```
11. Update your hosts folder with what you got from step 9
12. Run the following command
```
vagrant provision
```
 * Test out the application now using localhost:3000 which you fowarded in your Vagrantfile


