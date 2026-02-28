# Lab 01: Forensic Disk Imaging & Integrity Verification using dd

## Objective

To create a forensic bit-by-bit image of digital evidence using the `dd` tool in Kali Linux and verify its integrity using cryptographic hash functions (SHA-256 & MD5).

---

## Background

In digital investigations, it is critical to create an exact copy of digital evidence without modifying the original data.

The `dd` utility in Linux allows forensic investigators to:

- Create raw disk images
- Perform bit-level duplication
- Preserve original data integrity

Cryptographic hash functions such as SHA-256 are used to ensure that the copied image is identical to the original evidence.

If even a single bit changes, the hash value will change — making tampering detectable.

---

## Tools Used

- Kali Linux
- dd
- sha256sum
- md5sum
- xxd (Hex viewer – optional)

---

## Lab Scenario

You are a Digital Forensic Investigator.

A suspicious file was found on a system. Your task is to:

1. Create a forensic image of the file
2. Verify its integrity
3. Simulate tampering
4. Detect modification using hash comparison

---

# Procedure

---

## Step 1: Create Sample Evidence

```bash
echo "Confidential forensic evidence data" > evidence.txt
