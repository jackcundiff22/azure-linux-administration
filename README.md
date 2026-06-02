# Azure Linux Administration & Monitoring Project

## Project Overview

This project demonstrates Linux administration, system monitoring, troubleshooting, and cloud operations skills using an Ubuntu virtual machine hosted in Microsoft Azure.

The goal was to simulate the responsibilities of a Cloud Support Engineer or Cloud Operations Engineer by securing a Linux server, managing services, analyzing logs, configuring Azure monitoring, creating alert rules, and automating health checks using Bash scripting.

---

## Technologies Used

### Cloud Platform

* Microsoft Azure

### Operating System

* Ubuntu Linux

### Monitoring & Observability

* Azure Monitor
* Azure Monitor Agent (AMA)
* Log Analytics Workspace
* Azure Alert Rules
* Azure Action Groups

### Services

* Nginx Web Server

### Scripting

* Bash

---

## Project Architecture

Linux VM
↓
Azure Monitor Agent
↓
Log Analytics Workspace
↓
Azure Monitor
↓
Alert Rules
↓
Email Notifications

---

## Project Objectives

* Deploy and manage a Linux virtual machine in Azure
* Practice Linux administration tasks
* Secure SSH access
* Configure user and group permissions
* Manage Linux services
* Analyze system and application logs
* Monitor system performance using Azure Monitor
* Create automated alerting workflows
* Develop Bash scripts for operational monitoring

---

## Linux Administration

### User Management

Created multiple Linux users:

* developer1
* developer2

Commands used:

```bash
sudo adduser developer1
sudo adduser developer2
```

### Group Management

Created a developers group and assigned users.

```bash
sudo groupadd developers

sudo usermod -aG developers developer1
sudo usermod -aG developers developer2
```

### Shared Directory

Created a shared directory accessible only by the developers group.

```bash
sudo mkdir /shared-projects

sudo chown root:developers /shared-projects

sudo chmod 770 /shared-projects
```

### Skills Demonstrated

* User administration
* Group administration
* Linux permissions
* Access control

---

## SSH Hardening

Configured SSH security settings to improve server security.

Changes:

* Disabled root login
* Disabled password authentication
* Enforced SSH key authentication

Configuration file:

```bash
/etc/ssh/sshd_config
```

Modified settings:

```text
PermitRootLogin no
PasswordAuthentication no
```

### Skills Demonstrated

* Linux security
* SSH hardening
* Authentication management

---

## Linux Service Management

Installed and managed Nginx.

Installation:

```bash
sudo apt install nginx -y
```

Service management:

```bash
sudo systemctl start nginx

sudo systemctl stop nginx

sudo systemctl restart nginx

sudo systemctl enable nginx
```

### Skills Demonstrated

* Service administration
* Process management
* Web server management

---

## Log Analysis & Troubleshooting

Analyzed Linux and Nginx logs using:

### System Logs

```bash
journalctl
```

### SSH Logs

```bash
journalctl -u ssh
```

### Nginx Access Logs

```bash
sudo tail -f /var/log/nginx/access.log
```

### Resource Monitoring

```bash
htop
```

### Skills Demonstrated

* Log analysis
* Troubleshooting
* Incident investigation
* Performance monitoring

---

## Azure Monitoring

Configured Azure Monitor to collect performance metrics from the Linux VM.

Monitored:

* CPU utilization
* Memory utilization
* Disk performance
* Network activity

### Components Used

* Azure Monitor Agent
* Log Analytics Workspace
* Azure Monitor Metrics

### Skills Demonstrated

* Cloud monitoring
* Observability
* Telemetry collection

---

## Alerting & Incident Response

Created an Azure Alert Rule to monitor CPU utilization.

Alert Configuration:

* Metric: Percentage CPU
* Threshold: Greater than 70%
* Action: Email Notification

Created an Action Group to automatically notify administrators when thresholds were exceeded.

### Incident Simulation

Installed stress utility:

```bash
sudo apt install stress -y
```

Generated CPU load:

```bash
stress --cpu 2 --timeout 300
```

Verified:

* CPU spike detected
* Alert triggered
* Email notification received

### Skills Demonstrated

* Incident detection
* Alerting
* Monitoring validation
* Cloud operations

---

## Bash Automation

### System Health Script

Created:

```bash
monitor.sh
```

Purpose:

Collects:

* Date and time
* System uptime
* Disk usage
* Memory usage
* Nginx status
* Top CPU-consuming processes

### Nginx Health Check Script

Created:

```bash
check-nginx.sh
```

Purpose:

Checks whether Nginx is running and reports service status.

### Skills Demonstrated

* Bash scripting
* Operational automation
* Service monitoring

---

## Key Skills Developed

### Linux Administration

* Users and groups
* File permissions
* SSH security
* Service management

### Monitoring

* Azure Monitor
* Log Analytics
* Performance monitoring
* Alert creation

### Troubleshooting

* journalctl
* Nginx logs
* Resource analysis
* Service recovery

### Automation

* Bash scripting
* Health checks
* Operational reporting

---

## Project Outcomes

Successfully built a monitored Linux environment in Azure capable of:

* Secure administration
* Service management
* Log analysis
* Performance monitoring
* Automated alerting
* Incident response
* Basic operational automation

This project simulates many of the day-to-day responsibilities performed by Cloud Support Engineers and Cloud Operations Engineers in production environments.

