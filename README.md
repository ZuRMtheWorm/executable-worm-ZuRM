# Zurm-the-Worm
### What the project does:
ZuRM is a simple worm program which automates the recon, scanning, exploitation, and post exploitation Red Team phases as it spreads from machine to machine. ZuRM makes use of the vulnerability in VSFTPD 2.3.4, and python to establish connections 
and transfer files.

### Why the project is useful:
ZuRM is a useful tool that demonstates how a worm can infiltrate multiple networks with multiple devices.

### How users can get started with the project:
- This worm has been created for **educational purposes** and not meant for any actual malicious intent. 
With that being said, it is recommended to execute ZuRM.sh with most Linux distributions within a Virtual Machine (VM).
- After creating a virtual network similar to that seen in the file, Network Topology, excute ZuRM.sh from your attacking Linux VM.
  - **make sure all three files ZuRM.sh, networkscan, and bite.sh have executable permissions.**
- You can then physically confirm that ZuRM has infected you other Linux VMs by checking their tmp folder for ZuRM.sh, networkscan, and bite.sh.

### Where users can get help with your project:
- Check the other file listed: ZuRM.sh, networkscan, bite.sh, and Network Topology.
- View a demo of ZuRM from the file ZuRM DEMO.

### Who maintains and contributes to the project:
The creators of ZuRM are Tony Diaz & Julianna Diaz
