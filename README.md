# Open Source Audit — Linux Kernel

## Student Information

Name: Darrel Shibu  
Registration Number: 24BAI10888

Course: Open Source Software  
Project Title: The Open Source Audit  
Chosen Software: Linux Kernel  

---

## Project Overview

This project is a structured audit of the Linux Kernel conducted as part of the Open Source Software course. The purpose of this audit is to understand not only the technical structure of the Linux Kernel but also its philosophy, licensing model, ecosystem influence, and real-world impact.

The Linux Kernel was selected because it forms the foundation of modern computing systems. It powers servers, cloud infrastructure, Android smartphones, embedded devices, and supercomputers. This project explores how the kernel works, how it is licensed under GPL v2, how it exists within a Linux system, and how it compares with proprietary alternatives.

Along with the written report, five shell scripts were developed to demonstrate practical Linux knowledge and command-line automation skills.

---

## About the Linux Kernel

The Linux Kernel is the core component of a GNU/Linux operating system. It is responsible for:

- Managing CPU scheduling  
- Allocating memory  
- Handling hardware devices  
- Managing processes  
- Providing system calls  
- Ensuring system security and isolation  

It was created in 1991 by Linus Torvalds and is licensed under the GNU General Public License version 2 (GPL v2). The kernel is developed collaboratively by thousands of contributors worldwide.

---

## Repository Structure

oss-audit-24BAI10888/
│
├── script1.sh
├── script2.sh
├── script3.sh
├── script4.sh
├── script5.sh
└── README.md

---

## Shell Scripts Description

### Script 1 — System Identity Report

File: script1.sh

Purpose:
This script displays a formatted system identity report including the Linux distribution name, kernel version, logged-in user, home directory, uptime, current date, and license information.

Concepts Used:
- Variables
- Command substitution ($())
- echo statements
- Basic output formatting

Run Instructions:

chmod +x script1.sh  
./script1.sh  

---

### Script 2 — FOSS Package Inspector

File: script2.sh

Purpose:
This script checks whether the Linux Kernel package is installed on the system. It displays version details and prints a short philosophical description using a case statement.

Concepts Used:
- if-then-else
- case statement
- dpkg -l or rpm -q
- grep and pipes

Run Instructions:

chmod +x script2.sh  
./script2.sh  

---

### Script 3 — Disk and Permission Auditor

File: script3.sh

Purpose:
This script audits important system directories and displays their permissions, ownership, and disk usage. It also checks for the Linux kernel configuration file in the /boot directory.

Concepts Used:
- for loop
- Arrays
- awk
- cut
- du
- Conditional checks

Run Instructions:

chmod +x script3.sh  
./script3.sh  

---

### Script 4 — Log File Analyzer

File: script4.sh

Purpose:
This script analyzes a log file provided as an argument. It counts how many times a keyword (default: "error") appears in the file and displays the last five matching lines.

Concepts Used:
- while read loop
- Command-line arguments ($1, $2)
- Counter variables
- Arithmetic expansion
- grep and tail
- Conditional checks

Run Instructions:

chmod +x script4.sh  
./script4.sh /var/log/syslog error  

(Note: On some systems, use /var/log/messages instead.)

---

### Script 5 — Open Source Manifesto Generator

File: script5.sh

Purpose:
This script interactively asks the user three questions and generates a personalized open-source manifesto. The output is saved as a text file named manifesto_<username>.txt.

Concepts Used:
- read command
- Variable usage
- File writing using > and >>
- date command
- whoami command
- String concatenation

Run Instructions:

chmod +x script5.sh  
./script5.sh  

---

## System Requirements

- Linux distribution (Tested on Ubuntu 22.04 LTS)
- Bash shell
- Standard GNU utilities:
  - grep
  - awk
  - cut
  - du
  - dpkg or rpm

No additional dependencies are required.

---

## How to Reproduce This Project

1. Clone the repository:

git clone https://github.com/Darrel67/oss-audit-24BAI10888.git  
cd oss-audit-24BAI10888 

2. Make all scripts executable:

chmod +x *.sh  

3. Run each script individually as described above.

---

## Learning Outcomes

Through this project, I have:

- Understood the origin and philosophy of the Linux Kernel  
- Studied the GNU General Public License version 2 (GPL v2)  
- Explored how the Linux Kernel integrates into a Linux system  
- Practiced writing shell scripts using loops, conditionals, and variables  
- Learned how open-source ecosystems function collaboratively  

---

## License Note

This repository contains academic work created for the Open Source Software course.

The Linux Kernel itself is licensed under the GNU General Public License version 2 (GPL v2). This project does not redistribute the kernel source code but analyzes its structure and impact for educational purposes.

---

## Submission Checklist

- All 5 shell scripts included  
- README.md included  
- Repository set to public  
- Project report PDF submitted separately  
