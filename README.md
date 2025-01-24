# UART Data Transmission on Arty A7 A-35 FPGA. Project for studying the operation of UART.

This project demonstrates how to implement UART data transmission on an Arty A7 A-35 FPGA. Inspired by a tutorial from the YouTube channel **MIHAS**, I followed the steps to create my own working design. The original tutorial can be found here: [MIHAS UART Tutorial](https://www.youtube.com/).

## Overview

In this project, I:
1. Designed a **UART block** for data transmission and reception.
2. Used **VIO (Virtual Input/Output)** to send and monitor data in real time.
3. Successfully transmitted and received data through the UART interface on the FPGA.

### Features
- UART operates at a **baud rate of 115200**.
- The design is clocked at **50 MHz**, generated using the **Clocking Wizard**.
- Real-time interaction is achieved via the **Virtual I/O (VIO)** feature in Vivado.

---

## Block Design

The block design includes:
- **MicroBlaze processor** for managing the logic.
- **Clocking Wizard** to generate the 50 MHz clock.
- **UART module** for data transmission and reception.

![Block Design](path/to/block_design_image.png)

---

## Virtual I/O (VIO)

Using VIO, I was able to change the transmitted data dynamically and observe the corresponding UART output. Here's an example screenshot of the VIO interface:

![VIO Interface](path/to/vio_image.png)

---

## UART Transmission

I used a terminal program PuTTY to send and receive data through the UART interface. Below is an example of a transmitted symbol:

![UART Transmission](path/to/uart_transmission_image.png)

