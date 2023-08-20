# samsung-pd-training
- [Day-0-Installation](#day-0-Installation)

- [Day-1-Introduction to Verilog RTL design and Synthesis](#Day-1--Introduction-to-Verilog-RTL-design-and-Synthesis)
- ## Day-0-Installation
<details>
 <summary> Summary </summary>
 Getting started with the tools like Prime Time, Design Compiler, yosys, iverilog, gtkview
 Below is the some detail and screenshot showing the successful launch of the above-mentioned tools
</details>
<details>
<summary> Yosys </summary>
Yosys is an open-source framework for RTL (Register Transfer Level) synthesis and formal verification of digital circuits.

 Here are five key points about Yosys
 * Open-source framework for RTL synthesis and formal verification of digital circuits.
 * Operates primarily on Verilog designs, converting them into gate-level netlists.
 * Offers formal verification capabilities for equivalence checking between different circuit representations.
 * Utilizes a script-driven synthesis flow, allowing customization and optimization.
 * Supported by an active open-source community for continuous development and improvement.
 
<img width="1085" alt="yosys" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/samsung-pd-training-%23day0/yosys.PNG">

</details>
<details>
<summary> gtkwave </summary>
GTKWave is a popular waveform viewer for digital simulation traces. Here are five key points about GTKWave:

* Waveform viewer for digital simulation traces.
* Open-source and freely available.
* Supports various simulation formats like VCD and LXT2.
* Offers interactive features for waveform analysis.
* Compatible with Linux, macOS, and Windows.

<img width="1085" alt="gtkwave" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/samsung-pd-training-%23day0/gtkwave.PNG">
</details>

<details>
<summary> PrimeTime </summary>
PrimeTime is a widely used static timing analysis (STA) tool in digital design.

* Industry-standard static timing analysis (STA) tool.
* Ensures designs meet timing requirements for proper operation.
* Analyzes delays across logic gates, interconnects, and library cells.
* Performs library characterization for accurate timing analysis.
* Provides optimization guidance and supports advanced features like scenario analysis and power optimization.

<img width="1085" alt="PrimeTime" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/samsung-pd-training-%23day0/pt_snapshot.png">
</details>
<details>
<summary> Design Compiler </summary>
Design Compiler is a popular synthesis tool used in digital design and integrated circuit (IC) design flows.

* Logic synthesis tool for digital and IC design.
* Converts VHDL/Verilog to gate-level netlists.
* Optimizes designs for performance, area, and power.
* Supports hierarchical design and design reuse.
* Considers user-defined constraints and performs timing analysis.

<img width="1085" alt="DesignCompiler" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/samsung-pd-training-%23day0/dc_snapshot2.png">
</details>

<details>
<summary> Library Compiler </summary>
The Library Compiler tool from Synopsys captures ASIC libraries and translates them into Synopsys internal database format for physical synthesis or into VHDL format for simulation.
<img width="1085" alt="LibraryCompiler" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/samsung-pd-training-%23day0/lc_snapshot1.png">
</details>
<details>
<summary> IC Compiler II </summary>
IC Compiler II is a sophisticated tool aimed at addressing the challenges of modern IC design, emphasizing performance, power, area, and design closure efficiency while catering to various market verticals and process technologies.

* Leading place and route tool for IC design.
* Focus on top-notch Quality of Results (QoR).
* Comprehensive capabilities: design planning, optimization, placement, routing, clock synthesis, compliance, and signoff.
* Targets aggressive PPA goals for cutting-edge designs.
* Advanced features: parallel optimization, machine learning, Fusion technologies, and integrated signoff capabilities for unmatched QoR and design convergence.
<img width="1085" alt="ICC II" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/samsung-pd-training-%23day0/icc2_snapshot.png">
</details>
<details>
<summary> IVERILOG </summary>
IVERILOG is an open-source Verilog simulation and synthesis tool

* Open-source Verilog simulation and synthesis tool.
* Enables simulation of Verilog designs with testbenches and test vectors.
* Generates waveform output files for visualization.
* Limited synthesis support for generating gate-level netlists.
* Used for learning, research, and quick prototyping in digital design.

</details>
## Day-1 Introduction to Verilog, RTL Design and Synthesis
<details>
<summary>Introduction to Verilog RTL design and Synthesis</summary>

**Understanding RTL Design**: Think of building a digital puzzle. In Register Transfer Level (RTL) design, we move data around different "spots" called registers. This helps create two types of circuits: those that do calculations (Combinational) and those that remember things (Sequential). We use a language called Verilog to describe how these circuits work. The goal is to make the Verilog code efficient and able to turn into real circuits. RTL design can be one code or set of verilog codes. **One key note is that we need to write RTL design with optimized and synthesizable (realizable as physical gates)**.

**How RTL Design Works:**

* Writing Verilog Code: We create a "recipe" using Verilog. This recipe explains what each part of the circuit should do.

* Module Structure: The Verilog recipe follows a structure, like a recipe card. It has sections for setting things up, telling things what to do, and more.

* Testing the Design: To check if the Verilog recipe is correct, we use a "test bench." This tests how the circuit behaves.

**Testing with Test Benches**:A test bench is like a practice run. Before making a cake, we might try a small one to make sure it tastes good. Similarly, the test bench checks if the circuit behaves as expected. It uses pretend inputs to see what the circuit does and whether it gives the right outputs. Using Verilog we can write a test bench to apply stimulus to the RTL design and verify the results of the design by instantiating design with in test bench. Up-front verification becomes very important as design size increases in size and complexity while any project progresses. This ensures simulation results matches with post synthesis results. A test bench can have two parts, the one generates input signals for the model to be tested while the other part checks the output signals from the design under test. It can be represented as follows.

![Capture2](https://user-images.githubusercontent.com/104454253/166088950-634be5a4-7d5a-4b43-9990-711f8f660aaf.JPG)

**Simulation**: RTL design is checked for adherence to its design specification using simulation by giving sample inputs. This helps finding and fixing bugs in the RTL design in the early stages of design development. 

**Simulator**: Simulator is the tool used for this process. It looks for changes on input signals to evaluate outputs. No change in output if there is no change in input signals
Here is the flow of frondend design:
![Capture1](https://user-images.githubusercontent.com/104454253/166088866-80a4e792-7db7-4bf2-b3b5-b4b9b92452a8.JPG)

</details>

<details>
 <summary> Lab examples using iverilog and gtkwave </summary>
	
**iverilog**: iverilog stands for Icarus Verilog. Icarus Verilog is an implementation of the Verilog hardware description language. It supports the 1995, 2001 and 2005 versions of the standard, portions of SystemVerilog, and some extensions.

**Gtkwave**: GTKWave is a fully featured GTK+ based wave viewer for Unix, Win32, and Mac OSX which reads LXT, LXT2, VZT, FST, and GHW files as well as standard Verilog VCD/EVCD files and allows their viewing. 

 We made a directory namely VLSI and inside that directory we cloned vsdflow repository. This repository consists of the required .lib files and verilog codes for practice. 

 Below is the output wave form in gtkwave generated by performing a simulation of good_mux using iverilog. 
 
 The syntax of the code is: iverilog RTL_design_code Testbench
 

<img width="1085" alt="gtkwaveform" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/good_mux_iverilog.PNG">
RTL design code of the 2:1 MUX
<img width="1085" alt="good_mux_design_code" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/good_mux_v.PNG">
Testbench for 2:1 MUX
<img width="1085" alt="testbench" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/tb_good_mux_v.PNG">

</details>
<details>
 <summary>Introduction to Yosys</summary>

**VLSI Synthesis and its Purpose**: In the realm of VLSI design, synthesis entails transforming higher-level RTL (Register Transfer Level) code into a gate-level netlist, a representation of the design using logic gates. This conversion is vital for turning an abstract design into a physical implementation on a chip. The tool responsible for this process is known as a synthesizer.

**Understanding Yosys**: Yosys serves as a powerful framework for RTL synthesis and more. It supports the Verilog-2005 language and boasts a suite of synthesis algorithms catering to diverse application domains. As a cornerstone of implementation and verification workflows, Yosys holds significance.

**Verification of Synthesized Design**: Following synthesis, the correctness of the resulting netlist needs confirmation. This involves comparing the output from simulating the netlist with that of the original RTL design using a corresponding testbench. The simulation generates a Value Change Dump (VCD) file, which can be visually analyzed using tools such as gtkwave. This step ensures that the behaviors align.

**Comparing Faster and Slower Cells**: The speed of digital circuit operation hinges on elements like capacitance and transistor attributes. Achieving faster cell performance necessitates transistors capable of delivering higher current, often realized through the utilization of wider transistors. These wider transistors expedite the charging and discharging of capacitance, leading to reduced cell delay. Yet, it's important to note that wider transistors consume more power and occupy more space.

**Optimal Cell Selection**: The choice of cell type is pivotal in the implementation process. Faster cells offer enhanced performance but come hand in hand with increased area and power consumption. On the contrary, slower cells are more economical in terms of area and power. Striking a balance between speed, area, and power is imperative. Constraints are applied to guide the synthesizer's decision-making, optimizing the design by selecting cells that align with the desired trade-offs
</details>

<details>
<summary>Labs on Yosys </summary>

In this lab, we were introduced to a tool that facilitates the process of synthesizing and analyzing digital circuits i.e. yosys. The goal is to understand how to perform synthesis on a simple 2:1 multiplexer (MUX) design using the given tool. The experiment involves several steps, from reading essential files to visualizing the synthesized circuit.

**Experiment Procedure**:
1. Invoke the tool yosys
1. Initiate by importing the necessary Liberty file using the following command:

   ```
   read_liberty -lib <path to the .lib file>
   ```

   This file contains essential information about cell libraries and their attributes.

2. Proceed to load the RTL (Register Transfer Level) design code into the tool:

   ```
   read_verilog <RTL_Design_file>
   ```

   The RTL design code outlines the functional behavior of the 2:1 MUX.

3. With the design code loaded, it's time to execute the synthesis process:

   ```
   synth -top <instance_name>
   ```

   This step transforms the RTL code into a gate-level netlist, laying the foundation for the subsequent stages.

4. To generate the netlist, invoke the ABC tool while referencing the Liberty file:

   ```
   abc -liberty <path to the .lib file>
   ```

   The ABC tool applies logic optimization and further refines the netlist.

5. The resulting netlist can be visualized in the form of a synthesized circuit using the command:

   ```
   show
   ```

   This command displays the circuit structure and connections in a graphical format.

By following these steps, one can progress through reading the necessary files, synthesizing the design, and gaining insights into the synthesized circuit's structure.    



<img width="1085" alt="ckt" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/good_mux_show.PNG">


The Nestlist code 

<img width="1085" alt="netlist" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/good_mux_netlist.PNG">

Simplified Netlist code 

<img width="1085" alt="netlist" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/good_mux_netlist_simpl.PNG">

Also, I performed the above steps for the counter and the circuit structure is shown below

<img width="1085" alt="netlist" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/good_counter.PNG">
</details>
