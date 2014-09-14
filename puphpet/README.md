Testing This Website
====================

These instructions are a guide for setting up a testing environment for this site using a server running on a virtual machine.

## Tools

Download and install the following:

* [VirtualBox](https://www.virtualbox.org/) and its Extension Pack: For running the virtual machine.
* [Vagrant](http://www.vagrantup.com/): For configuring and managing the virtual machine.
* [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/): For accessing the virtual machine.

### Setting Up The Virtual Machine

1. Create a folder for the virtual machine.
2. Go to [PuPHPet.com](https://puphpet.com) and drag 'n' drop this repository's `puphpet/config.yaml` into your browser window.
3. If you've got something already running at the IP `192.168.56.101`, change the "Local VM IP Address" setting in the "Deploy Target" section.
4. If you've got this repository cloned to somewhere other than `~/Documents/GitHub/`, change the "Box Sync Folder Source" setting in the "Deploy Target" section.
5. Click on the "Create" button in the webpage sidebar.
6. Click the huge "GO AHEAD THEN, MAKE IT!" button.
7. Extract the downloaded archive to the folder you created for the virtual machine, so that `Vagrantfile` is in this folder (not in a subfolder).
8. Drag 'n' drop the `puphpet/files` folder in this repository into the virtual machine folder.
8. Open up a command prompt window, and `cd` to the virtual machine folder.
9. Run `vagrant up`.
10. Open an admin-level command prompt window, and run `notepad C:\windows\system32\drivers\etc\hosts` to open your hosts file for editing.
11. Add the line `192.168.56.101 wrinklyninja.dev` to your hosts file, save and close it. If you changed the IP in the settings, use the IP you set.

### Starting, Stopping and Accessing the Virtual Machine

To start and stop the virtual machine, open a command prompt, `cd` to the virtual machine folder, and run `vagrant up` or `vagrant halt` respectively. The site can be viewed at <http://wrinklyninja.dev/> whenever the virtual machine is running.

To access the virtual machine, open PuTTY, and set the following settings:

* Set `Host Name` to `127.0.0.1`
* Set `Port` to `2222`
* Set the private key file path to `<virtual machine path>\puphpet\files\dot\ssh\id_rsa.ppk`. The setting can be found under Connection->SSH->Auth.

To save the settings, enter a name into the "Saved Sessions text box, and click the "Save" button. Then click "Open" to start an SSH session. When prompted to `login as: `, enter `vagrant`.

You will need to access the virtual machine in order to install PHP dependencies and run unit tests (which aren't yet implemented).
