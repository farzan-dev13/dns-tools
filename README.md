# 🔍 DNS Tools

A simple Bash-based DNS record checker script for sysadmins, DevOps engineers, and hosting environments.

---

## 📂 File

- `dns-check.sh` – Check A, MX, NS, TXT, SPF, and DKIM records for any domain

---

## ⚙️ Requirements

- Linux or macOS system
- `dig` command installed

### Install `dig`:
```bash
# Debian / Ubuntu
sudo apt install dnsutils

# RHEL / AlmaLinux / CentOS
sudo yum install bind-utils

# Alpine
apk add bind-tools

## 🚀 Usage
chmod +x dns-check.sh
./dns-check.sh domain.com

## Example
./dns-check.sh gmail.com

## 📌 Output

🔍 Checking DNS records for: gmail.com
------------------------------------
📌 A record:
142.250.180.69

📌 MX record:
5 gmail-smtp-in.l.google.com.

📌 NS record:
ns1.google.com.
ns2.google.com.

📌 TXT record:
"v=spf1 include:_spf.google.com ~all"
...

✅ SPF record:
"v=spf1 include:_spf.google.com ~all"

✅ DKIM (selector: default):
(no response or depends on the domain)
------------------------------------
##📄 License

Licensed under the MIT License.

---

## 🙋‍♂️ Author

**Farzan Afringan**  
[GitHub Profile](https://github.com/farzan-dev13)  
[Website](https://afringan.com)  
[Bio](https://biography.afringan.com)

---

## 🤝 Contributions

Pull requests are welcome!  
If you have suggestions for improvements or bug fixes, feel free to fork the repo and submit a PR.  
Please ensure your code is clean and documented.

---



