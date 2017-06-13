# Web Servers

1. What are some of the key design philosophies of the Linux operating system?
  * The design philosophies behind Linux derive from the Unix philosophy which emphasizes building simple, short, clear, modular, and extensible code that can be easily maintained and repurposed by developers. Linux also believes in being inclusive in that it always assumes the user is competent and that it doesn't need to shield the user from GUI. Rather it believes having a GUI and shielding users is elitist and exclusive.

2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
  * VPS(virtual private server) is a virtual computer of sorts that act as it's own entity and runs it's own OS. There is no hardware and it is usually provided by some Internet hosting service. They are often compared to a dedicated physical server and could under perform depending on the workload given to them. Creating a web server using a VPS is a well known practice.
  Possible advantages of using a VPS are stability and reliability for basic web hosting services, having more control than shared hosting, are easy to scale when necessary and are cost effective solutions to small websites.

3. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
  * Most of it pertains to security issues that could arise if you were working off the root user. For example if you were working on the root directory something were to cause a wipe out it would be devastating. It's best practice work and run applications on a user level and leave administrative or high level tasks to the root user.