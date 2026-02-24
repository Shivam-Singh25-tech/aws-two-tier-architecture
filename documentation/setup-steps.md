# AWS Two-Tier Architecture Setup Guide

## 1. VPC Configuration

- Created custom VPC
- Created Public Subnet for EC2
- Created Private Subnet for RDS
- Attached Internet Gateway
- Updated Route Table for Public Subnet

---

## 2. EC2 (Web Tier) Setup

- Launched Amazon EC2 instance
- Installed Apache, PHP, MySQL client
- Downloaded and configured WordPress
- Configured Security Group to allow:
  - HTTP (Port 80)
  - SSH (Port 22)

---

## 3. RDS (Database Tier) Setup

- Created Amazon RDS (MySQL)
- Placed RDS in Private Subnet
- Configured DB Subnet Group
- Allowed Port 3306 from EC2 Security Group only

---

## 4. Security Configuration

- Web Server in Public Subnet
- Database in Private Subnet
- Restricted database access using Security Groups
- No public access enabled for RDS

---

## 5. WordPress Configuration

- Connected WordPress to RDS endpoint
- Configured database name, username, password
- Verified successful connection

---

## 6. Architecture Flow

User → Internet → EC2 (WordPress) → RDS (MySQL)

---

## 7. Issues Faced & Troubleshooting

- Directory listing issue
- PHP not executing properly
- Security Group misconfiguration
- 502 Bad Gateway error

Resolved by:
- Disabling directory indexing
- Restarting Apache
- Updating Security Group rules
