# samsung-pd-training
- [Day-0-Installation](#day-0-Installation)

- [Day-1-Introduction to Verilog RTL design and Synthesis](#day-1-Introduction-to-Verilog-RTL-design-and-Synthesis)

- [Day-2-Timing libs,hierarchical,flat synthesis,efficient flop coding styles](#day-2-Timing-libs-hierarchical-flat-synthesis-efficient-flop-coding-styles)

- [Day-3-Combinational and sequential optmizations](#day-3-Combinational-and-sequential-optmizations)

- [Day-4-GLS, blocking vs non-blocking and Synthesis-Simulation mismatch](#day-4--GLS-blocking-vs-non-blocking-and-Synthesis-Simulation-mismatch)

- [Day-6-Introduction to Logic Synthesis](#day-6-Introduction-to-Logic-Synthesis)

- [Day-7-Basic of STA](#day-7-Basic-of-STA)

- [Day-8-Advanced Costraints](#day-8-Advanced-Costraints)

- [Day-9-Optimizations](#day-9-Optimizaiions)

- [Day-10-Quality Checks](#day-10-Quality-Checks)

- [Day-11-SoC](#day-11-SoC)

- [Day-12-BabySoC Modelling](#day-12-BabySoC-Modelling)

- [Day-13-Post Synthesis Simulation](#day-13-Post-Synthesis-Simulation)

- [Day-14-SynopsysDC and Timing Analysis](#day-14-SynopsysDC-and-Timing-Analysis)

- [Day-15-Inception of EDA and PDK](#day-15-Inception-of-EDA-and-PDK)

- [Day-16-Chip Floorplanning and Standard Cells](#day-16-Chip-Floorplanning-and-Standard-Cells)

- [Day-17-Design Library Cell](#day-17-Design-Library-Cell)

- [Day-18-Pre Layout Timing analysis and Importance of good Clock Tree](#day-18-Pre-Layout-Timing-analysis-and-Importance-of-good-Clock-Tree)

- [Day-19-Final steps RTL to GDS](#day-19-Final-steps-RTL-to-GDS)

- [Day-20-Floorplanning and Powerplanning in ICC2](#day-20-Floorplanning-and-Powerplanning-in-ICC2)

- [Day-21-Placement and CTS Labs](#day-21-Placement-and-CTS-Labs)

- [Day-22-CTS Analysis Labs](#day-22-CTS-Analysis-Labs)

- [Day-23-Clock Gating Technique](#day-23-Clock-Gating-Technique)

- [Day-24-Timing Violations and ECO](#day-24-Timing-Violations-and-ECO)

- [Day-26-Introduction to Mixed Signal Flows](#day-26-introduction-to-mixed-signal-flows)

- [Day-27-Introduction to Crosstalk-Glitch and Delta delay](#day-27-introduction-to-crosstalk-glitch-and-delta-delay)

- [Day-28-Introduction to DRC/LVS](#day-28-introduction-to-drclvs)

  
## Day-0-Installation
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
 
<center>
<img width="1085" alt="gtkwaveform" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/good_mux_iverilog.PNG">
</center>

**RTL design code of the 2:1 MUX**

<center>
<img width="600" alt="good_mux_dessign_code" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/good_mux_v.PNG">
</center>

**Testbench for 2:1 MUX**

<center>
<img width="600" alt="testbench" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/tb_good_mux_v.PNG">
</center>

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

   
   read_liberty -lib <path to the .lib file>
   

   This file contains essential information about cell libraries and their attributes.

2. Proceed to load the RTL (Register Transfer Level) design code into the tool:

	read_verilog <RTL_Design_file>
   
   The RTL design code outlines the functional behavior of the 2:1 MUX.

3. With the design code loaded, it's time to execute the synthesis process:

   	synth -top <instance_name>
   
   This step transforms the RTL code into a gate-level netlist, laying the foundation for the subsequent stages.

4. To generate the netlist, invoke the ABC tool while referencing the Liberty file:

	abc -liberty <path to the .lib file>
   
   The ABC tool applies logic optimization and further refines the netlist.

5. The resulting netlist can be visualized in the form of a synthesized circuit using the command:

	show
   
   This command displays the circuit structure and connections in a graphical format.

By following these steps, one can progress through reading the necessary files, synthesizing the design, and gaining insights into the synthesized circuit's structure.    


<center>
<img width="825" alt="ckt" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/good_mux_show.PNG">
</center>

The Nestlist code 

<center>
<img width="925" alt="netlist" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/good_mux_netlist.PNG">
</center>

Simplified Netlist code 

<center>
<img width="825" alt="netlist" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/good_mux_netlist_simpl.PNG">
</center>


Also, I performed the above steps for the counter, and the circuit structure is shown below

<img width="1085" alt="netlist" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/good_counter.PNG">
</details>


## Day-2-Timing libs, hierarchical, flat synthesis, efficient flop coding styles
<details>
<summary>Introduction to timing .libs</summary>

### LAB- Introduction to dot Lib

This lab walkthrough covers the utilization of the .lib files containing the encoded information of various logic gates. Based on the provided parameters, these libraries will be analyzed to create models that represent different variations.

![lib1](https://user-images.githubusercontent.com/104454253/166105787-19a638a3-fe01-4fcf-828d-0b56a6acb8f7.JPG)

Inside the .lib file, gate declarations are structured in a way that addresses the variations arising from factors such as manufacturing process, temperature fluctuations, and voltage levels.

<center>
	<img width="600" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/cell.PNG">
</center>

For the above example, for all the 32 cominations i.e 2^5 (5 is no.of variables), the delay, power and all the related parameters for each gate are mentioned.
<center>
	<img width="600" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/internal_power.PNG">
</center>

This image displays the power consumtion comparision and the delay order for the different flavor of gates.

<img width="600" alt="power consumption" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/different_cells.PNG">

 </details>

 <details>
<summary> LAB- Hierarchical synthesis and flat synthesis </summary>

**multiple_module**<br />

	module sub_module2 (input a, input b, output y);
		assign y = a | b;
	endmodule
	
	module sub_module1 (input a, input b, output y);
		assign y = a&b;
	endmodule


	module multiple_modules (input a, input b, input c , output y);
	wire net1;
	sub_module1 u1(.a(a),.b(b),.y(net1));  //net1 = a&b
	sub_module2 u2(.a(net1),.b(c),.y(y));  //y = net1|c ,ie y = a&b + c;
	endmodule

This is the schematic as per the connections in the above module.

<center>
	<img width="300" alt="multi_module" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/multi_module.PNG">
</center>

However, the yosys synthesizer generates the following schematic instead of the above one, and within the submodules, the connections are made

```
$ yosys
yosys> read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib 
yosys> read_verilog multiple_modules.v
yosys> synth -top multiple_modules
yosys> show multiple_modules 

```
<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/multiple_modules.PNG">
</center>

The synthesizer considers the module hierarchy and does the mapping according to instantiation. Here is the hierarchical netlist code for the  multiple_modules:

	module multiple_modules(a, b, c, y);
		  input a;
 		 input b;
 		 input c;
		  wire net1;
 		 output y;
 	  sub_module1 u1 (.a(a),.b(b),.y(net1) );
	  sub_module2 u2 (.a(net1),.b(c),.y(y));
	endmodule
	
	module sub_module1(a, b, y);
 	 wire _0_;
 	 wire _1_;
 	 wire _2_;
 	 input a;
 	 input b;
 	 output y;
 	 sky130_fd_sc_hd__and2_0 _3_ (.A(_1_),.B(_0_),.X(_2_));
 	 assign _1_ = b;
 	 assign _0_ = a;
 	 assign y = _2_;
	endmodule

	module sub_module2(a, b, y);
  	wire _0_;
 	 wire _1_;
 	 wire _2_;
  	input a;
  	input b;
 	 output y;
 	 sky130_fd_sc_hd__lpflow_inputiso1p_1 _3_ (.A(_1_),.SLEEP(_0_),.X(_2_) );
 	 assign _1_ = b;
 	 assign _0_ = a;
 	 assign y = _2_;
	endmodule

Flattened netlist:

In a flattened netlist, the hierarchies are flattened out and there is a single module i.e., gates are instantiated directly instead of sub_modules. Here is the flattened netlist code for the  multiple_modules:

	module multiple_modules(a, b, c, y);
 		 wire _0_;
  		 wire _1_;
 		 wire _2_;
 		 wire _3_;
		 wire _4_;
		 wire _5_;
 		 input a;
 		 input b;
 		 input c;
 		 wire net1;
 		 wire \u1.a ;
		 wire \u1.b ;
		 wire \u1.y ;
		 wire \u2.a ;
		 wire \u2.b ;
 		 wire \u2.y ;
  		output y;
 		 sky130_fd_sc_hd__and2_0 _6_ (
  		  .A(_1_),
  		 .B(_0_),
   		 .X(_2_)
  		);
 		 sky130_fd_sc_hd__lpflow_inputiso1p_1 _7_ (
  		  .A(_4_),
 		  .SLEEP(_3_),
  		  .X(_5_)
 		 );
 		 assign _4_ = \u2.b ;
 		 assign _3_ = \u2.a ;
 		 assign \u2.y  = _5_;
 		 assign \u2.a  = net1;
		 assign \u2.b  = c;
 		 assign y = \u2.y ;
		 assign _1_ = \u1.b ;
		 assign _0_ = \u1.a ;
		 assign \u1.y  = _2_;
		 assign \u1.a  = a;
		 assign \u1.b  = b;
 		 assign net1 = \u1.y ;
		endmodule

The commands to get the hierarchical and flattened netlists are shown below:

**yosys> write_verilog -noattr multiple_modules_hier.v**

8. Executing Verilog backend.
Dumping module `\multiple_modules'.
Dumping module `\sub_module1'.
Dumping module `\sub_module2'.

**yosys> !gvim multiple_modules_hier.v**

11. Shell command: gvim multiple_modules_hier.v

**yosys> flatten**

12. Executing FLATTEN pass (flatten design).
Deleting now unused module sub_module1.
Deleting now unused module sub_module2.
<suppressed ~2 debug messages>

**yosys> write_verilog -noattr multiple_modules_flat.v**

13. Executing Verilog backend.
Dumping module `\multiple_modules'.

**yosys> !gvim multiple_modules_flat.v**

14. Shell command: gvim multiple_modules_flat.v

This is the synthesized circuit for a flattened netlist. Here u1 and u2 are flattened and directly or gates are realized.

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/flatten_multiple_modules.PNG">
</center>

Here is the synthesized circuit for sub_module1. Additionally, we are creating synthesis at the module level. This approach allows us to synthesize the top module, which might contain multiple identical sub-modules, just once. This enables us to reuse and connect the same netlist multiple times within the top module netlist.

Another reason behind generating module-level synthesis and then integrating them is to mitigate errors that can arise within a large top module composed of numerous sub-modules. By creating separate netlists for synthesis and subsequently integrating them at the top level, the process becomes easier, lowering the chances of output inconsistencies.

We control this synthesis using **synth -top <module_name>** command

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/sub_modules.PNG">
</center>

 </details>
 
<details>
	<summary>Various Flop coding styles and optimization</summary>
	
**Why Flops and Flop coding styles**

During this session, the conversation revolved around the coding techniques for different types of flip-flops, as well as the various styles that can be employed to write code for these flip-flops.

**Why a Flop?**

In a combinational circuit, the output changes in response to input changes after a certain propagation delay. When data propagates, if there are multiple paths with varying propagation delays, there's a potential for glitches to occur at the output. This risk increases when multiple combinational circuits are present in the design, resulting in unstable output.

To address this issue, the adoption of flip-flops becomes necessary. Flip-flops allow the storage of data from the combinational circuits. When a flip-flop is employed, the output of the combinational circuit is stored within it and is subsequently propagated only at the positive or negative edge of the clock signal. This ensures that the next combinational circuit receives a glitch-free input, stabilizing the overall output.

To prevent undesirable effects, initialization signals or control pins like "**set**" and "**reset**" are integrated into a flip-flop. These signals enable the initialization of the flip-flop, ensuring that without them, a potentially unpredictable value doesn't propagate to the subsequent combinational circuit. These control pins can function synchronously or asynchronously depending on the specific requirements of the design.

### Lab- flop synthesis simulations

In a **D-flip-flop with an asynchronous reset**, the behavior is such that the output, represented as "q," transitions to a low state whenever the reset input is set to a high value. Unlike the standard operation of a flip-flop that relies on the clock signal's positive edge, in this scenario, the output is immediately forced to a low state upon detecting a high level on the reset input. The clock signal's state doesn't affect this action; the asynchronous reset mechanism takes precedence over clock edges.

This ensures that regardless of the clock's activity if the reset input is activated, the output of the D-flip-flop is promptly set to a low level. This feature provides a way to quickly reset the flip-flop's state independently of the clock signal's rhythm.
 
	 module dff_asyncres ( input clk ,  input async_reset , input d , output reg q );
		always @ (posedge clk , posedge async_reset)
		begin
			if(async_reset)
				q <= 1'b0;
			else	
				q <= d;
		end
	endmodule

**Simulation**:

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/dff_asyncres.PNG">
</center>

**Synthesized circuit**:

<center>
	<img width="600" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/dff_asyncres_show.PNG">
</center>

**d-flipflop with asynchronous set**- Here the output **q** goes high whenever set is high and will not wait for the clock's posedge, i.e irrespective of clock, the output is changed to high.
 

	module dff_async_set ( input clk ,  input async_set , input d , output reg q );
		always @ (posedge clk , posedge async_set)
		begin
			if(async_set)
				q <= 1'b1;
			else
				q <= d;
		end
	endmodule

**Simulation**:

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/dff_async_set.PNG">
</center>

**Synthesized circuit**:


<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/dff_async_set_show.PNG">
</center>

**d-flipflop with synchronous reset**- Here the output **q** goes low whenever reset is high and at the positive edge of the clock. Here the reset of the output depends on the clock.



	module dff_syncres ( input clk , input async_reset , input sync_reset , input d , output reg q );
		always @ (posedge clk )
		begin
			if (sync_reset)
				q <= 1'b0;
			else	
				q <= d;
		end
	endmodule

**Simulation**:

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/dff_synch.PNG">
</center>

**Synthesized circuit**:

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/dff_syncres_show.PNG">
</center>

**d-flipflop with synchronous and asynchronbous reset**- Here the output **q** goes low whenever asynchronous reset is high where output doesn't depend on clock and also when synchronous reset is high and posedge of clock occurs.


	module dff_asyncres_syncres ( input clk , input async_reset , input sync_reset , input d , output reg q );
		always @ (posedge clk , posedge async_reset)
		begin
			if(async_reset)
				q <= 1'b0;
			else if (sync_reset)
				q <= 1'b0;
			else	
				q <= d;
		end
	endmodule

**Simulation**:

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/dff_async_syncres.PNG">
</center>

**Synthesized circuit**:

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/dff_async_syncres_show.PNG">
</center>

</details>

<details>
	
<summary> Interesting optimisations </summary>

In this lab session, we explore automatic and intriguing optimizations applied to circuits using logical techniques. In the provided example, a specific optimization is demonstrated: multiplying a number by 2. Interestingly, this multiplication doesn't require any additional hardware components. Instead, the optimization entails connecting the bits from input "a" to output "y" and grounding the least significant bit (LSB) of "y." Yosys, the tool being used, is capable of realizing this optimization, showcasing its ability to efficiently simplify circuits based on logical analysis.

	module mul2 (input [2:0] a, output [3:0] y);
		assign y = a * 2;
	endmodule

**Synthesized circuit**:

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/mul_2_scematic.png">
</center>

When it comes to multiplying with powers of 2, it just needs shifting as shown in the below image:

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/20230823_211802.jpg">
</center>

**Netlist for the above schematic**

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/mul2_netlist.png">
</center>

Special case of multiplying **a** with **9**. The result is shown in the below image:

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/20230823_212053.jpg">
</center>

The schematic for the same is shown below:

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/mul8_schematic.png">
</center>

**Netlist for the above schematic**

<center>
	<img width="1085" alt="cells" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day2/mul8_netlist.png">
</center>

</details>

## Day-3-Combinational and sequential optmizations
<details>
<summary> Combinational logic optimization with examples </summary>

Optimizing the combinational logic circuit involves compacting the logic to attain the most efficient digital design, resulting in a circuit that is both space-conscious and energy-saving. This objective is accomplished through the utilization of diverse techniques by the synthesis tool, ultimately providing us with the most optimized circuit.

**Techniques for optimization**:
- Constant propagation which is Direct optimization technique
- Boolean logic optimization using K-map or Quine McKluskey

Here is an example for **Constant Propagation**

<center>
	<img width="1085" alt="Optimization" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/20230827_185606.jpg">

</center>

In the given instance, when examining the transistor-level configuration of the output Y, it is evident that it comprises 6 MOS transistors. However, in the case of an inverter, a mere 2 transistors are adequate. This optimization is accomplished by holding A as a constant and propagating this constant throughout to the output.

Example for **Boolean logic optimization**:

Let's consider an example concurrent statement **assign y=a?(b?c:(c?a:0)):(!c)**

The above expression is using a ternary operator which realizes a series of multiplexers, however, when we write the boolean expression at outputs of each mux and simplify them further using boolean reduction techniques, the outout **y** turns out be just **~(a^c)**

Command to optimize the circuit by yosys is **yosys> opt_clean -purge**

**Example-1**

<center>
	<img width="1085" alt="example1" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/20230827_190228.jpg">

</center>

	module opt_check (input a , input b , output y);
		assign y = a?b:0;
	endmodule

**Optimized circuit**

<center>
	<img width="1085" alt="example1" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/opt_check-and.PNG">

</center>

**Example-2**

	module opt_check2 (input a , input b , output y);
		assign y = a?1:b;
	endmodule

<center>
	<img width="1085" alt="example1" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/opt_check-or.PNG">

</center>

 **Example-3**

	module opt_check3 (input a , input b, input c , output y);
		assign y = a?(c?b:0):0;
	endmodule

<center>
	<img width="1085" alt="example1" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/opt_check-and3.PNG">

</center>

 **Example-4**

	module opt_check4 (input a , input b , input c , output y);
		assign y = a?(b?(a & c ):c):(!c);
	endmodule

<center>
	<img width="1085" alt="example1" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/opt_check-xnor.PNG">

</center>

 **Example- 5**:Here there is multiple modules present so we will try to check whether those module are being used or not by using following commands:

```
yosys:read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib 
yosys:read_verilog multiple_module_opt2.v
yosys:synth -top multiple_module_opt2
yosys:abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib 
yosys:flatten
yosys:opt_clean -purge
yosys:show

```

 

	module sub_module(input a , input b , output y);
		assign y = a & b;
	endmodule

	module multiple_module_opt2(input a , input b , input c , input d , output y);
		wire n1,n2,n3;
		sub_module U1 (.a(a) , .b(1'b0) , .y(n1));
		sub_module U2 (.a(b), .b(c) , .y(n2));
		sub_module U3 (.a(n2), .b(d) , .y(n3));
		sub_module U4 (.a(n3), .b(n1) , .y(y));
	endmodule

**Before Flatten**

<center>
	<img width="1085" alt="example5" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/multiple_module_opt2.PNG">

</center>

**After Flatten**

<center>
	<img width="1085" alt="example5" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/multiple_module_opt2_flatten_clean.PNG">

</center>

**Example-6**


		module sub_module1(input a , input b , output y);
		 assign y = a & b;
		endmodule

		module sub_module2(input a , input b , output y);
		 assign y = a^b;
		endmodule

		module multiple_module_opt(input a , input b , input c , input d , output y);
		wire n1,n2,n3;
		sub_module1 U1 (.a(a) , .b(1'b1) , .y(n1));
		sub_module2 U2 (.a(n1), .b(1'b0) , .y(n2));
		sub_module2 U3 (.a(b), .b(d) , .y(n3));

		assign y = c | (b & n1); 
		endmodule

**Before Flatten**

<center>
	<img width="1085" alt="example6" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/multiple_module_opt.PNG">

</center>

**After Flatten**

<center>
	<img width="1085" alt="example6" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/multiple_module_opt_flatten_clean.PNG">

</center>
 
</details>

<details>
<summary>Sequential Logic Optimization with examples
</summary>

Below are the various techniques used for sequential logic optimisations:<br />

- Basic
  - Sequential constant propagation
- Advanced
  - State optimisation
  - Retiming
  - Sequential Logic Cloning (Floor Plan Aware Synthesis)
 
#### Basic

**Sequential contant propagation**- In this context, optimization applies exclusively to the initial logic where the output of the flop consistently remains zero. Conversely, for the second flop, the output undergoes continuous changes, making it unsuitable for constant propagation.

<center>
	<img width="1085" alt="optimization" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/20230827_185903.jpg">

</center>

#### Advanced
**State Optimisation**: This is optimisation of unused state. Using this technique we can come up with most optimised state machine.

**Cloning**: This strategy is implemented during the process of PHYSICAL AWARE SYNTHESIS. Let's take the scenario of a flop A that connects to both flop B and flop C via combinational logic. When B and C are positioned far away from A in the floorplan, a delay in routing path emerges. To mitigate this, a solution involves interconnecting A with two intermediary flops. Subsequently, the output from these intermediate flops is directed towards B and C, effectively reducing the delay. This technique is referred to as "cloning," as it entails the creation of two new flops possessing identical functionality to A.

**Retiming**: Retiming stands as a potent technique for sequential optimization, aimed at relocating registers within the scope of combinational logic or enhancing the count of registers to enhance performance by navigating the trade-off between power and delay. All this is achieved without altering the input-output behavior of the circuit. 

**Example-1**<br />
Here flop will be inferred as the output is not constant. <br />

	module dff_const1(input clk, input reset, output reg q);
		always @(posedge clk, posedge reset)
		begin
			if(reset)
				q <= 1'b0;
			else
				q <= 1'b1;
		end
	endmodule

**Simulation**

<center>
	<img width="1085" alt="const1" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/dff_const1_waveform.PNG">

</center>

**Synthesis**<br />
In the synthesis report, we'll see that a Dflop was inferred in this example.

<center>
	<img width="1085" alt="const1" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/dff_const1.PNG">

</center>

**Example-2**<br />
Here flop will not be inferred as the output is always high. <br />

	module dff_const2(input clk, input reset, output reg q);
		always @(posedge clk, posedge reset)
		begin
			if(reset)
				q <= 1'b1;
			else
				q <= 1'b1;
		end
	endmodule



**Simulation**

<center>
	<img width="1085" alt="const2" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/dff_const2_waveform.PNG">

</center>

**Synthesis**

<center>
	<img width="1085" alt="const2" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/dff_const2.PNG">

</center>

**Example-3**

		module dff_const3(input clk, input reset, output reg q);
		reg q1;

		always @(posedge clk, posedge reset)
		begin
			if(reset)
			begin
				q <= 1'b1;
				q1 <= 1'b0;
			end
			else
			begin
				q1 <= 1'b1;
				q <= q1;
			end
		end
		endmodule


**Simulation***

<center>
	<img width="1085" alt="const3" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/dff_const3_waveform.PNG">

</center>

This circuit makes use of two flip-flops equipped with reset-set functionality. In this arrangement, q1 produces a low signal when the reset input is in a high state. However, during the transition of the reset input from high to low, q1's output goes high. Nevertheless, a minor delay occurs due to the clock-to-q propagation. Consequently, there exists a brief interval during this transition wherein q1 is low. Subsequently, it promptly reverts to a high signal after the delay, maintaining this high state consistently until the subsequent clock edge. This behavior stems from q1's momentary shift to a low state during the transition, swiftly recovering to a high state after the delay, thus leading to a temporary one-clock-cycle drop in its output.

**Synthesis**

<center>
	<img width="1085" alt="const1" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/dff_const3.PNG">

</center>

**Example4**

		module dff_const4(input clk, input reset, output reg q);
		reg q1;

		always @(posedge clk, posedge reset)
		begin
			if(reset)
			begin
				q <= 1'b1;
				q1 <= 1'b1;
			end
		else
			begin
				q1 <= 1'b1;
				q <= q1;
			end
		end
		endmodule

**Simulation***

<center>
	<img width="1085" alt="const4" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/dff_const4_waveform.PNG">

</center>

**Synthesis**

<center>
	<img width="1085" alt="const4" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/dff_const4.PNG">

</center>

**Example5**

		module dff_const5(input clk, input reset, output reg q);
		reg q1;
		always @(posedge clk, posedge reset)
			begin
				if(reset)
				begin
					q <= 1'b0;
					q1 <= 1'b0;
				end
			else
				begin
					q1 <= 1'b1;
					q <= q1;
				end
			end
		endmodule

**Simulation***

<center>
	<img width="1085" alt="const5" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/dff_const5_waveform.PNG">

</center>

**Synthesis**

<center>
	<img width="1085" alt="const1" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/dff_const5.PNG">

</center>
 
</details>

<details>
<summary> Sequential optimisation of unused outputs </summary>
Sequential circuits featuring unused outputs can be optimized to enhance efficiency and resource utilization. A case in point is a 3-bit up counter:

**Behavirol code**

		module counter_opt (input clk , input reset , output q);
		reg [2:0] count;
		assign q = count[0];
		always @(posedge clk ,posedge reset)
		begin
			if(reset)
				count <= 3'b000;
			else
				count <= count + 1;
		end
		endmodule

In the given code snippet, the output q is affected by the values of count[0], count[1], and count[2], yet these inputs remain unused. The counter resets to zero upon a high signal of the reset input; otherwise, it increments its value. Notably, the least significant bit (LSB) increment leads to a toggling output with each clock cycle, irrespective of the states of other outputs. To enhance this, an optimization involves replacing the trio of flip-flops with a solitary toggle flip-flop, leading to an output alteration during every clock cycle.

**Synthesis**

<center>
	<img width="1085" alt="counter_opt" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/counter_opt.PNG">

</center>

**Updated counter logic-** 

	module counter_opt (input clk , input reset , output q);
		reg [2:0] count;
		assign q = {count[2:0]==3'b100};
		always @(posedge clk ,posedge reset)
		begin
		if(reset)
			count <= 3'b000;
		else
			count <= count + 1;
		end
	endmodule

**Synthesis**

All the other blocks in synthesizer are for incrementing the counter but the output is only from the three input NOR gate.

<center>
	<img width="1085" alt="counter_opt" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/counter_opt2_.PNG">

</center>

In this context, the usage of all three flip-flops is imperative, as the output encompasses a 3-bit dataset, and each flip-flop holds a crucial segment of this data. The combinational logic is responsible for determining the adder's functionality, guaranteeing the counter's appropriate incrementation with each clock cycle.

<center>
	<img width="1085" alt="counter_opt" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day3/counter_opt2.PNG">

</center>
 
</details>



## Day-4-GLS,blocking vs non-blocking and Synthesis-Simulation mismatch

<details> 
<summary>GLS, Synthesis-Simulation mismatch and Blocking, Non-blocking statements</summary>

### GLS Concepts And Flow Using Iverilog

**What is GLS- Gate Level Simulation?**:<br />

GLS (Gate-Level Simulation) involves simulating a design by running a test bench using a netlist generated from synthesis. This netlist mirrors the logical equivalence of the RTL (Register-Transfer Level) code. Consequently, the same test bench can be employed for both the netlist and the RTL code, resulting in simulation outputs for the design under test.

**Why GLS?**:<br />
This process is executed to confirm the logical accuracy of the design following synthesis, while also verifying that the design's timing requirements are satisfied.

The image below provides an overview of the process. When utilizing iverilog, gate-level Verilog models are integrated to facilitate the generation of Gate-Level Simulation (GLS).

<center>
	<img width="1085" alt="gls" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day4/GLS.PNG">

</center>


### Synthesis Simulation Mismatch

There are three main reasons for Synthesis Simulation Mismatch:<br />
- Missing sensitivity list in always block
- Blocking vs. Non-Blocking Assignments
- Non-standard Verilog coding

**Missing sensitivity list in always block:**<br />

In **Example-2**, only the **sel** signal is mentioned in the sensitivity list. In the simulation, the waveforms might resemble a latched output, but the netlist simulation won't infer this, as the synthesizer solely focuses on statements within the procedural block and disregards the sensitivity list.

Given that the synthesizer doesn't consider the sensitivity list, concentrating solely on procedural block statements, it accurately deduces the circuit. Consequently, simulating the netlist code could reveal a mismatch between synthesis and simulation.

To circumvent inconsistencies between synthesis and simulation, it's vital to initially examine the circuit's behavior and then compare it with the anticipated simulation output. This ensures a match between synthesis and simulation results. This is precisely why Gate-Level Simulation (GLS) is employed.

**Blocking vs Non-Blocking Assignments**:

Blocking statements execute sequentially, following the order in which they are written within an always block. On the other hand, non-blocking statements execute all the right-hand side (RHS) calculations first, and upon entering the always block, the values are assigned to the left-hand side (LHS). This can lead to discrepancies, particularly when improper use of blocking statements generates latches. we can observe an instance of this in Example 3.

</details>

<details>
	<summary> Lab- GLS Synth Sim Mismatch </summary>

**Example-1:** There is no discrepancy in this example, as the waveforms from both the netlist simulation and RTL simulation are identical.

	module ternary_operator_mux (input i0 , input i1 , input sel , output y);
		assign y = sel?i1:i0;
	endmodule
	
**Simulation**

<center>
	<img width="1085" alt="ternary_mux" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day4/ternary_mux_waveform.PNG">

</center>

**Synthesis**

<center>
	<img width="1085" alt="ternary_mux" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day4/ternary_mux.PNG">

</center>

**Netlist Simulation**

<center>
	<img width="1085" alt="ternary_mux" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day4/ternary_mux_gls.PNG">

</center>

# Example-2

	module bad_mux (input i0 , input i1 , input sel , output reg y);
		always @ (sel)
		begin
			if(sel)
				y <= i1;
			else 
				y <= i0;
		end
	endmodule

**Simulation**

<center>
	<img width="1085" alt="bad_mux" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day4/bad_mux_waveform.PNG">

</center>

**Synthesis**

<center>
	<img width="1085" alt="bad_mux" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day4/bad_mux.PNG">

</center>

**Netlist Simulation**

<center>
	<img width="1085" alt="bad_mux" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day4/bad_mux_gls.PNG">

</center>

**MISMATCH:**<br /> In the first image, the netlist simulation reveals a correction in the "bad_mux" design. The initial design exhibited waveform changes only when the "sel" signal was triggered. However, for a mux to function correctly, it should respond to changes in all input signals. This highlights the importance of sensitivity to all inputs for proper mux operation.

<center>
	<img width="1085" alt="comparison" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day4/compare.PNG">

</center>

</details>

<details>
	<summary>Lab- Synthesis simulation mismatch blocking statement</summary>

In this scenario, the output is influenced by the previous state of "x," which, in turn, depends on the values of "a" and "b." This behavior resembles that of a flip-flop, where the output depends on the previous state of an input signal.

# Example-3

	module blocking_caveat (input a , input b , input  c, output reg d); 
	reg x;
	always @ (*)
		begin
		d = x & c;
		x = a | b;
	end
	endmodule

**Simulation**

<center>
	<img width="1085" alt="blocking" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day4/blocking_caveat_waveform.PNG">
</center>

**Synthesis**

<center>
	<img width="1085" alt="blocking" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day4/blocking_caveat.PNG">
</center>

**Netlist Simulation**

<center>
	<img width="1085" alt="blocking" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day4/blocking_caveat_gls.PNG">
</center>

**MISMATCH** 

<center>
	<img width="1085" alt="blocking" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day4/circuit.PNG">

</center>

In this context, the intended behavior of the circuit is represented. However, the accurate waveform is only achieved during netlist simulation. The first image illustrates the netlist simulation, demonstrating the proper functionality of the design under test (DUT). Conversely, the last image exhibits the incorrect behavior of the DUT due to the use of blocking statements, leading to a mismatch between synthesis and simulation results. This inconsistency is resolved through Gate-Level Simulation (GLS), which rectifies the issue during netlist simulation.

<center>
	<img width="1085" alt="blocking" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day4/compare_blocking.PNG">

</center>

</details>


## Day-6-Introduction to Logic Synthesis


<details>
	<summary>Design Compiler(DC) by Synopsys</summary>
	
Design Compiler is a widely used Electronic Design Automation (EDA) tool in the field of digital integrated circuit (IC) design. It is developed by Synopsys, one of the leading companies in the EDA industry. Design Compiler plays a crucial role in the synthesis of digital designs, which is the process of translating a high-level hardware description (often written in a language like VHDL or Verilog) into a gate-level representation that can be implemented on an actual silicon chip.

Here are some common terminologies associated with Design Compiler and the synthesis process:

1. **Synthesis**: Synthesis is the process of converting a high-level hardware description into a gate-level netlist. In the context of Design Compiler, this means translating RTL (Register Transfer Level) code into gates and flip-flops.

2. **Netlist**: A netlist is a representation of the digital design as a collection of logic gates and interconnections between them. This is the output of the synthesis process and is used as input for subsequent stages like physical design and simulation.

3. **Technology Library**: A technology library, also known as a cell library or standard cell library, contains predefined logic gates and flip-flops designed using a specific semiconductor technology. Design Compiler uses this library to map the logic from the RTL code to actual gates.

4. **Constraints**: Constraints define certain requirements and limitations for the synthesis process. Common constraints include timing constraints (e.g., maximum clock frequency), area constraints, and power constraints.

5. **Clock Tree Synthesis (CTS)**: CTS is a critical step in the synthesis process where a clock distribution network is generated to ensure that clock signals are delivered to all sequential elements (flip-flops) with minimal skew and delay.

6. **Timing Analysis**: Timing analysis involves evaluating the performance of the synthesized design in terms of clock-to-q delays, setup times, hold times, and meeting specified timing constraints.

7. **Area Optimization**: Design Compiler offers various techniques to optimize the area (physical size) of the synthesized design. This is important for minimizing the chip's footprint and production cost.

8. **Power Optimization**: Power consumption is a critical concern in modern IC design. Design Compiler provides options to optimize power consumption through techniques like clock gating and power gating.

9. **SSTA (Statistical Static Timing Analysis)**: In advanced nodes, where process variations are significant, SSTA is used to perform timing analysis that considers statistical variations in addition to deterministic factors.

10. **RTL (Register Transfer Level)**: RTL is a high-level abstraction of a digital design that represents how data flows between registers (flip-flops) in a sequential circuit.

11. **Gate-Level**: A gate-level abstraction represents the digital design in terms of logic gates (AND, OR, XOR, etc.) and flip-flops. This is the output of synthesis.

12. **Constraints File (Constraints.sdc)**: A constraints file is used to specify timing, area, and other requirements for the synthesis process. SDC (Synopsys Design Constraints) is a common format for such files.

13. **Scripting**: Design Compiler can be scripted using languages like Tcl (Tool Command Language) to automate and customize the synthesis process.

These are some of the common terminologies associated with Design Compiler and the synthesis process in digital IC design.
</details>

<details>
 <summary>Lab1 Invoking DC basic setup</summary>
	 

Here the different basic commands for logic synthesis in Design compiler are mentioned
"target_library" and "link_library" refer to two important concepts related to technology libraries used in the synthesis process.

1. **Target Library**:

   - **Target Library** (also known as "Technology Library" or "Cell Library"): The target library is a collection of pre-designed standard cells (logic gates and flip-flops) that are specific to a particular semiconductor manufacturing process technology. These cells are characterized for their electrical and physical properties within that technology. Each cell in the library is designed to meet specific timing, power, and area requirements.

   - **Purpose**: The target library is essential in the synthesis process because it defines the set of building blocks (cells) that Design Compiler can use to implement the digital design. When we perform synthesis, Design Compiler maps the RTL (Register Transfer Level) code to these library cells to create a gate-level netlist.

   - **Usage**: we specify the target library when we start Design Compiler, and it becomes the basis for mapping and optimizing the design. For example, we would use a different target library for a design targeting a 28nm process than we would for a design targeting a 65nm process.

   Example command to specify the target library:
   ```
   set target_library /path/to/target_library.lib
   ```

2. **Link Library**:

   - **Link Library** (also known as "Design Library" or "User Library"): The link library is a user-defined or project-specific library that can be used to extend or supplement the target library. It allows us to include custom cells, black-boxed IP blocks, or other design elements that are not part of the standard target library.

   - **Purpose**: Designers often use link libraries to include custom IP cores, macros, or other non-standard cells required for a specific project. Link libraries allow us to use these custom cells in the design alongside the cells from the target library.

   - **Usage**: we can link a library to the design in Design Compiler using the "link_library" command. This makes the cells in the link library available for use in the design, and they can be instantiated in the RTL code.

   Example command to link a library:
   ```sh
   set link_library { * /path/to/link_library.lib }
   ```

By combining the target library with linked libraries, we can effectively create a comprehensive set of cells for the design, accommodating both standard cells from the target library and custom or project-specific cells from linked libraries.


3. **read_verilog**:
The `read_verilog` command in Synopsys Design Compiler is used to read and analyze Verilog RTL (Register Transfer Level) code. It is a crucial step in the synthesis process as it allows Design Compiler to understand and work with the digital design description.

Here's how to use the `read_verilog` command:

```
read_verilog /path/to/rtl_code.v
```
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day6/lab1_read_verilog.PNG">
</center>

This command instructs Design Compiler to read and analyze the Verilog file specified, creating an internal representation of the design in its database. After running this command, we can proceed with other synthesis and analysis steps, such as elaboration, logical synthesis, and timing analysis.


4. **Link**:
   - The `link` command is used to link or attach a library to the design in Design Compiler. This allows to use the cells from the linked library in the design alongside the cells from the target library. 

   Example:
   ```
   link /path/to/custom_library.lib
   ```

5. **Compile**:
   - The `compile` command is used to initiate the logical synthesis process. During this step, Design Compiler maps the RTL code to the cells in the target library and optimizes the design for area, speed, or other specified constraints.

   Example:
   ```
   compile
   ```
   <center>
	<img width="1085" alt="compile" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day6/lab1_compile.PNG">

</center>

6. **Write**:
   - The `write` command is used to generate and save the synthesized gate-level netlist in a specified format, such as Verilog. This netlist represents the design after logical synthesis and can be used for further steps in the design flow, such as physical design or simulation.

   Example:
   ```
   write -format verilog -output netlist.v
   ```

In this sequence of commands, we are linking a library, performing logical synthesis, and then writing the synthesized netlist in Verilog format to a file named "netlist.v." These commands, when executed in sequence, will generate a gate-level netlist in Verilog that represents the design after synthesis.

Generating the netlist without mentioning the target library will consider the default library 
 <center>
	<img width="1085" alt="compile" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day6/lab1_net.PNG">

</center>

</details>




<details>
 <summary>Lab2 Introduction to ddc gui with design vision</summary>

 The DDC (Design Database in C) format is a proprietary file format used by Synopsys tools for storing and representing design data, including netlists, constraints, timing information, and various design-related details. It allows Synopsys tools to efficiently read, write, and manipulate design data during various stages of the electronic design automation (EDA) process.

Here are some key characteristics and information about the DDC format:

1. **Binary Format**: DDC files are typically binary files, meaning they contain data in a format that is not directly human-readable. This binary format is designed for efficiency and compactness.

2. **Hierarchical**: DDC files can represent hierarchical designs, meaning they can store information about the organization of a design into logical modules, sub-modules, and so on. This is essential for representing complex integrated circuits.

3. **Design Data**: DDC files store a wide range of design-related information, including:
   - Gate-level or RTL (Register Transfer Level) netlists.
   - Timing information, such as setup and hold times.
   - Constraint files, specifying design constraints.
   - Physical design data, including placement and routing information.
   - Library information, such as cell libraries and technology files.
   - Information about cells, wires, and their attributes.

4. **Tool Interoperability**: DDC files facilitate interoperability between different Synopsys EDA tools in the design flow. Design data can be read by one tool, modified or analyzed, and then written back to the DDC format for use by other tools in the flow.

5. **Version-Specific**: The DDC format may evolve with different tool versions. It is important to use compatible versions of Synopsys tools to ensure proper reading and writing of DDC files.

6. **Encryption and Protection**: DDC files can also include encryption and protection mechanisms to secure the design data, particularly for IP cores and sensitive designs.

7. **Accessibility**: Access to the details of the DDC format is typically restricted to Synopsys tools and developers. It is not a publicly documented format like some other file formats.

It's important to note that while DDC is a powerful format for design data exchange and manipulation within the Synopsys toolchain, it is not intended to be a universal exchange format between different EDA vendors' tools. When working in a multi-vendor EDA environment, industry-standard formats like EDIF (Electronic Design Interchange Format) or LEF/DEF (Library Exchange Format/Design Exchange Format) are often used for design data exchange.

`read_ddc` and `read_verilog` are two different commands used in Synopsys Design Compiler (DC) for reading in design information, but they serve distinct purposes and are used in different contexts:

1. **`read_verilog`**:
   - This command is used to read Verilog RTL (Register Transfer Level) code into the Design Compiler environment.
   - `read_verilog` is typically used at the beginning of the synthesis flow to import the RTL design description written in Verilog.
   - It is often used when we have an RTL design that we want to synthesize and map to a target library to generate a gate-level netlist.

   Example:
   ```
   read_verilog /path/to/rtl_code.v
   ```
 <center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day6/lab2_read_verilog.PNG">

</center>

2. **`read_ddc`**:
   - The `read_ddc` command is used to read in a design that has been saved in the DDC (Design Database in C) format. DDC is a proprietary format used by Synopsys tools to store design information, including netlists, constraints, and other details.
   - `read_ddc` is typically used when we want to continue working on a design that was previously saved in the DDC format.
   - It allows you to load a previously synthesized or modified design for further analysis or modification within the Design Compiler environment.

   Example:
   ```sh
   read_ddc /path/to/netlist.ddc
   ```
 <center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day6/lab2_read_ddc.PNG">

</center>
In summary:

- `read_verilog` is used to read in the original RTL code in Verilog for synthesis.
- `read_ddc` is used to read in a previously saved design in DDC format for further analysis or modification within Design Compiler.

If we have an RTL design that we want to synthesize and we have the Verilog code available, we would typically use `read_verilog` to start the synthesis process. However, if we have a DDC-formatted design from a previous run or from another tool in the Synopsys toolchain, we would use `read_ddc` to work with that design in Design Compiler's GUI or command-line environment.

The gui representation of circuit can be shpwn as below
 <center>
	<img width="1085" alt="dc_vision" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day6/lab1_dc_vision.PNG">

</center>

</details>

<details>
 <summary>Lab3 DC Setup</summary>
The ".synopsis_dc.setup" file is a configuration or setup file used to customize the behavior of Design Compiler for a specific design project. This file typically contains various tool settings and options that control how Design Compiler performs synthesis and optimization for the digital design.

Here are some key points about the ".synopsis_dc.setup" file:

1. **Customization**: The ".synopsis_dc.setup" file allows designers to customize various aspects of the synthesis process. This includes specifying synthesis constraints, selecting optimization strategies, setting up timing constraints, and more.

2. **File Format**: It is typically a plain text file, and its format can vary depending on the version of Design Compiler and the specific options we want to configure. It often uses a simple key-value or keyword-based format.

3. **Contents**: The contents of this file can include directives for constraints, library mapping, optimization levels, clock tree synthesis settings, and other aspects of the synthesis flow. For example, we might specify the target technology library, clock definitions, area and timing constraints, and optimization goals.

4. **Project-Specific**: Each project may have its own ".synopsis_dc.setup" file tailored to its requirements. This allows designers to fine-tune the synthesis process for the specific goals and constraints of the project.

5. **Automation**: Using this setup file can be particularly useful for scripting and automating the synthesis flow. Designers can create and maintain these files to ensure consistent synthesis runs and results across different runs and environments.

6. **Version Compatibility**: The format and available options in the ".synopsis_dc.setup" file may evolve with different versions of Design Compiler. It's important to refer to the documentation and user guides for the specific version of the tool we are using to understand the supported options and file format.

7. **Location**: Typically, this setup file is located in the project directory or a directory where Design Compiler is executed. It should have a specific name ("synopsis_dc.setup") for the tool to recognize it.

8. **Comments**: It's common to include comments within the setup file to document the purpose of various settings and options. Comments are usually preceded by a "#" or "//" symbol, depending on the file format.

Here's a simplified example of what a ".synopsis_dc.setup" file might look like:

```plaintext
# Example .synopsis_dc.setup file

# Target library library
set target_library /path/to/db file

# link library
set link_library { * /path/to/db file }

```

This example file includes settings for the target library, and link library. Actual setup files can be much more complex, depending on the design requirements and the tool's capabilities.
The file name should be as mentioned above, a minor change in name of file and it wont read set the commands mentioned the setup file.

The gui representation of circuit can be shpwn as below
 <center>
	<img width="1085" alt="dc_vision" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day6/lab3_setup.PNG">

</center>

</details>

<details>
 <summary>Lab4 TCL Scripting</summary>
Tcl (Tool Command Language) is a scripting language used for automating tasks. In EDA, it's used to automate design processes. Here are loops in Tcl:

1. **While Loop**:
   - `while` is used for repeating a block of code as long as a condition is true.
   - Example:
     ```tcl
     set i 0
     while {$i < 5} {
         puts "Iteration $i"
         incr i
     }
     ```
 <center>
	<img width="1085" alt="while_loop" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day6/while_loop.PNG">

</center>

2. **For Loop**:
   - `for` is used for iterating over a range or a list.
   - Example:
   
     ```tcl
     for {set i 0} {$i < 5} {incr i} {
         puts "Iteration $i"
     }
     ```
 <center>
	<img width="1085" alt="for_loop" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day6/for_loop.PNG">

</center>

3. **Foreach Loop**:
   - `foreach` is used for iterating over elements in a list.
   - Example:
     ```tcl
     set var {a b c}
     foreach var $var {
         puts "variables $var"
     }
     ```
<center>
	<img width="1085" alt="foreach_loop" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day6/foreach_loop.PNG">

</center>
In short, Tcl is a scripting language used for automation. While loops repeat code while a condition is true, for loops iterate over a range, and foreach loops iterate over elements in a list. These constructs help automate repetitive tasks in EDA and other domains.

</details>

## Day-7-Basics of STA

<details>
	<summary>STA and delay modelling</summary>
	
Static Timing Analysis (STA) is a critical part of the VLSI (Very Large Scale Integration) design process, used to ensure that a digital circuit meets its timing requirements. STA helps in determining the worst-case timing delay within a circuit and ensures that all signals propagate correctly and meet the setup and hold time constraints. Here are some basics of Static Timing Analysis in VLSI:

1. **Setup and Hold Time**: These are key parameters in STA. 
   - **Setup Time**: The minimum amount of time a data input must be stable before the clock edge arrives for proper data capture.
   - **Hold Time**: The minimum amount of time a data input must be stable after the clock edge arrives for proper data capture.

2. **Clock Paths**: In STA, the circuit is divided into critical paths, and often the clock path is the most critical. It's the path that determines the highest clock frequency the circuit can operate at.

3. **Data Paths**: Data paths are the paths where the actual data propagation occurs. These paths also need to be analyzed to ensure data arrives at the right time.

4. **Clock-to-Q Delay**: This is the delay from the clock edge to the data output.

5. **Clock Skew**: Clock skew refers to the variation in arrival times of the clock signal at different elements of the circuit. Reducing clock skew is crucial to achieving better timing performance.

6. **Propagation Delay**: The time it takes for a signal to propagate from one point in the circuit to another. This includes both combinatorial logic delay and interconnect delay.

7. **Slack**: Slack is the difference between the time available for a signal to propagate and the time it actually takes. Negative slack indicates a violation of timing constraints.

8. **Max Delay and Min Delay**: STA calculates the maximum and minimum delay for each path in the circuit to ensure that signals meet their setup and hold time requirements.

9. **Constraints**: STA relies on user-defined constraints to specify clock frequencies, setup times, hold times, and other parameters. These constraints guide the analysis.

10. **Clock Domains**: VLSI designs often have multiple clock domains with different clock signals. STA must consider the interactions between these domains.

11. **Library Cells**: The characteristics of standard cells (logic gates) in a library, such as their delay and capacitance, are used in STA to estimate signal delays.

12. **Environmental Factors**: Temperature and voltage variations can affect signal delays and must be considered for accurate timing analysis.

In summary, Static Timing Analysis is a crucial step in VLSI design to ensure that digital circuits operate within specified timing constraints. It involves analyzing the worst-case delays, slack, and critical paths to guarantee correct circuit functionality at the target clock frequency. Designers use various tools and techniques to perform STA and optimize their designs for performance and reliability.

**Water Bucket Analogy with a Tap:**

Imagine you have a water tap and a bucket. The goal is to fill the bucket with water from the tap. This analogy can help illustrate the relationship between load capacitance, inflow of current, and delay in digital circuits:

1. **Water Tap:** The water tap represents the inflow of current. It is the source of water (current) that you control.

2. **Bucket:** The bucket represents the load capacitance. It has the ability to store a certain amount of water (charge).

3. **Filling the Bucket:** When you turn on the tap, water starts flowing into the bucket. The speed at which the bucket fills up depends on the flow rate from the tap (inflow of current) and the size of the bucket (load capacitance).

4. **Delay Modeling:** In this context, delay modeling corresponds to understanding how long it takes to fill the bucket to a certain level. This delay is a function of how fast water (current) flows from the tap and the capacity of the bucket (load capacitance).

- **Increasing Load Capacitance (Bigger Bucket):** If you replace the small bucket with a larger one, it will take longer to fill because it has a greater capacity. Similarly, in a digital circuit, increasing the load capacitance results in longer delay times because it takes more time to "fill" or charge the capacitance.

- **Increasing Inflow of Current (Higher Flow Rate):** If you increase the flow rate from the tap, the bucket will fill up more quickly. Likewise, in a digital circuit, increasing the inflow of current (driving strength) reduces delay times because it provides more current to charge the load capacitance quickly.

Just as in the water bucket analogy, in digital circuit design, optimizing delay involves finding the right balance between the load capacitance (size of the bucket) and the inflow of current (flow rate from the tap) to meet timing requirements while managing power and other constraints effectively.

### Timing arcs
In digital circuit design, timing arcs, also known as timing models or timing paths, are essential elements used to describe and analyze the timing behavior of electronic components, such as logic gates, flip-flops, and interconnects. These timing arcs define how signals propagate through these components and provide crucial information for static timing analysis (STA). Here are some key aspects of timing arcs:

1. **Propagation Delay:** A timing arc describes the delay associated with the transition of a signal from a source to a destination. It specifies how long it takes for a change in the source signal to be reflected at the destination. This delay is typically expressed in terms of time (e.g., picoseconds or nanoseconds).

2. **Rising and Falling Edges:** Timing arcs account for both rising-edge and falling-edge transitions of signals. For example, a rising-edge timing arc might describe the delay from when the input signal rises from 0 to 1 until the output signal at the destination reaches a specific voltage level.

3. **Transition Times:** Timing arcs may also specify the rise time and fall time of signals. These are the times it takes for a signal to transition between logic levels, and they can affect the overall propagation delay.

4. **Clock Domains:** Timing arcs often consider clock domains. They describe how signals synchronize with clock edges, ensuring that signals meet setup and hold time constraints in synchronous digital designs.

5. **Load Capacitance:** Timing arcs take into account the capacitive load at the destination. The load capacitance represents the total capacitance seen by the output driver, including the capacitance of interconnects and the inputs of downstream gates.

6. **Slew Rate:** Some timing arcs specify the rate of change of the signal voltage as it transitions from one logic level to another. Slew rate affects the signal quality and can impact timing.

7. **Multi-Mode and Multi-Scenario Analysis:** In complex designs, multiple timing arcs may be defined to account for different modes of operation or different scenarios, allowing for comprehensive timing analysis.

8. **Cell Delay vs. Interconnect Delay:** Timing arcs distinguish between cell delays (delays within standard logic gates) and interconnect delays (delays associated with wires and routing). This distinction is important for accurately modeling signal propagation.

9. **Clock-to-Q Delay:** In flip-flops and latches, timing arcs define the clock-to-Q delay, which specifies how long it takes for the input data to appear at the output after the clock edge.

10. **Worst-Case Analysis:** Timing arcs are often used in worst-case analysis to determine the slowest and fastest signal paths in a digital circuit, helping to identify critical paths and meet timing constraints.

Timing arcs are crucial for static timing analysis tools to calculate and verify that a design meets its timing requirements. They play a central role in ensuring that signals propagate correctly and synchronously within a digital circuit, which is essential for the reliable operation of electronic systems.

### Timing Paths:
1. **Register-to-Register (Reg-to-Reg) Timing Paths:**

   - **Description:** These paths involve signals transitioning between two sequential elements, typically flip-flops or latches.
   
   - **Constraints:** Reg-to-Reg paths are constrained primarily by clock-related parameters, including clock period (maximum delay), setup time (maximum delay), and hold time (minimum delay).

   - **Purpose:** The constraints on Reg-to-Reg paths ensure that data is transferred between registers reliably within the specified clock cycles while meeting setup and hold time requirements.

2. **Register-to-Output (Reg2Out) Timing Paths:**

   - **Description:** These paths involve signals traveling from a register to an output pin of a digital chip.
   
   - **Constraints:** Reg2Out paths are constrained by factors including external output delay, output load, and clock period. These constraints ensure that the output signal meets timing requirements.

   - **Purpose:** Constrained Reg2Out paths guarantee that output signals are launched correctly and meet the required timing criteria, considering external factors like board-level delays and loads.

3. **Input-to-Register (In2Reg) Timing Paths:**

   - **Description:** These paths involve signals coming from input pins and transitioning to registers in the digital chip.
   
   - **Constraints:** In2Reg paths are constrained by input external delay, input transition time, and clock period. These constraints ensure that input signals meet timing requirements when captured by registers.

   - **Purpose:** Constrained In2Reg paths guarantee that input signals are sampled correctly and meet setup time requirements when entering the chip.

It's important to note that in digital design, timing paths need to be constrained not only for maximum delay (setup) but also for minimum delay (hold). Meeting both setup and hold time constraints is essential for ensuring reliable data capture and propagation within a synchronous digital system.

The clock period constraint sets the maximum time allowed between consecutive clock edges, while setup and hold constraints ensure that data is captured reliably on the rising and falling edges of the clock signal, respectively.

Designers use these constraints and timing analysis tools to verify that a digital circuit operates correctly and reliably under different conditions, meeting timing requirements for both input and output paths.

</details>

<details>
	
<summary>Labs</summary>

### Timing dot lib file
A Timing .lib (library) file, often referred to as a Liberty file, is a crucial component in digital design and static timing analysis (STA). It provides detailed information about the timing characteristics and performance of standard cells (logic gates) and other library elements used in digital integrated circuit designs. Here are the key aspects of a Timing .lib file:

1. **Cell Library Information:** The .lib file contains information about the cells available in the library, including their names, types (AND, OR, Flip-Flop, etc.), and attributes. It defines the building blocks that designers use to create digital circuits.

2. **Timing Models:** Timing .lib files specify the timing models for each cell. These models include information about delay, transition time, power consumption, and more. The primary timing characteristics include:

   - **Cell Delay:** This is the time it takes for a signal to propagate through the cell, considering both the internal logic delay and any interconnect delay.

   - **Rise and Fall Delay:** These are the delays associated with rising-edge and falling-edge transitions of signals passing through the cell.

   - **Slew Rate:** It defines the rate of signal voltage transition at the cell's output.

   - **Setup and Hold Time:** These parameters specify when input data must be stable relative to the clock edge for proper capture by flip-flops or latches.

   - **Clock-to-Q Delay:** In flip-flops, it specifies the delay from the clock edge to the data output.

   - **Power Consumption:** The .lib file may include power-related information, such as static power and dynamic power, which is essential for power analysis.

3. **Constraints and Corner Cases:** Timing .lib files often include information for different operating conditions or process corners, such as typical, worst-case, or best-case scenarios. These variations account for manufacturing process variations and temperature extremes.

4. **Library Characterization:** The .lib file may provide statistical data, such as mean and standard deviation, to account for manufacturing variations and allow for statistical STA (SSTA).

5. **Interconnect Models:** In addition to cell-specific timing models, .lib files may contain interconnect models that describe the behavior of wires and routing resources, including resistance, capacitance, and propagation delays.

6. **Technology-Specific Information:** The .lib file is highly technology-specific and is generated during the characterization process for a particular semiconductor manufacturing process (e.g., 65nm CMOS, 7nm FinFET, etc.).

7. **Tool Compatibility:** The format and contents of Timing .lib files are standardized to be compatible with Electronic Design Automation (EDA) tools used for digital design and STA, such as synthesis, place-and-route, and timing analysis tools.

Designers and EDA tools rely on Timing .lib files to perform static timing analysis, optimize circuit performance, and ensure that digital designs meet their timing requirements. These files are a crucial part of the digital design ecosystem and play a key role in achieving the desired functionality, speed, and power consumption in integrated circuits.

### Delay modeling using lookup table
A Delay Model Lookup Table, often referred to as a Delay Model LUT or simply a LUT (Lookup Table), is a data structure used in digital circuit design and static timing analysis (STA). It provides a way to store and retrieve information about signal propagation delays for various combinations of input conditions. Here's what you need to know about Delay Model Lookup Tables:

1. **Purpose:** Delay Model Lookup Tables are used to capture and represent the delay behavior of specific elements or paths in a digital circuit. They are particularly valuable for modeling complex or non-linear delay characteristics that cannot be easily expressed using simple mathematical functions.

2. **Delay Modeling:** In digital design, signal propagation delays can vary based on factors such as input values, input transitions, input load capacitance, and more. Delay Model Lookup Tables allow designers to capture these variations by specifying the delay for different input conditions.

3. **Data Structure:** A Delay Model Lookup Table is typically organized as a multi-dimensional array or table. Each dimension corresponds to a specific input condition or parameter that affects delay, such as input A value, input B value, input transition time, or load capacitance.

4. **Data Entries:** Within the table, each entry stores the delay value for a particular combination of input conditions. These entries are pre-characterized or extracted through simulation or measurement for specific library elements, like standard cells or interconnects.

5. **Interpolation:** In some cases, when the table does not contain an exact match for a specific set of input conditions, interpolation may be used to estimate the delay based on neighboring entries in the table. This allows for a more accurate prediction of delay under varying conditions.

6. **Use in Static Timing Analysis:** Static Timing Analysis tools use Delay Model Lookup Tables to calculate and predict signal arrival times, clock-to-Q delays, setup times, hold times, and other critical timing parameters within a digital circuit. These tools reference the tables to determine the delays for specific paths or cells in the design.

7. **Library Elements:** Delay Model Lookup Tables are commonly associated with library elements, including logic gates, flip-flops, and interconnects. Each library element may have its own table, allowing for detailed delay characterization.

8. **Technology-Specific:** Delay Model Lookup Tables are highly technology-specific and are generated during the library characterization process for a particular semiconductor manufacturing process. Different technologies and process nodes may require different tables due to process variations.

By using Delay Model Lookup Tables, designers and STA tools can accurately account for the variations in signal propagation delays caused by different input conditions and ensure that digital circuits meet their timing requirements under various scenarios. These tables are an essential component of modern digital design and STA methodologies.

### Unateness
Unateness is a concept in digital logic that characterizes the behavior of a Boolean function with respect to a specific variable. It describes whether a change in the input variable has a predictable effect on the output of the function. A variable is considered unate with respect to a function if it exhibits a consistent behavior: either an increase in the variable always increases the output or always decreases the output. There are two main types of unateness:

1. **Positive Unate (PU):**
   - A variable is considered positively unate with respect to a function if, for all possible input combinations, increasing the variable value (from 0 to 1) always increases the output of the function.
   - Mathematically, if F(x) is the Boolean function and x is a variable, then x is positively unate with respect to F if and only if:
     - F(x=0) ≤ F(x=1)

2. **Negative Unate (NU):**
   - A variable is considered negatively unate with respect to a function if, for all possible input combinations, increasing the variable value (from 0 to 1) always decreases the output of the function.
   - Mathematically, if F(x) is the Boolean function and x is a variable, then x is negatively unate with respect to F if and only if:
     - F(x=0) ≥ F(x=1)

In addition to positive unateness (PU) and negative unateness (NU), there's a third category:

3. **Binate (BI) or Non Unate:**
   - A variable is considered binate with respect to a function if its behavior is not strictly positive unate or negative unate. In other words, there are cases where increasing the variable value may increase the output, and there are cases where increasing the variable value may decrease the output.
   - Mathematically, a variable x is binate with respect to F if there exist at least one input combination i and one input combination j (i ≠ j) such that:
     - F(x=i) ≤ F(x=j) and F(x=i) ≥ F(x=j)

Understanding unateness is essential in various aspects of digital logic and circuit optimization:

- **Logic Optimization:** Unate variables can often be easily optimized out of a Boolean function, simplifying the logic and reducing the number of gates or terms in the expression.

- **Timing Analysis:** Unateness can impact the timing behavior of digital circuits. For example, positively unate variables tend to have simpler and faster timing characteristics, while negatively unate variables may introduce more complex delays.

- **Technology Mapping:** In the process of mapping a Boolean function onto a specific technology library (e.g., ASIC or FPGA), knowledge of unateness can guide the selection of appropriate library elements.

- **Functional Verification:** Unateness analysis can help identify redundant or irrelevant variables in a design, aiding in functional verification efforts.

In summary, unateness is a concept used to characterize the behavior of variables in Boolean functions and is an important consideration in digital logic design and optimization. It helps determine how changes in variables affect the behavior of logical functions and can guide design decisions to improve circuit performance and simplify logic expressions.

And cell pin
```
        pin ("A") {
            capacitance : 0.0016000000;
            clock : "false";
            direction : "input";
            fall_capacitance : 0.0015630000;
            internal_power () {
                fall_power ("power_inputs_1") {
                    index_1("0.0100000000, 0.0230506000, 0.0531329000, 0.1224740000, 0.2823110000, 0.6507430000, 1.5000000000");
                    values("0.0028340000, 0.0028350000, 0.0028374000, 0.0028381000, 0.0028398000, 0.0028435000, 0.0028523000");
                }
                rise_power ("power_inputs_1") {
                    index_1("0.0100000000, 0.0230506000, 0.0531329000, 0.1224740000, 0.2823110000, 0.6507430000, 1.5000000000");
                    values("-0.002302000, -0.002304800, -0.002311300, -0.002307200, -0.002297900, -0.002276400, -0.002226700");
                }
            }
            max_transition : 1.5000000000;
            related_ground_pin : "VGND";
            related_power_pin : "VPWR";
            rise_capacitance : 0.0016370000;
        }
```
Unateness of AND gate
```
                related_pin : "A";
                rise_transition ("del_1_7_7") {
                    index_1("0.0100000000, 0.0230506000, 0.0531329000, 0.1224740000, 0.2823110000, 0.6507430000, 1.5000000000");
                    index_2("0.0005000000, 0.0012265500, 0.0030088400, 0.0073809800, 0.0181063000, 0.0444164000, 0.1089580000");
                    values("0.0274992000, 0.0366333000, 0.0595508000, 0.1173182000, 0.2624949000, 0.6204234000, 1.4924092000", \
                        "0.0274641000, 0.0367120000, 0.0594145000, 0.1171731000, 0.2626016000, 0.6211412000, 1.4940631000", \
                        "0.0274866000, 0.0367100000, 0.0595502000, 0.1170192000, 0.2618886000, 0.6194957000, 1.4923682000", \
                        "0.0286739000, 0.0376392000, 0.0600514000, 0.1174412000, 0.2631610000, 0.6217848000, 1.4923507000", \
                        "0.0319919000, 0.0406756000, 0.0626975000, 0.1189916000, 0.2626313000, 0.6204083000, 1.4973701000", \
                        "0.0410414000, 0.0486958000, 0.0680830000, 0.1214559000, 0.2646635000, 0.6178478000, 1.4919401000", \
                        "0.0573377000, 0.0660958000, 0.0833266000, 0.1301706000, 0.2655788000, 0.6223080000, 1.4866247000");
                }
                timing_sense : "positive_unate";
                timing_type : "combinational";
```

list of AND gates in loaded library
<center>
	<img width="1085" alt="and_gates" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day7/and_list.PNG">

</center>

Getting functionality of a cell in dc_shell
<center>
	<img width="1085" alt="functionality" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day7/functionality.PNG">

</center>



Script for printing output pin name and its functionality in dc_shell

```
set my_list [list sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4_1 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4_2 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4_4 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4b_1 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4b_2 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4b_4 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4bb_1 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4bb_2 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4bb_4 ]

#For each cell in list, find the output pin name and its functionality

foreach my_cell $my_list {
	foreach_in_collection my_lib_pin [get_lib_pins ${my_cell}/*] {
		set my_lib_pin_name [get_object_name $my_lib_pin];
		set dir [get_lib_attribute $my_lib_pin_name direction];
		if {$dir == 2 } {
			set fun [get_lib_attribute $my_lib_pin_name function];
			echo $my_lib_pin_name $dir $fun;
		}
	}
}

```
Output of above script:

<center>
	<img width="1085" alt="my_script_outout" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day7/my_script_output.PNG">
	
</center>

</details>

## Day-8 Advanced Constraints

<details>
<summary>Clock Terminologies</summary>
	In Very Large Scale Integration (VLSI) design, constraints are essential specifications and limitations that guide the synthesis and optimization of an integrated circuit (IC). These constraints define various aspects of the design, including timing, area, power, and functionality, and they play a crucial role in ensuring that the final chip meets the desired specifications and performance criteria.

Constraints in VLSI design typically include:

1. **Timing Constraints**: These constraints specify the desired clock frequency, setup time, hold time, and other timing requirements for the design. Timing constraints ensure that signals propagate correctly through the circuit within the specified clock cycles.

2. **Area Constraints**: These constraints define the maximum allowable silicon area for the chip. They are crucial for managing chip size and cost.

3. **Power Constraints**: Power constraints limit the power consumption of the chip, which is especially important for battery-powered devices and to prevent overheating.

4. **Functional Constraints**: Functional constraints define the behavior and functionality of the design, including logical operations, state machine behavior, and input/output behavior.

5. **I/O Constraints**: These constraints specify the requirements for input and output pins, such as voltage levels, drive strengths, and electrical characteristics.

6. **Clock Constraints**: Clock constraints specify details about the clock signal, including clock sources, clock tree synthesis requirements, and clock gating rules.

7. **False Path Constraints**: These constraints specify paths in the design that should not be considered during timing analysis. This is useful when certain paths are known to be irrelevant for performance or have specific timing requirements.

8. **Multicycle Path Constraints**: Multicycle path constraints allow for specific paths to have different timing requirements, often extending over multiple clock cycles.

To implement constraints in VLSI design using Synopsys Design Constraints in Design Compiler (DC), you typically follow these steps:

1. **Create a Constraint File**: Create a text-based constraint file (commonly with a `.sdc` extension) that specifies the constraints for your design. This file should include constraints for timing, area, power, I/O, clock, and any other relevant aspects. 

2. **Specify Timing Constraints**: Use commands in the SDC file to specify timing constraints. For example, you can define clock frequencies, setup and hold times, and false paths. Here's an example of how to specify clock frequency in an SDC file:

   ```tcl
   create_clock -period 10 [get_ports clk]
   ```

   This command sets the clock period for a signal named `clk` to 10 units of time (e.g., nanoseconds).

3. **Define Area and Power Constraints**: Use appropriate commands in the SDC file to set area and power constraints. For instance, you can specify maximum chip area and power consumption limits.

4. **Input/Output Constraints**: Define input and output constraints, including I/O voltage levels, drive strengths, and electrical characteristics.

5. **Clock Constraints**: Specify clock constraints such as clock sources, clock gating rules, and any other clock-related requirements.

6. **Multicycle and False Path Constraints**: If your design has multicycle or false paths, use the appropriate commands in the SDC file to specify these constraints.

7. **Apply Constraints in Design Compiler**: When running the synthesis process with Design Compiler, include the SDC file as part of the input to ensure that the tool uses the constraints during synthesis.

Here's an example of how to use an SDC file in Design Compiler:

```bash
design_compiler -f <your_script>.tcl -sdc <your_constraints>.sdc
```

In this command, `<your_script>.tcl` is your synthesis script, and `<your_constraints>.sdc` is your SDC constraint file.

By providing comprehensive constraints in the SDC file, you guide the synthesis and optimization tools like Design Compiler to meet your design specifications and constraints during the design process, ensuring that the final IC meets the desired performance, power, and area requirements.


# what needs to be constrained for clocks 
When constraining clocks in VLSI design, you need to specify various parameters and characteristics to ensure that the clock signals operate correctly and meet the required timing and synchronization criteria. Here are the key aspects that need to be constrained for clocks:

1. **Clock Frequency (or Period)**:
   - Specify the desired clock frequency (in hertz) or clock period (in seconds) for each clock domain in your design.
   - Ensure that the clock frequency constraints align with the overall timing requirements of the design.

2. **Clock Source**:
   - Identify the source of each clock signal, whether it's generated on-chip by an oscillator or received from an external source.
   - Define the characteristics of the clock source, such as frequency stability and jitter, if applicable.

3. **Clock Domain**:
   - Partition your design into distinct clock domains if you have multiple clock sources or regions with different clocking requirements.
   - Clearly specify which logic elements belong to each clock domain.

4. **Clock Skew**:
   - Set constraints on the allowable clock skew, which is the maximum acceptable variation in the arrival times of the clock signal at different points within a clock domain.
   - Minimize clock skew to ensure synchronous operation and meet setup and hold time requirements.

5. **Clock Edges**:
   - Define the clock edges that should be used for capturing data in flip-flops. Typically, you specify rising or falling edges.
   - Ensure that all flip-flops within a clock domain are triggered on the same edge for synchronization.

6. **Clock Uncertainty**:
   - Specify the maximum allowable uncertainty or jitter in the clock signal arrival times, considering factors like clock distribution, routing, and manufacturing variations.
   - Ensure that clock uncertainty does not exceed acceptable levels for your design.

7. **Clock-to-Q Delay**:
   - Set constraints on the clock-to-Q delay for flip-flops, indicating the maximum time it takes for an output signal to change after a clock edge.

8. **Clock Gating**:
   - Define rules for applying clock gating techniques, specifying when and how clock gating should be used to reduce power consumption when parts of the circuit are inactive.

9. **Clock Domain Crossing (CDC)**:
   - Address clock domain crossing issues by specifying synchronization mechanisms, ensuring that data is correctly transferred between different clock domains.

10. **Clock Jitter**:
    - Constrain clock jitter, both duty cycle jitter and period jitter, to minimize timing uncertainties and maintain signal integrity.
    - Use constraints to specify acceptable levels of jitter for your design.

11. **Clock Synchronization**:
    - Implement synchronization techniques, such as two-flop synchronizers or asynchronous FIFOs, as necessary when dealing with multiple clock domains.

12. **Clock Quality Metrics**:
    - Define and measure clock quality metrics, including clock skew, clock jitter, and duty cycle, to ensure they meet the design specifications.

13. **Clock Tree Synthesis (CTS)**:
    - Utilize CTS tools to automatically generate a clock distribution network that adheres to your clock constraints.

By carefully constraining these aspects of clock signals in your VLSI design, you ensure that the clocks operate reliably, meet timing requirements, and synchronize data correctly within and across clock domains, contributing to the overall success of your integrated circuit.


```
create_clock -name <clock_name> -per <period> [clock definition point]
create_clock -name MY_CLK -per 5 [get_ports CLK]

Note: Clocks must be created on the clock generators (PLL, OSCILLATORS) or Primary IO Pins (For External Clocks). Clocks should not be created on hierarichal pins which are not clock generators

```
Clock Distribution: Bringing in the practicalities of clock network(latency, uncertainty)

```
create_clock -name MY_CLK -per 5 [get_ports CLK]
set_clock_latency 3 MY_CLK; #This is the latency, modelling the clock delay in the network
set_clock_uncertainty 0.5 MY_CLK; #This is for setting the clock network(skew + jitter) This needs to be mpdified POST CTS to reflect only jitter

set_clock_uncertainty 0.2 MY_CLK #POST CTS (only jitter if skew were 0.3)

```
** Clocks - Waveform **
50% DC clock starting phase is high
```
create_clock -name MYCLK -per 10 [get_ports clk] #this is default

```
50% DC clock starting phase is low
```
create_clock -name MYCLK -per 10 [get_ports clk] -wave {5 10}

```
50% DC clock starting phase is high, starting edge not at 0
```
create_clock -name MYCLK -per 10 [get_ports clk] -wave {2.5 7.5}

```

25% DC clock starting phase is low
```
create_clock -name MYCLK -per 10 [get_ports clk] -wave {0 2.5}

```

* Constraining the IO Paths *

```
set_input_delay-max 3-clock [get_clocks MY CLK] [get_ports IN_"];

set_input_delay-min 0.5-clock [get_clocks MY CLK] [get_ports IN_"]; set_input_transition-max 1.5 [get_ports IN "];

set_input_transition-min .75 [get_ports IN_"];

#NOTE: Both inputs IN A, and IN B are coming w.r.t clock MY CLK created on port CLK
```

```
set_output_delay-max 3-clock [get_clocks MY CLK] [get_ports Out_Y"];

set_output_delay-min 0.5-clock [get_clocks MY CLK] [get_ports Out_Y"];
set_input_transition-max 1.5 [get_ports Out_Y"];

set_input_transition-min .75 [get_ports Out_Y"];

#NOTE: Output Out_Y is generated w.r.t clock MY CLK created on port CLK
```

</details>
<details>
	<summary> LABs </summary>
commands




```
read_verilog lab8_circuit.v 
link
compile_ultra
```

The entire design is in one hierarchy so there is no hierarchical cells
Reference name: name of a physical cell in dot lib

```
read_verilog lab8_circuit.v
```
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/read_verilog.PNG">

</center>

```
compile_ultra
```
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/compile_ultra.PNG">

</center>

nets
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/nets.PNG">

</center>

ports
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/ports.PNG">

</center>

```
get_cells *  
```
In digital design net can have only one driver
Multi driven net should be avoided it will make logic load corrupt
* getting the pin names with their direction
```
foreach_in_collection my_pin [all_connected n5] {
	set pin_name [get_object_name $my_pin];
	set dir [get_attribute [get_pins $pin_name] direction];
	echo $pin_name $dir;                                                                                                                                                                                               }
```
pin_names
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/pin_names.PNG">

</center>

cells
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/get_cells.PNG">

</center>

reference names
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/reference_names.PNG">

</center>

```
get_attribute [get_pins <pin_name>} clock #is the pin meant to be clock pin or not
get_attribute [get_pins <pin_name>} clocks #what are the clocks reaching the pin
```

gui view
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/gui_view.PNG">

</center>
creating clock
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/creating_clock.PNG">

</center>

creating clock wave
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/creating_clock_wave.PNG">

</center>

```
set_clock_latency -source 1 [get_clocks MYCLK] #latency for source 
set_clock_latency -source 1 [get_clocks MYCLK] #latency for without source
set_clock_uncertainty 0.5 [get_clocks MYCLK] #maximum uncertainty, default is maximum (setup time)
set_clock_uncertainty -hold 0.1 [get_clocks MYCLK] #minimum uncertainty(hold)
report_timing –to REGC_reg/D
```

<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/generated_clock.PNG">

</center>

Timing report without clock

<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/timing_report_without_clock.PNG">

</center>

Timing report with clock
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/timing_report_with_clock.PNG">

</center>

Timing report clock modified

<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/report_clock_modified.PNG">

</center>

Timing report with clock constraints
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/timing_report_with_clock_constraints.PNG">

</center>
Timing report with clock constraints hold
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/timing_report_with_clock_constraints_hold.PNG">

</center>

Timing report with clock constraints setup
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/timing_report_with_clock_constraints_setup.PNG">

</center>

Timing report with input constraints
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/timing_report_with_input_constraints.PNG">

</center>

The report_port in verbose mode is shown as below

<pre>****************************************
Report : port
        -verbose
Design : lab8_circuit
Version: T-2022.03-SP5-1
Date   : Mon Sep 11 15:45:03 2023
****************************************


                       Pin      Wire     Max     Max     Connection
Port           Dir     Load     Load     Trans   Cap     Class      Attrs
--------------------------------------------------------------------------------
IN_A           in      0.0000   0.0000   --      --      --         
IN_B           in      0.0000   0.0000   --      --      --         
clk            in      0.0000   0.0000   --      --      --         
rst            in      0.0000   0.0000   --      --      --         
OUT_Y          out     0.0000   0.0000   --      --      --         
out_clk        out     0.0000   0.0000   --      --      --         


              External  Max             Min                Min       Min
              Number    Wireload        Wireload           Pin       Wire
Port          Points    Model           Model              Load      Load
--------------------------------------------------------------------------------
IN_A               1      --              --              --        -- 
IN_B               1      --              --              --        -- 
clk                1      --              --              --        -- 
rst                1      --              --              --        -- 
OUT_Y              1      --              --              --        -- 
out_clk            1      --              --              --        -- 

                    Input Delay
                  Min             Max       Related   Max
Input Port    Rise    Fall    Rise    Fall   Clock  Fanout
--------------------------------------------------------------------------------
IN_A          --      --      --      --      --      -- 
IN_B          --      --      --      --      --      -- 
clk           --      --      --      --      --      -- 
rst           --      --      --      --      --      -- 


               Max Drive      Min Drive      Resistance    Min    Min       Cell
Input Port    Rise    Fall   Rise    Fall   Max     Min    Cap    Fanout    Deg
--------------------------------------------------------------------------------
IN_A          --      --     --      --     --      --     --     --        -- 
IN_B          --      --     --      --     --      --     --     --        -- 
clk           --      --     --      --     --      --     --     --        -- 
rst           --      --     --      --     --      --     --     --        -- 


               Max Tran        Min Tran
Input Port    Rise    Fall    Rise    Fall
--------------------------------------------------------------------------------
IN_A          --      --      --      -- 
IN_B          --      --      --      -- 
clk           --      --      --      -- 
rst           --      --      --      -- 


                    Output Delay
                  Min             Max      Related  Fanout
Output Port   Rise    Fall    Rise    Fall  Clock     Load
--------------------------------------------------------------------------------
OUT_Y         --      --      --      --      --      0.00
out_clk       --      --      --      --      --      0.00
</pre>





```
set_input_delay –max 5 –clock [get_clocks MYCLK] [get_ports IN_A]
set_input_delay –max 5 –clock [get_clocks MYCLK] [get_ports IN_B]
set_input_delay –min 1 –clock [get_clocks MYCLK] [get_ports IN_A]
set_input_delay –min 1 –clock [get_clocks MYCLK] [get_ports IN_B]

set_load –max 0.4 [get_ports OUT_Y]
report_timing –to OUT_Y –cap –trans –nosplit
 set_load –min 0.1 [get_ports OUT_Y]

```

Generated clock
Let us say, the spec for the output Out_y is as follows 
The output Out_y is constrained with the clock leaving the module
Logically it is the same as MY_CLK defined on port CLK
Is it Physically same? answer is no, there will be routing delay and for synthesis purpose this will be modelled by latency.

Generated clocks are always created with respected to master clocks : clocks at clock source or primary IO pins

```
create_generated_clock –name MY_GEN_CLK –master [get_clocks MY_CLK] –source [get_ports CLK] –div 1 [get_ports OUT_CLK] 

```
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/generated_clock.PNG">

</center>

```
foreach_in_collection my_points [all_fanout -from IN_A] {
set my_pnt_name [get_object_name $my_points];
set my_cell_name [get_attribute [get_cells -of_objects [get_pins $my_pnt_name]] ref_name]; 
echo $my_pnt_name $my_cell_name;
}
```
All fanouts
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/all_fanouts.PNG">

</center>

All fanins

<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/all_fanins.PNG">

</center>

All inputs

<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/all_inputs.PNG">

</center>

```
set_input_delay –max 3 –clock myclk [get_ports IN_A]
```

clock period – uncertainty – i/p delay = availabole time
 10-0-3 = 7ns
 

```
set_input_delay –max -3 –clock myclk [get_ports IN_A]
```

Here please note delay is -3, so the total available time becomes 13ns,
Here the clock got delayed compared to the data, 

```
set_input_delay –min 1  –clock myclk [get_ports IN_A]
```

Relaxing the path

```
set_input_delay –min -1  –clock myclk [get_ports IN_A]
```

Tightening the path

```
set_output_delay –max  3 –clock myclk [get_ports OUT_Y]
```


For purely combo logic io constraints can be set using the following command, we have to set max latency for purely combo logic

```
set_max_latency 1.0 –from [get_ports IN_C] –to [get_ports OUT_Z]
set_max_latency 1.0 –from [get_ports IN_D] –to [get_ports OUT_Z]
```

By performing above commands in dc_shell:
Timing reports for this path
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/timing_before_compile.PNG">

</center>

The latency added to this path is not optimized, therefore we can see the slack violation. If we do compile_ultra here, the tool will optimize the design in order to meet the timing.

Timing after compile is as follows:
<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/timing_after_compile.PNG">

</center>

It can also be constrained using virtual logic as follows
 * Lab on Virtual Clock


```
create_clock –name MYVVCLK –period 5
```

<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/virtual_clock.PNG">

</center>

A virtual clock does not have any clock definition point and therefore it is inferred as a virtual clock, virtual clock is imaginary clock for budgeting the time, that’s why it does not defined on any pin or port

```
set_output_delay –max 2.5 –clock MYVCLK [get_ports OUT_Z]
set_input_delay –max 1.5 –clock MYVCLK [get_ports IN_C]
set_input_delay –max 1.5 –clock MYVCLK [get_ports IN_D]
```

Note: For virtual clock there is no latency, there is no clock definition point

Timing for this path before virtual clock:

<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/timing_without_virtual_clock.PNG">

</center>

Timing after creating virtual clock:

<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/virtual_clock_timing_before_compile.PNG">

</center>
Here also the design is not optimized, we need to run compile_ultra
After running compile_ultra timing is met

<center>
	<img width="1085" alt="read_verilog" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day8/virtual_clock_timing_after_compile.PNG">

</center>


*Constraining input delay for two different flops giving input to IN_A through some combo logic, the FF1 has pos edge clock and has path delay of 2ns and FF2 has neg edge clock and path delay of 3ns

```
set_input_delay –max 2 –clock CLK [get_ports IN_A]
set_input_delay –max 3 –clock CLK –clock_fall –add [get_ports IN_A]
```

Here –clock_fall switch is used to specify the annotated delay is with respect to the neg edge
-add is used to specify that append this constraint to the already existing constraint otherwise it will be overwrite.
Same can be done for output delay, if it has two different clock edges

set_driving_cell

```
set_input_transition –max 0.15 [get_ports IN_A]
```

Recommended for top level module IOs

```
set_driving_cell –lib_cell <lib_cell_name> <ports>
set_driving_cell –lib_cell sky130_fd_sc_hd__buf_1 [all_inpus]
```

Recommended for module-level IOs



</details>


## Day-9 Optimizations
<details>
	
<summary> Introduction </summary>

## Optimization Goals:

1. **Cost Function-Based Optimizations:**
   - In VLSI design, optimizations are driven by cost functions.
   - The goal is to optimize a design until a predefined cost threshold or budget is met.
   - Over-optimizing one aspect can negatively impact other design goals.

2. **Contradictory Optimization Goals:**
   - Different optimization goals can conflict with each other.
   - Three primary metrics often at odds in VLSI design are:
     - **Meet Timing:** Achieving faster signal propagation, which tends to increase power consumption and area usage.
     - **Meet Area:** Reducing chip size by using smaller cells, often at the expense of timing performance.
     - **Meet Power:** Minimizing power consumption, which may affect both timing and area.

3. **Cost Function Components for Timing and Area:**
   - For timing optimization:
     - Cost components include IO Delay, clock period, and maximum delay.
   - For area optimization:
     - Cost components include area size and power consumption.

## Goals for Synthesis:

In VLSI synthesis, several conflicting objectives need to be considered:

1. **Meet Timing:**
   - Ensure that signals meet specified timing constraints.
   - Achieved by optimizing signal paths, reducing delays, and optimizing clock distribution.

2. **Meet Area:**
   - Minimize the physical chip area.
   - Achieved by using smaller and more compact cells and optimizing layout.

3. **Meet Power:**
   - Minimize dynamic and static power consumption.
   - Achieved by techniques like gate sizing, voltage scaling, and clock gating.

</details>

<details>
	
<summary> Combinational Logic Optimization </summary>

Combinational logic optimization is a critical aspect of VLSI design focused on improving the logic circuits within the design:

1. **Logic Squeezing:**
   - Refers to optimizing the logic design to achieve the most efficient configuration.
   - Aims to reduce gate count and critical paths.

2. **Area and Power Savings:**
   - Primary objectives are to save chip area and reduce power consumption.

3. **Constant Propagation:**
   - A technique used to simplify logic by propagating constant values through the circuit.

4. **Direct Optimization:**
   - Involves direct manipulation of logic equations to reduce complexity and improve performance.

5. **Boolean Logic Optimization:**
   - Techniques like Karnaugh Maps (K-maps) and Quine-McCluskey are used to optimize Boolean logic expressions.
  

**Resource Sharing:**

   - **Insight:** Resource sharing aims to reduce the overall usage of logic gates and other resources in a VLSI design by sharing components across multiple parts of the design where possible. This optimization technique can significantly reduce the chip's area and power consumption.

   - **Example:** Consider two parts of a circuit that perform similar operations, each requiring an adder. Instead of using two separate adders, resource sharing could involve using a single adder shared between both parts. This reduces the total number of adder cells used in the design.

   - **Implementation with Design Compiler:** Design Compiler can automatically identify opportunities for resource sharing during synthesis. It looks for similar logic operations and combines them into a single resource where feasible.

**Logic Sharing:**

   - **Insight:** Logic sharing focuses on minimizing the redundancy in logic circuits by reusing common subcircuits or logic blocks. This optimization can lead to a reduction in gate count, area, and power consumption.

   - **Example:** Imagine two parts of a design that both require a comparator to perform equality checks. Instead of instantiating two separate comparators, logic sharing involves creating a single comparator and routing the inputs and outputs appropriately for both parts of the circuit. This approach reduces the overall logic complexity.

   - **Implementation with Design Compiler:** The Design Compiler employs various logic optimization techniques, including logic sharing, to eliminate redundant logic blocks and reduce gate counts.

**Balanced vs. Preferential Implementation:**

   - **Insight:** This technique involves making decisions during synthesis about whether to optimize for balanced usage of resources (such as gates, flip-flops, and routing) across the chip or to favor certain regions or paths to meet specific design goals. It's a trade-off between uniform resource utilization and performance optimization.

   - **Example:** In a chip design where there are critical and non-critical paths, balanced implementation would distribute resources evenly across the chip, which may result in longer critical paths. Preferential implementation, on the other hand, would allocate more resources to critical paths to meet timing constraints, potentially at the expense of area efficiency in non-critical areas.

   - **Implementation with Design Compiler:** Design Compiler allows designers to specify constraints and preferences, enabling them to guide the synthesis tool to favor certain paths or areas. It provides control over resource allocation based on design requirements.

</details>

<details>
	<summary>Sequential Logic Optimizations</summary>
	
Sequential logic optimization is a crucial aspect of digital design, focused on improving the performance, area utilization, and power efficiency of sequential circuits, such as flip-flops and registers. This process involves techniques like sequential constant propagation, which identifies flip-flops with constant outputs, and the removal of unloaded outputs, where unused flip-flops are eliminated. Design Compiler (DC), a popular synthesis tool, provides commands and Boolean variables that enable designers to control these optimizations based on their specific design requirements.

**Sequential Constant Propagation:**

- **Definition:** Sequential constant propagation is a process where the synthesis tool identifies flip-flops (flops) in the design whose output (Q) remains constant, regardless of changes in input signals and reset conditions. These flops can be optimized to a constant value of 0 or 1.

- **How it Works:** Sequential constant propagation involves analyzing the flip-flops in the design to determine if their Q outputs are independent of their D inputs and reset signals. If a flip-flop meets the criteria (i.e., Q is always 0 or 1), the synthesis tool can optimize it to a constant value, eliminating the need for logic associated with that flop.

- **Significance:** This optimization reduces power consumption and area utilization in the design, as it eliminates unnecessary logic gates and routing associated with the constant-value flops.

**Optimization of Unloaded Outputs:**

- **Definition:** Unloaded outputs, in the context of sequential logic, refer to flip-flops whose outputs (Q) are not connected to any subsequent logic gates or do not affect the functionality of the overall circuit.

- **Optimization:** During the optimization process, the synthesis tool identifies and removes these unloaded flip-flops from the design. This removal can significantly reduce the area footprint of the design, leading to more efficient utilization of resources.

- **Impact on Design:** The removal of unloaded outputs does not affect the functionality of the circuit, but it can improve timing and reduce area, which is essential for optimizing the design for performance and area constraints.

**Controlling Sequential Optimizations in DC:**

Design Compiler (DC) provides several commands and Boolean variables to control sequential optimizations:

1. `compile_seqmap_propagate_constants`:
   - This command allows you to control the sequential constant propagation optimization.
   - By setting this variable, you can enable or disable the optimization based on your design requirements.
   - Enabling constant propagation optimization can result in a reduction in the number of gates and power consumption.

2. `compile_delete_unloaded_sequential_cells`:
   - This command controls whether DC should remove unloaded flip-flops during optimization.
   - Toggling this variable enables or disables the removal of flip-flops with no impact on the design's functionality.
   - This optimization is particularly useful for reducing area usage.

3. `compile_register_replication`:
   - This command is used for register replication or cloning.
   - In situations where you need multiple copies of the same register, you can use this command to create replicas, which can be helpful for specific design requirements.

- **Boolean Variables:** These commands are Boolean variables, which means you can set them to either true or false to control the optimization process. Depending on your design goals and constraints, you can customize how DC handles sequential logic optimization to achieve the desired balance between area, power, and performance.

In summary, sequential logic optimization techniques like constant propagation and removal of unloaded outputs can lead to significant improvements in VLSI design in terms of area utilization, power consumption, and timing. Design Compiler provides a range of commands and settings to enable designers to fine-tune these optimizations according to their specific design needs and constraints.
</details>

<details>

<summary>Labs on Optimizations</summary>

## Combinational optimization
* opt_check 

```
module opt_check (input a , input b , input c , output y1, output y2);
wire a1;
assign y1 = a?b:0;
assign y2 = ~((a1 & b) | c);
assign a1 = 1'b0;
endmodule
```

<center>
	<img width="1085" alt="opt_check" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/opt_check_gui.PNG">

</center>

* opt_check2

```
module opt_check2 (input a , input b , output y);
	assign y = a?1:b;
endmodule
```

<center>
	<img width="1085" alt="opt_check" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/opt_check2_opt.PNG">

</center>

* opt_check3

```
module opt_check3 (input a , input b, input c , output y);
	assign y = a?(c?b:0):0;
endmodule
```

<center>
	<img width="1085" alt="opt_check" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/opt_check3_opt.PNG">

</center>

* opt_check4

```
module opt_check4 (input a , input b , input c , output y);
 assign y = a?(b?(a & c ):c):(!c);
 endmodule
```

<center>
	<img width="1085" alt="opt_check" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/opt_check4_opt.PNG">

</center>

## Resource sharing

*Run 1: No Constraints*

In this run, there are no constraints imposed, and the implementation comprises two multiplexers (mux) and one multiplier. The mux is initially implemented, followed by the multiplier. This results in a lower area and fewer cells compared to other runs.

In the graphical user interface (GUI), the path for the selection line (sel) shows that muxes for each bit are created at the beginning of the design.


<center>
	<img width="1085" alt="resource_sharing" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/resource_sharing_run1.PNG">
	
</center>

Timing before optimization

<center>
	<img width="1085" alt="resource_sharing" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/resource_sharing_run1_timing_before_compile.PNG">
	
</center>

Timing after optimization

<center>
	<img width="1085" alt="resource_sharing" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/resource_sharing_run1_timing_after_compile.PNG">
	
</center>

Area

<center>
	<img width="1085" alt="resource_sharing" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/resource_sharing_run1_opt_area.PNG">
	
</center>

*Run 2: Max Delay Constraint*

For this run, a maximum delay constraint of 0.1 is set for the selection path (sel). The tool implements the first configuration by initially using two multipliers and then a mux. Consequently, this run requires more area and more cells compared to Run 1.

In the GUI, the path for the selection line (sel) shows that muxes for each bit are created at the very end of the design, with the tool implementing the multiplier first and then the mux.

<center>
	<img width="1085" alt="resource_sharing" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/resource_sharing_run2.PNG">
	
</center>
Timing before optimization

<center>
	<img width="1085" alt="resource_sharing" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/resource_sharing_run2_timing_before_compile.PNG">
	
</center>

Timing after optimization

<center>
	<img width="1085" alt="resource_sharing" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/resource_sharing_run2_timing_after_compile.PNG">
	
</center>

Area

<center>
	<img width="1085" alt="resource_sharing" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/resource_sharing_run2_area.PNG">
	
</center>

*Run 3: Path and Area Constraints*

In this run, constraints are applied to both the selection path (sel) and the overall area of the design. After running the "compile_ultra" command, the tool optimizes the design to meet the specified area and timing requirements. As a result, it reduces the number of cells used to implement the design, leading to a reduced overall area.

The implementation in Run 3 follows a similar pattern to Run 2, where the multiplier is initially implemented, followed by the mux. However, the reduction in the number of cells is a key outcome due to the imposed constraints.

<center>
	<img width="1085" alt="resource_sharing" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/resource_sharing_run3.PNG">
	
</center>

Timing after optimization

<center>
	<img width="1085" alt="resource_sharing" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/resource_sharing_run3_timing_after_compile.PNG">
	
</center>

Area

<center>
	<img width="1085" alt="resource_sharing" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/resource_sharing_run3_area.PNG">
	
</center>

In summary, these three runs demonstrate different design scenarios and optimization outcomes based on constraints related to delay, area, and the order of implementing components (mux and multiplier). The tool adapts its implementation strategy to meet the specified constraints and optimize the design accordingly.


	








## Sequential Optimization


**Tie Cell Purpose:**
Tie cells are used in digital integrated circuit design to ensure stable logic levels at specific nodes or pins. They prevent voltage fluctuations and transient spikes, especially in sensitive components like CMOS gates and flip-flops.

**Types of Tie Cells:**
- **Tie High:** Forces a logic high (usually VDD).
- **Tie Low:** Forces a logic low (usually GND).

**Example - dff_const1, dff_const2, dff_const4:**
These flip-flops use tie cells (U4) to stabilize their D input, ensuring a constant logic level for reliable operation.

*dff_const1*
```
module dff_const1(input clk, input reset, output reg q);
always @(posedge clk, posedge reset)
begin
	if(reset)
		q <= 1'b0;
	else
		q <= 1'b1;
end

endmodule
```
Before optimization:

<center>
	<img width="1085" alt="dff_const" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/dff_const1_before_compile.PNG">
	
</center>

After Optimization:

<center>
	<img width="1085" alt="dff_const" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/dff_const1_after_compile.PNG">
	
</center>

*dff_const2*
```
module dff_const2(input clk, input reset, output reg q);
always @(posedge clk, posedge reset)
begin
	if(reset)
		q <= 1'b1;
	else
		q <= 1'b1;
end

endmodule
```
Before optimization:

<center>
	<img width="1085" alt="dff_const" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/dff_const2_before_compile.PNG">
	
</center>

After Optimization:

<center>
	<img width="1085" alt="dff_const" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/dff_const2_after_compile.PNG">
	
</center>

If we make `compile_seqmap_propagate_constants` false:

<center>
	<img width="1085" alt="dff_const" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/dff_const2_propagate_false.PNG">
	
</center>

*dff_const4*
```
module dff_const4(input clk, input reset, output reg q);
reg q1;

always @(posedge clk, posedge reset)
begin
	if(reset)
	begin
		q <= 1'b1;
		q1 <= 1'b1;
	end
	else
	begin
		q1 <= 1'b1;
		q <= q1;
	end
end

endmodule
```
Before optimization:

<center>
	<img width="1085" alt="dff_const" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/dff_const4_before_compile.PNG">
	
</center>

After Optimization:

<center>
	<img width="1085" alt="dff_const" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/dff_const4_after_compile.PNG">
	
</center>

If we make `compile_seqmap_propagate_constants` false:

<center>
	<img width="1085" alt="dff_const" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/dff_const4_propagate_false.PNG">
	
</center>


**Example - dff_const3, dff_const5:**
These flip-flops cannot be optimized as sequential constants because clock-to-Q delay causes the output to change, preventing them from maintaining constant logic levels.

*dff_const3*
```
module dff_const3(input clk, input reset, output reg q);
reg q1;

always @(posedge clk, posedge reset)
begin
	if(reset)
	begin
		q <= 1'b1;
		q1 <= 1'b0;
	end
	else
	begin
		q1 <= 1'b1;
		q <= q1;
	end
end

endmodule
```
Before optimization:

<center>
	<img width="1085" alt="dff_const" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/dff_const3_before_compile.PNG">
	
</center>

After Optimization:

<center>
	<img width="1085" alt="dff_const" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/dff_const3_after_compile.PNG">
	
</center>

*dff_const5*
```
module dff_const5(input clk, input reset, output reg q);
reg q1;

always @(posedge clk, posedge reset)
begin
	if(reset)
	begin
		q <= 1'b0;
		q1 <= 1'b0;
	end
	else
	begin
		q1 <= 1'b1;
		q <= q1;
	end
end

endmodule
```
Before optimization:

<center>
	<img width="1085" alt="dff_const" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/dff_const5_before_compile.PNG">
	
</center>

After Optimization:

<center>
	<img width="1085" alt="dff_const" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/dff_const5_after_compile.PNG">
	
</center>

If we make `compile_seqmap_propagate_constants` false:

<center>
	<img width="1085" alt="dff_const" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/dff_const5_propagate_false.PNG">
	
</center>


Setting `compile_seqmap_propagate_constants` to `false` in a synthesis tool like Design Compiler (DC) instructs the tool not to optimize flip-flops as sequential constants. This means that even after optimization, the flip-flops will not be treated as constants, and their implementation will remain unchanged. This command is useful when you want to preserve the flip-flops as they are and do not want them to be optimized into constants.

Here are some key points regarding the use of `compile_seqmap_propagate_constants`:

1. **Preservation of Original Design:** By setting this command to `false`, you are essentially telling the tool not to alter the flip-flops in terms of constant propagation optimization. This can be beneficial if you have a specific reason to keep the original design intact.

2. **Future Reuse:** One common scenario where this command is useful is when you anticipate needing the flip-flops for future design iterations or when you want to ensure compatibility with existing designs that rely on the same flip-flop behavior.

3. **Impact on Area and Performance:** Note that preserving flip-flops as non-constants may have implications for area utilization and performance, as optimization opportunities related to constant propagation will not be realized. Be mindful of these trade-offs when deciding whether to enable or disable this command.

In summary, setting `compile_seqmap_propagate_constants` to `false` is a way to instruct the synthesis tool not to optimize flip-flops as sequential constants. This can be valuable when you want to maintain the original design or anticipate future use of the flip-flops in their current configuration.


## Boundary Optimization

```
module check_boundary (input clk , input res , input [3:0] val_in , output reg [3:0] val_out);
wire en;
internal_module u_im (.clk(clk) , .res(res) , .cnt_roll(en));

always @ (posedge clk , posedge res)
begin
	if(res)
		val_out <= 4'b0;
	else if(en)
		val_out <= val_in;	
end
endmodule


module internal_module (input clk , input res , output cnt_roll);
reg [2:0] cnt;

always @(posedge clk , posedge res)
begin
	if(res)
		cnt <= 3'b0;
	else
		cnt <= cnt + 1;
end

assign cnt_roll = (cnt == 3'b111);

endmodule
```

**Module `internal_module`:**
- This module `internal_module` is a simple counter that counts from 0 to 7 (3-bit counter) and asserts `cnt_roll` when it reaches 7.
- The counter is synchronous, meaning it increments on each positive edge of the clock signal (`clk`).
- It also responds to a synchronous reset signal (`res`), which resets the counter to 0.
- The output `cnt_roll` is set when the counter reaches its maximum value (7).

**Module `check_boundary`:**
- This module `check_boundary` interfaces with the `internal_module` and performs some logic based on the counter's value.
- It has inputs `clk`, `res`, and `val_in`, and an output `val_out`.

**Optimization Opportunities with Boundary Optimization:**

1. **Boundary Between `internal_module` and `check_boundary`:**
   - The interface between `internal_module` and `check_boundary` includes signals like `cnt_roll` and `val_in`. These signals can be optimized in the following ways:

   - **Signal Reduction**: You can optimize by reducing the width of signals if they don't require their full width. For example, if `cnt_roll` only needs to indicate two states (0 and 1), you can reduce its width to 1 bit. Similarly, if `val_in` doesn't use the full 4-bit width, you can reduce it.

   - **Clock Domain Crossing Optimization**: If the two modules are in different clock domains, boundary optimization may involve clock domain crossing techniques to ensure proper synchronization.

2. **Conditional Logic in `check_boundary`:**
   - The conditional logic in the `always` block of `check_boundary` can be optimized. If `val_in` is not updated frequently, you might consider optimizing this block for better power efficiency.

3. **Register Sizing Optimization:**
   - Depending on the design goals, you can optimize the size of registers in terms of bit width. For example, if the counter doesn't need to count up to 7, you might reduce the bit width from 3 to a smaller value.

4. **Clock Gating**: Depending on the actual use case and timing requirements, clock gating may be applied to reduce power consumption when the circuit is idle.

5. **Reset Strategy**: Depending on your design requirements, you can optimize the reset strategy. For example, if the reset (`res`) is asserted infrequently, you can optimize the reset circuitry.

Boundary optimization would involve reviewing these aspects of the design, considering design goals and constraints, and making adjustments to improve the overall efficiency, performance, and power consumption of the circuit. The specific optimizations will depend on the design requirements and trade-offs you need to make.

* Without boundary optimization
<center>
	<img width="1085" alt="bpundary_optimization" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/check_boundary_without_IM.PNG">
	
</center>

* With boundary optimization

<center>
	<img width="1085" alt="bpundary_optimization" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/check_boundary_with_IM.PNG">
	
</center>

## Register retiming

Register retiming is a critical optimization technique in digital design that involves moving registers (flip-flops) within a sequential logic circuit to improve its performance, such as reducing critical paths and achieving better timing constraints. Here's a more detailed explanation of register retiming and its effect:

**Register Retiming:**

- **Purpose:** The primary goal of register retiming is to improve the timing and performance of a sequential logic circuit without altering its functionality.

- **How it Works:** Register retiming involves relocating registers (flip-flops) within a design while maintaining the same logical behavior. The optimization tool analyzes the timing constraints and the logic between registers to determine if there are opportunities to move registers to better locations.

- **Timing Improvement:** By strategically moving registers, the optimization process aims to reduce critical paths, balance delays, and potentially increase the clock frequency of the design. This optimization can help meet stringent timing requirements in high-performance applications.

**Example Implementation:**

In the provided example:

1. **Original Synthesis Order:** Initially, the tool synthesized the design using the following sequence: multiplier -> register -> register. This order may not have met timing constraints efficiently.

2. **Register Retiming Command:** The command `compile_ultra –retime` instructs the tool to perform register retiming optimization on the design.

3. **Optimization Outcome:** After running the command, the tool has reorganized the design, moving registers within the logic. As a result, there is now combinational logic inserted between the two registers. This rearrangement aims to achieve better timing and potentially reduce the critical paths in the design.

In essence, register retiming is a powerful technique that allows designers to optimize the placement of registers within a sequential logic circuit, leading to improved timing and overall performance without altering the logical functionality of the design.

GUI view before optimization:

<center>
	<img width="1085" alt="register_retiming" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/check_reg_retime_bc.PNG">
	
</center>

Timing before the optimization:

<center>
	<img width="1085" alt="register_retiming" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/timing_without_retime.PNG">
	
</center>

GUI view after optimization:

<center>
	<img width="1085" alt="register_retiming" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/check_reg_retime_bc.PNG">
	
</center>

Timing after the optimization:

<center>
	<img width="1085" alt="register_retiming" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/timing_retime.PNG">
	
</center>

Timing for all paths from al input:

<center>
	<img width="1085" alt="register_retiming" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/timing_retime_all_input.PNG">
	
</center>

## Isolating output ports

Isolating output ports is an essential technique in digital design, especially when dealing with varying output loads that can impact the performance and reliability of internal logic paths. Here's a more detailed explanation of this technique:

**Isolating Output Ports:**

- **Purpose:** The primary goal of isolating output ports is to decouple the internal logic paths of a digital circuit from the variability in the output load, which can affect the cell delay and potentially lead to the failing of internal paths.

- **Cell Delay and Output Load:** In digital design, the delay of a logic cell is often a function of the output load it drives. When the output load varies, it can result in changes in cell delay, impacting the operation of internal logic elements.

- **Solution:** To mitigate this problem, designers use isolation techniques. Isolating output ports typically involves inserting buffers between the output ports and external loads, which effectively decouples the internal logic paths from the output paths.

**Example Implementation:**

In the provided example:

1. **Initial Observation:** In the design example `check_boundary`, the `val_out` is driving some internal logic. However, the varying output load can potentially affect the internal logic due to changes in cell delay.

<center>
	<img width="1085" alt="output_isolation" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/before_isolate.PNG">
	
</center>

Timing report before isolation:

<center>
	<img width="1085" alt="output_isolation" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/timing_before_isolate.PNG">
	
</center>

REG2REG Timing report before isolation:


<center>
	<img width="1085" alt="output_isolation" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/timing_before_isolate_regtoreg.PNG">
	
</center>


2. **Isolation Command:** The command `set_isolate_ports –type buffer [all_outputs]` instructs the tool to isolate the output ports by inserting buffer elements. Buffers drive the external load, which effectively separates the internal paths from the output paths.

3. **Compilation:** After running the isolation command, the design is compiled using `compile_ultra`. This compilation process optimizes the design considering the isolation buffers.

4. **Result:** In the "reg to reg" path after isolating the output ports, there is no longer an effect of varying load on the internal logic. The delay in this path is now primarily due to the flip-flop itself, and the impact of load variation has been mitigated.

<center>
	<img width="1085" alt="output_isolation" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/after_isolate.PNG">
	
</center>

Timing report after isolation:

<center>
	<img width="1085" alt="output_isolation" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/timing_after_isolate.PNG">
	
</center>

REG2REG Timing report after isolation:

<center>
	<img width="1085" alt="output_isolation" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/timing_after_isolate_regtoreg.PNG">
	
</center>
In summary, isolating output ports using buffers is a technique that helps ensure the reliability and performance of internal logic in digital designs by decoupling it from variations in output load, which can affect cell delay. This optimization technique can help in achieving more predictable and stable circuit behavior.




## Multicycle path


**Multicycle Path for Setup Timing:**

- The command `set_multicycle_path –setup 2 –to [target_destination]/[target_input] –from [source_inputs]` is used to define a multicycle path constraint for setup timing analysis.
- Setup timing constraints ensure that data is stable and valid at the input of a receiving element before the clock edge arrives.
- `-setup 2` indicates a two-cycle multicycle path constraint.
- `-to [target_destination]/[target_input]` specifies the path where the constraint is applied.
- `-from [source_inputs]` specifies the source inputs of the data.

**Multicycle Path for Hold Timing:**

- The command `set_multicycle_path -hold 1 -from [source_inputs] -to [target_destination]/[target_input]` is used to define a multicycle path constraint for hold timing analysis.
- Hold timing constraints ensure that data remains stable at the input of a receiving element after the clock edge arrives.
- `-hold 1` indicates a one-cycle multicycle path constraint for hold timing.
- `-from [source_inputs]` specifies the source inputs of the data.
- `-to [target_destination]/[target_input]` specifies the path where the constraint is applied.

These multicycle path constraints are applied in digital design to handle specific timing scenarios where different timing considerations are needed for certain paths in the design, ensuring correct functionality and timing requirements are met.

Timing after performing optimization for setup time:

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/mcp_timing_all_input.PNG">
	
</center>

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/mcp_timing_valid.PNG">
	
</center>


Optimization for the minimum time:

before optimizing

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/mcp_timing_min.PNG">
	
</center>

after optimizing

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/mcp_timing_min_after_mcp.PNG">
	
</center>

Multicycle Path timing after performing isolation:

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day9/mcp_timing_after_isolate.PNG">
	
</center>

</details>

## Day-10-Quality-Checks

<details>
	<summary>Introduction</summary>
	
**Propagation delay:**

Propagation delay in CMOS circuits is a crucial parameter that significantly impacts their performance. It reflects the time taken for a signal to travel from the input of a gate to its output. In CMOS technology, the mobility of holes (representative of p-type transistors) is lower than that of electrons (representative of n-type transistors), introducing timing imbalances between the pull-up (pMOS) and pull-down (nMOS) networks.

The mobility of holes (representing positive charge carriers) and electrons (representing negative charge carriers) in a semiconductor is not equal. This disparity in mobility leads to a crucial design consideration in CMOS (Complementary Metal-Oxide-Semiconductor) circuits, particularly in the width sizing of PMOS (P-channel Metal-Oxide-Semiconductor) and NMOS (N-channel Metal-Oxide-Semiconductor) transistors within logic gates.

In a typical CMOS inverter, for instance, the width of the PMOS transistor is often set to be twice that of the NMOS transistor. This width ratio is established due to the discrepancy in carrier mobility — holes move less efficiently than electrons in a semiconductor material. Consequently, to balance the performance and achieve symmetrical rise and fall times for the output signal, the PMOS width is increased.

However, maintaining this 2:1 width ratio across all gates is not always feasible or optimal. Different gates have distinct combinations of pull-up and pull-down networks. Achieving perfect timing symmetry may not be possible, and optimizing for one can affect the other. Engineers must carefully consider these aspects during CMOS circuit design to achieve the desired trade-off between speed, power consumption, and other performance parameters for a given application.

**Rise and Fall Times:**
   - Rise time is the time taken for a signal to transition from a low to a high state, while fall time is the transition from high to low.
   - Due to mobility mismatch, the rise and fall times can be significantly different for pMOS and nMOS transistors.

Understanding propagation delay in CMOS circuits and effectively addressing timing disparities and rise-fall asymmetry is essential for achieving optimal performance and reliability. Through careful transistor sizing, logical effort, and strategic design choices, designers can balance delays and improve overall circuit efficiency, critical for the success of modern digital designs.

**Timing Paths**
These are the timing paths and corresponding delays from DFF A to DFF C and from DFF B to DFF C, considering rise (r) and fall (f) times:

**DFF A to DFF C Timing Paths:**

1. **Path 1 (CLK-Qr):**
   - DFFA (CLK-Qr) → INV (Yf) → AND (Af) → AND (Yf) → DFFC(Yf)
   - Delay: `0.5ns + 0.5ns + 0.65ns = 1.65ns`

2. **Path 2 (CLK-Qf):**
   - DFFA (CLK-Qf) → INV (Yr) → AND (Ar) → AND (Yr) → DFFC(Yr)
   - Delay: `0.4ns + 0.4ns + 0.7ns = 1.5ns`

**DFF B to DFF C Timing Paths:**

3. **Path 3 (CLK-Qr):**
   - DFF B (CLK-Qr) → AND (Br) → AND (Yr) → DFFC(Yr)
   - Delay: `0.5ns + 0.65ns = 1.15ns`

4. **Path 4 (CLK-Qf):**
   - DFF B (CLK-Qf) → AND (Bf) → AND (Yf) → DFFC(Yf)
   - Delay: `0.4ns + 0.6ns = 1ns`

Where:
- \(r\) = rise time
- \(f\) = fall time


**1. Arrival Time:**

Arrival time (also known as clock-to-q or launch time) refers to the time it takes for a signal to propagate from a specific point (usually a launch or source flip-flop) to a target point (typically a capture or destination flip-flop). It's the time at which the signal reaches the input of the target flip-flop. A positive arrival time indicates the signal arrives after the clock edge.

In Design Compiler, you can set arrival time constraints to ensure that a certain data signal arrives at the destination flip-flop within a specific time window with respect to the clock signal. These constraints are vital for meeting setup and hold timing requirements.

**2. Required Time:**

Required time (also known as clock-to-q or capture time) represents the maximum time allowed for a signal to propagate from a specific point (usually a launch or source flip-flop) to a target point (typically a capture or destination flip-flop) and still meet the timing requirements. It defines the maximum time allowed for the signal to propagate.

In Design Compiler, you can set required time constraints to specify the maximum time allowed for a signal to propagate from source flip-flops to destination flip-flops. This constraint helps ensure that the signal meets the required setup and hold timing requirements.

Both arrival time and required time constraints are fundamental in the design flow to meet timing objectives and to ensure that the design operates reliably and correctly within the specified timing constraints. They are crucial for achieving optimal performance and functionality in digital designs.


timing analysis steps and calculations using the given commands:

1. **`report_timing -delay_type max -to DFEC/d`**:
   
   This command in the design tool (likely Design Compiler) instructs it to report timing information for the path from some source to `DFEC/d`)

2. **Arrival Time (1.65 ns)**:
   
   The reported arrival time (1.65 ns) represents the time it takes for the signal to propagate from the source (DFEC/d) to the destination. It indicates when the signal reaches the input of the destination flip-flop.

3. **Clock Period (5 ns)**:

   The clock period (5 ns) is the time duration between consecutive clock edges. In this case, it's the time available for the data signal to stabilize before the next clock edge.

4. **Setup Time for DFF_C (0.5 ns)**:

   The setup time (0.5 ns) for DFF_C is the minimum time required before the clock edge for the data to be stable at the D input of DFF_C. This ensures that the data is valid and can be reliably captured by the flip-flop.

5. **Required Time (4.5 ns)**:

   The required time is calculated as follows:
   
   `Required Time = Clock Period - Setup Time - Uncertainty = 5ns - 0.5ns - 0 = 4.5ns`
   
   This represents the maximum time allowed for the data signal to propagate from the source flip-flop to the destination flip-flop while still meeting the setup timing requirement.

6. **Setup Slack (2.85 ns)**:

   The setup slack is the difference between the required time and the arrival time:
   
   `Setup Slack = Required Time - Arrival Time = 4.5ns - 1.65ns = 2.85ns`
   
   A positive setup slack (2.85 ns) indicates that the design meets the setup timing requirement by this margin.

In summary, the analysis evaluates whether the data at the input of the destination flip-flop (`DFEC/d`) meets the setup timing requirement. The positive setup slack indicates that the design complies with the timing specifications, providing a margin of 2.85 ns to meet the setup time constraint.

**Hold slack calculation**
1. **`report_timing -delay_type min -to DFFC/D`**:
   
   This command instructs the design tool to report timing information for the path to a specific destination represented as `DFFC/D`, considering the minimum delay.

2. **Arrival Time (1 ns)**:
   
   The reported arrival time (1 ns) represents the time it takes for the signal to propagate to the input of the destination flip-flop (`DFFC/D`). It indicates when the signal reaches the input of the destination flip-flop.

3. **Hold Time for DFF_C (0.1 ns)**:

   The hold time (0.1 ns) for DFF_C is the minimum time the data signal must be held stable after the clock edge. This ensures that the data is held long enough for the flip-flop to reliably capture it.

4. **Required Time (0.1 ns)**:

   The required time is calculated as the sum of the hold time and uncertainty:
   
   `Required Time = Hold Time + Uncertainty = 0.1ns + 0ns = 0.1ns`

   This represents the maximum time allowed for the data signal to be held stable after the clock edge while still meeting the hold timing requirement.

5. **Hold Slack (0.9 ns)**:

   The hold slack is the difference between the arrival time and the required time:
   
   `Hold Slack = Arrival Time - Required Time = 1ns - 0.1ns = 0.9ns`

   A positive hold slack (0.9 ns) indicates that the design meets the hold timing requirement by this margin.

**Difference in Slack Calculation for Max and Min Paths:**

The key difference in slack calculations between maximum and minimum paths lies in how the required time is determined. In the maximum delay path, the required time is calculated based on setup time. In the minimum delay path, it is based on hold time. This distinction ensures that the design meets both setup and hold timing requirements at the destination flip-flop.
</details>


<details>
  <summary>Labs</summary>

### LAB1
	
The image clearly demonstrates that there's a distinction in delay timings for rise and fall transitions along the same timing path, highlighting the differences in timing behavior.

![Timing Path](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day10/t3_diff.PNG)

The image demonstrates two distinct signal paths, emphasizing the differences in timings between rise and fall transitions for each path.

![Signal Paths](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day10/t_diff.PNG)

The image below illustrates the minimum time required for the given path.

![Minimum Time Path](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day10/min_time.PNG)

The image below illustrates that individual gate delays do not solely determine the overall path delay. In this scenario, for the maximum delay, a specific gate incurs a higher delay compared to the same gate in the minimum delay path.

![Gate Delay Differences](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day10/min_diff.PNG)

### LAB2

#### `check_design`

![Check Design](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day10/check_design_init.PNG)

The `check_design` command in Design Compiler (DC) is used to perform a comprehensive analysis of the design to validate various aspects, including its correctness, legality, and compliance with specified constraints. This command helps ensure that the design is ready for subsequent steps in the design flow, such as optimization, synthesis, or other post-synthesis operations.

The `check_design` command is crucial for ensuring the design's integrity and compliance with design rules and constraints. It helps identify any issues early in the design process, allowing for timely correction and improvement of the design quality.

#### `check_timing`

![Check Timing Before Constraints](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day10/check_timing_before_cons.PNG)

![Check Timing After Constraints](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day10/check_timing_after_cons.PNG)

The `check_timing` command is used in the Design Compiler (DC) tool to verify the timing constraints and check the timing paths in a design. It's a critical step in the design flow to ensure that the design meets the specified timing requirements.

The `check_timing` command helps designers ensure that the design meets the specified timing requirements for various aspects like setup, hold, pulse width, recovery, removal, rise, fall, and more. It provides detailed reports and insights into the timing paths and slacks, helping designers make necessary adjustments to meet their timing goals.

#### `report_constraint`

![Report Constraint](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day10/report_constraint.PNG)

The `report_constraint` command in Design Compiler (DC) shell is used to display the constraints that have been set for a design. Constraints are crucial in the design flow to guide the synthesis process and achieve the desired performance, power, and area targets.

The `report_constraint` command provides valuable insights into the applied constraints, and helps to understand and verify the design constraints set during the synthesis process.

#### `mux_generate` Module

```verilog
module mux_generate (input [127:0] in, input [6:0] sel, output reg y);
  integer k;
  
  always @ (*)
  begin
    for (k = 0; k < 128; k = k + 1) 
    begin
      if (k == sel)
        y = in[k];
    end
  end
endmodule
```

1. **Module Declaration:**
   - `module mux_generate (input [127:0] in, input [6:0] sel, output reg y);`
     - This line declares a module named `mux_generate` with input ports `in` (128 bits), `sel` (7 bits), and an output port `y`. `y` is declared as a registered output (`reg`) which means its value is updated in an `always` block.

2. **Integer Declaration:**
   - `integer k;`
     - `k` is an integer variable used as a loop counter within the `always` block.

3. **`always @ (*)` Block:**
   - `always @ (*)` indicates that the block will execute whenever there's a change in the inputs (`*` means any change).
   - `begin` and `end` define the block.

4. **For Loop:**
   - `for (k = 0; k < 128; k = k + 1)`
     - A loop that starts from 0 and iterates up to 127 (128 times), incrementing `k` by 1 in each iteration.

5. **Conditional Statement:**
   - `if (k == sel)`
     - Checks if the loop counter `k` is equal to the selection signal `sel`.

6. **Assignment:**
   - `y = in[k];`
     - If `k` is equal to `sel`, it assigns the value of `in[k]` (the input corresponding to the selected index) to the output `y`.

In summary, this module functions as a multiplexer where the input `in` is a 128-bit bus, `sel` is a 7-bit selection signal, and `y` is the output. The module iterates through the inputs based on the value of `sel`, selecting and assigning the corresponding input to the output `y`.

#### `report_constraints -all_violators`

![Report Constraints - All Violators](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day10/report_constraint_all_viol.PNG)

#### `report_timing -net -cap -sig 4`

![Report Timing - Capacitance Analysis](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day10/report_timing_mux.PNG)

It's noted that the number of fanouts for the signal `sel` is 12, resulting in a high capacitive load on the net. This significant capacitive load can lead to timing delays within the circuit.

To mitigate these delays and manage the capacitive load appropriately, the `set_max_capacitance` command is used with a specified value. The command sets a maximum allowable capacitance for the signal `sel`. In the provided example, the maximum capacitance is set to 0.025 for the current design:

```
set_max_capacitance 0.025 [current_design]
```

By limiting the capacitance, the goal is to control and optimize the timing behavior and performance of the design, especially in scenarios where a large number of fanouts can significantly impact the capacitance and, subsequently, the timing characteristics.

![Timing Analysis After Capacitance Constraint](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day10/report_timing_mux_after_cap_0.025.PNG)

The `set_max_capacitance` command with the specified

 capacitance value (e.g., 0.025) helps in limiting the total capacitance on a net, which is achieved by introducing buffers to distribute the fanouts properly.

In this scenario, after running the `set_max_capacitance` command, the number of fanouts is observed to reduce from 12 to 9. This reduction is achieved by strategically inserting buffers into the net to distribute the fanouts more effectively and control the overall capacitance within the specified limit.

Buffer insertion is a common technique used in digital design to optimize timing and performance by managing capacitance, reducing delay, and improving signal integrity. By controlling the capacitance through buffer insertion, the design can meet timing requirements and enhance the overall efficiency of the circuit.

#### `set_max_transition`

By using this command and specifying a maximum transition time, designers can guide the synthesis tool to optimize the design in a way that prevents rapid signal transitions and related issues.

In more detail:

1. **`set_max_transition <time> [current_design]`**:
   - This command sets a constraint on the maximum transition time to `<time>` units (e.g., nanoseconds or picoseconds) for the current design.

2. **Purpose**:
   - Transition time signifies the duration taken for a signal to change from one logic state to another. Constraining this time helps in controlling the rate at which signals change within the design.

3. **Avoiding Issues**:
   - Limiting the maximum transition time helps in preventing rapid signal transitions that could cause timing problems, glitches, or other undesirable outcomes.

4. **Optimizing Design**:
   - The synthesis tool leverages this constraint to optimize the design, ensuring that signals transition within the specified time constraint.

This constraint plays a vital role in meeting timing requirements and improving the overall reliability of the design. It guides the synthesis process, enabling the tool to make informed decisions that balance performance and timing considerations, ultimately resulting in a well-optimized and functional design.

![Timing Analysis After Transition Time Constraint](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day10/timing_en_after_trans.PNG)

---

</details>

<details>
	<summary>Summary</summary>
	In the synthesis process for a design, several constraints and optimization techniques are employed to guide the tool for efficient design synthesis. Here's a summary of these constraints and optimization strategies:

### Constraints:

1. **Clock Constraints:**
   - Definition: Constraints related to master clock, generated clock, and virtual clock.
   - Commands: `create_clock`, `create_generated_clock`

2. **Clock Practicalities - Latency and Uncertainty:**
   - Definition: Constraints concerning latency, uncertainty, skew, and jitter for pre-CTS and post-CTS.
   - Command: `set_clock_uncertainty`

3. **Input and Output Delay Constraints:**
   - Definition: Constraints controlling input and output delay.
   - Commands: `set_input_delay`, `set_output_delay`

4. **Input Transition and Driving Cell Constraints:**
   - Definition: Constraints regarding input transitions and driving cells.
   - Commands: `set_input_transition`, `set_driving_cell`

5. **Output Load Constraint:**
   - Definition: Constraint specifying the output load.
   - Command: `set_load`

6. **Maximum Capacitance, Maximum Transition, and Maximum Area Constraints:**
   - Definitions:
     - Maximum capacitance to limit capacitive load on a net.
     - Maximum transition to control signal transition rate.
     - Maximum area to limit physical design area.
   - Commands: `set_max_capacitance`, `set_max_transition`, `set_max_area`

### Synthesis Flow:

1. **Reading Design Files:**
   - Commands: `read_verilog`, `read_db`

2. **Design Checking:**
   - Command: `check_design`

3. **Applying Constraints:**
   - Command: `source constraints`

4. **Timing Analysis:**
   - Command: `check_timing`

5. **Ultra Synthesis Compilation:**
   - Command: `compile_ultra`

6. **Constraint Violation Reporting:**
   - Command: `report_constraints -all_violators`

7. **Area and Timing Reporting:**
   - Commands: `report_area`, `report_timing`

8. **Writing the Synthesized Netlist:**
   - Command: `write`

### Synthesis Optimization Knobs:

1. **Boundary Optimization:**
   - Definition: Optimizing logic at design boundaries.

2. **Retiming:**
   - Definition: Reorganizing registers to optimize timing.

3. **Constant Propagation:**
   - Definition: Propagating constants to optimize the design.

4. **Unused Flop Removal:**
   - Definition: Removing unused flip-flops from the design.

5. **Isolate Ports:**
   - Definition: Isolating output ports to manage output load and internal paths.

These constraints and optimization techniques are vital for achieving an optimized and efficient design synthesis, aligning the design with desired performance, area, and timing goals.
</details>

## Day-11-SoC
<details>
	<summary>SoC</summary>
	A System-on-Chip (SoC) is a highly integrated semiconductor device that consolidates multiple electronic components and subsystems onto a single chip. It serves as the central processing unit for various electronic devices, encompassing a wide range of applications such as mobile devices, consumer electronics, automotive systems, and more. The architecture and components of an SoC can vary based on the specific model and intended usage. Let's elaborate on this by considering the Snapdragon 865 SoC by Qualcomm as an example.

**1. Processor Core(s):**

The Snapdragon 865 SoC features a heterogeneous octa-core CPU architecture with two distinct types of cores - Kryo 585 Gold and Kryo 585 Silver.

- **Kryo 585 Gold Cores (Cortex-A77 based):**
  - These cores are designed for high performance and handle resource-intensive tasks. The Cortex-A77 microarchitecture is known for improved single-threaded performance and power efficiency compared to its predecessors.
  - Tasks that require substantial processing power, such as gaming, video editing, complex calculations, and app launches, are efficiently managed by these cores.
  - The utilization of Cortex-A77 cores in the Kryo 585 Gold configuration ensures that demanding applications run smoothly and swiftly.

- **Kryo 585 Silver Cores (Cortex-A55 based):**
  - These cores are focused on optimizing power efficiency while still delivering satisfactory performance.
  - The Cortex-A55 microarchitecture provides a good balance between power consumption and performance, making it suitable for handling lighter tasks and maintaining efficient battery usage.
  - Tasks like background app processing, email synchronization, and low-intensity activities benefit from the energy-efficient design of the Cortex-A55 cores.
  - By intelligently utilizing these cores for less demanding operations, the Snapdragon 865 can extend the device's battery life.

The combination of Kryo 585 Gold and Kryo 585 Silver cores in an octa-core setup allows for a dynamic and efficient allocation of tasks. The SoC intelligently assigns tasks to the appropriate cores, optimizing both performance and power usage based on the workload, ultimately enhancing the overall user experience.


**2. Memory Subsystem:**

The memory subsystem in the Snapdragon 865 SoC plays a crucial role in managing and providing access to memory resources for the entire system.

- **LPDDR5 RAM:**
  - The Snapdragon 865 supports LPDDR5 (Low-Power Double Data Rate 5) RAM, which represents the latest generation of mobile memory technology.
  - LPDDR5 RAM offers significant improvements over its predecessor, LPDDR4X, in terms of data transfer rates, bandwidth, and power efficiency.
  - It provides faster data access and greater bandwidth, allowing for quicker loading of applications, smoother multitasking, and a more responsive user experience.
  - The efficient use of LPDDR5 RAM contributes to enhanced overall system performance and optimized power consumption.

The integration of LPDDR5 RAM in the memory subsystem of the Snapdragon 865 is pivotal in meeting the growing demands of modern applications and ensuring the seamless execution of tasks on mobile devices. It represents a key component that significantly influences the performance and responsiveness of the system.

**3. Graphics Processing Unit (GPU):**

The GPU within the Snapdragon 865 SoC is crucial for handling graphics-related tasks and enhancing the visual experience of the device.

- **Adreno 650 GPU:**
  - The Adreno 650 GPU is a high-performance graphics processing unit designed to deliver exceptional graphical performance and efficiency.
  - It supports a wide range of applications, including gaming, video playback, UI rendering, augmented reality (AR), and virtual reality (VR) experiences.
  - The GPU employs advanced rendering techniques and supports the Vulkan 1.1 API, HDR gaming, and desktop-quality graphics rendering, ensuring high-quality graphics and a captivating user interface.
  - It plays a significant role in providing smooth gaming experiences, rendering high-definition visuals, and contributing to an immersive multimedia experience on mobile devices.

The Adreno 650 GPU is a critical component that enhances the overall visual quality and performance of mobile devices, making them capable of handling demanding graphics tasks with ease and precision.


**4. AI and Machine Learning Accelerator:**

The AI and machine learning accelerator in the Snapdragon 865 SoC is instrumental in handling AI-related computations and applications.

- **Hexagon 698 AI Processor:**
  - The Hexagon 698 AI processor is a dedicated hardware component optimized for accelerating AI and machine learning workloads.
  - It employs specialized algorithms and hardware optimizations to accelerate AI computations, including neural network processing and AI inference tasks.
  - Applications utilizing AI capabilities, such as image recognition, natural language processing, and voice recognition, benefit from the enhanced processing performance and efficiency provided by this AI accelerator.
  - The presence of a dedicated AI processor offloads AI-related tasks from the CPU and GPU, resulting in improved efficiency and reduced power consumption.

The Hexagon 698 AI processor significantly enhances the AI and machine learning capabilities of the Snapdragon 865 SoC, enabling a wide array of AI-driven applications and delivering a more intelligent and intuitive user experience.

**5. Multimedia Processing Unit:**

The multimedia processing unit in the Snapdragon 865 SoC is responsible for managing and enhancing multimedia-related functionalities.

- **Image Signal Processor (ISP):**
  - The Image Signal Processor (ISP) is a key component that optimizes image quality for cameras in mobile devices.
  - It processes image data captured by the device's camera sensors, applying enhancements such as noise reduction, color correction, and exposure adjustments.
  - The ISP plays a critical role in enabling high-quality photography, providing features like fast autofocus, HDR imaging, and superior low-light performance.

- **Video Processing Unit:**
  - The Video Processing Unit is dedicated to video encoding and decoding tasks.
  - It supports various video codecs and ensures efficient video playback and recording at different resolutions and frame rates.
  - Advanced video processing algorithms contribute to smoother video streaming, high-quality video recording, and improved multimedia experiences on the device.

The combined functionalities of the Image Signal Processor and the Video Processing Unit enhance the multimedia capabilities of the Snapdragon 865, enabling high-quality imaging and video experiences for users.

**6. Connectivity Modules:**

The connectivity modules in the Snapdragon 865 SoC play a crucial role in establishing and maintaining communication between the device and external networks and devices.

- **Snapdragon X55 5G Modem:**
  - The Snapdragon X55 5G modem is a key component that enables 5G connectivity, supporting high-speed data transmission, low latency, and improved network reliability.
  - It allows for seamless and rapid access to 5G networks, enhancing overall network performance and enabling a wide range of applications and services that benefit from high-speed internet.

- **WiFi 6/6E, Bluetooth 5.1, NFC:**
  - The SoC supports the latest WiFi standards (WiFi 6/6E) for high-speed wireless internet connectivity and improved network efficiency.
  - Bluetooth 5.1 ensures fast and efficient Bluetooth communication with various devices, enhancing connectivity and enabling features like audio streaming, file transfer, and location-based services.
  - NFC (Near Field Communication) facilitates short-range communication, allowing for secure transactions, device pairing, and data exchange between devices.

The integration of advanced connectivity modules in the Snapdragon 865 SoC ensures that devices can seamlessly connect to various networks and devices, providing users with a reliable and enhanced communication experience.

**7. Security Subsystem:**

The security subsystem within the Snapdragon 865 SoC is crucial for safeguarding sensitive data, authentication processes, and ensuring the integrity of the device.

- **Secure Processing Unit (SPU):**
  - The Secure Processing Unit (SPU) is a specialized hardware component dedicated to enhancing the security of the device.
  - It handles encryption, secure boot, secure storage, and other security-related functions, protecting critical data and processes from unauthorized access and potential security threats.
  - The SPU contributes to the overall security of the device, ensuring that sensitive information is handled in a secure and protected manner.

The inclusion of a dedicated Secure Processing Unit in the Snapdragon 865 SoC enhances the device's overall security, safeguarding user data and critical system functions against potential vulnerabilities and cyber threats.


**8. Power Management Unit:**

The power management unit in the Snapdragon 865 SoC is essential for efficiently managing power consumption and optimizing battery life.

- **Dynamic Voltage and Frequency Scaling (DVFS):**
  - DVFS is a technique used by the power management unit to dynamically adjust the voltage and frequency supplied to the various components of the SoC based on workload.
  - By adapting voltage and frequency in real-time to match the processing needs, the power management unit ensures that components are operating at an optimal level of performance and power efficiency.

- **Power Optimization Techniques:**
  - The power management unit employs various power optimization techniques such as clock gating, power gating, and intelligent power allocation to minimize power consumption during different operational states and tasks.
  - These techniques help in extending the device's battery life, a crucial factor in ensuring a longer-lasting and more reliable user experience.

Efficient power management and optimization in the Snapdragon 865 SoC contribute significantly to longer battery life, which is vital for mobile devices and enhances the overall usability and convenience for users.


**9. Bus Interconnects:**

Bus interconnects play a critical role in enabling communication and data transfer between various components within the Snapdragon 865 SoC.

- **AMBA Protocols:**
  - Advanced Microcontroller Bus Architecture (AMBA) protocols are widely used in the industry for designing on-chip communication between various components.
  - These protocols ensure standardized and efficient communication, allowing components to interact seamlessly and transfer data effectively within the SoC.

- **Efficient Data Flow:**
  - Bus interconnects facilitate efficient data flow between different components like CPU cores, memory subsystem, peripherals, and more.
  - They ensure that data can be transferred quickly and accurately, optimizing the overall performance and responsiveness of the SoC.

Efficient bus interconnects are vital for enabling smooth and seamless communication between different components of the Snapdragon 865 SoC, ultimately contributing to its optimal performance and functionality.


**10. Peripherals and Controllers:**

Peripherals and controllers within the Snapdragon 865 SoC enable interaction and communication with various external devices and components.

- **Camera Controllers:**
  - Camera controllers facilitate interaction with the device's cameras, allowing features such as autofocus, exposure control, white balance adjustments, and image capture.
  - They play a critical role in optimizing the imaging experience, ensuring high-quality photos and videos.

- **Display Controllers:**
  - Display controllers manage the interaction with the device's display, ensuring accurate rendering, resolution management, refresh rates, and color accuracy.
  - They are responsible for providing a visually appealing and responsive display experience to the users.

- **Sensor Interfaces:**
  - Sensor interfaces enable communication with various sensors integrated into the device, such as accelerometers, gyroscopes, ambient light sensors, and more.
  - They allow the SoC to gather data from these sensors, which is essential for various applications and functionalities.

The effective integration of peripherals and controllers in the Snapdragon 865 SoC enhances the functionality and user experience of the device by enabling seamless interaction with external devices and components.


**11. Clock and Timer Units:**

Clock and timer units within the Snapdragon 865 SoC are pivotal for managing timing, synchronization, and coordination of operations.

- **Clock Management:**
  - Clock units manage the timing of various operations within the SoC, ensuring that different components and subsystems are synchronized and operate at the correct frequencies.
  - Proper clock management is essential for achieving optimal performance and efficiency in the functioning of the SoC.

- **Timer Units:**
  - Timer units provide accurate timing for tasks and processes within the SoC.
  - They are crucial for scheduling operations, managing delays, and ensuring that tasks are executed in a timely and coordinated manner.

Efficient clock and timer units are vital for maintaining precise timing and synchronization of operations across the Snapdragon 865 SoC, contributing to its overall efficiency and reliable performance.


**12. Configuration and Control Registers:**

Configuration and control registers within the Snapdragon 865 SoC provide a means for software to manage and customize the behavior of various components.

- **Customization and Configuration:**
  - These registers allow software to configure specific parameters and settings for different hardware components within the SoC.
  - Software can adapt the behavior of the components based on the specific requirements of the device or application.

- **Fine-Tuning and Optimization:**
  - By modifying these registers, developers can fine-tune the performance, power efficiency, and other operational aspects of the SoC to suit the intended use case.
  - This customization helps optimize the system to achieve the best possible performance and efficiency for the target application.

Configuration and control registers provide a level of adaptability and customization in the Snapdragon 865 SoC, allowing for fine-tuning and optimization based on specific device requirements and usage scenarios. This flexibility is crucial for achieving optimal performance and efficiency in diverse applications.

In summary, the Snapdragon 865 SoC showcases a sophisticated integration of powerful and specialized hardware components, carefully designed and optimized to deliver a superior user experience across a wide range of applications and use cases.

</details>

## Day-12 BabySoC Modelling
<details>
	<summary>RISC-V</summary>
	RISC-V is an open-source instruction set architecture (ISA) based on the Reduced Instruction Set Computing (RISC) principles. It was first introduced in 2010 by researchers at the University of California, Berkeley. The basic idea of RISC-V revolves around simplicity, modularity, and openness.

Here are the key aspects of RISC-V:

1. **Simplicity and Modularity:**
   RISC-V is designed with a simple and modular structure, making it easier to understand, implement, and optimize. It follows the RISC philosophy of having a streamlined set of instructions and a small number of addressing modes.

2. **Fixed Instruction Length:**
   RISC-V instructions have a fixed length of 32 bits, which simplifies instruction decoding and pipeline design.

3. **Load-Store Architecture:**
   RISC-V follows a load-store architecture, where operations are performed only on data loaded from memory into registers. Arithmetic and logic operations are typically carried out between registers.

4. **Register-Based Design:**
   RISC-V utilizes a register-based model where operations primarily involve registers, enhancing performance and reducing memory access.

5. **Standardized Extensions:**
   RISC-V provides a base integer instruction set and allows for additional optional extensions for various functionalities, such as floating-point operations, vector operations, cryptographic functions, and more. This modular approach enables customization based on specific application requirements.

6. **Support for Different Implementations:**
   RISC-V offers different standard profiles, including RV32 (32-bit), RV64 (64-bit), and RV128 (128-bit), allowing flexibility and compatibility for a wide range of applications and hardware implementations.

7. **Open and Extensible:**
   RISC-V is an open-source ISA, meaning the specification and implementations are publicly available, and anyone can design, implement, and use RISC-V-based processors without any licensing fees. This openness fosters collaboration and innovation within the computing community.

8. **Scalability:**
   RISC-V is designed to scale from embedded devices and microcontrollers to high-performance computing systems, making it versatile and suitable for a broad spectrum of applications.

9. **Efficiency and Performance:**
   The RISC-V ISA is designed with an emphasis on energy efficiency and high performance. Its simple instruction set and efficient pipelining enable faster execution and reduced power consumption.

Overall, RISC-V's basic idea revolves around simplicity, openness, modularity, and flexibility, making it an attractive choice for a wide range of applications and industries.

The stages in a typical pipelined RISC-V CPU follow a sequence of steps that allow for the efficient execution of instructions. Each stage in the pipeline processes a different aspect of the instruction execution. Here are the common stages in a RISC-V CPU:

1. **Fetch (F) Stage**:
   - Fetches the instruction from memory based on the current program counter (PC).
   - Increments the PC for the next instruction.

2. **Decode (D) Stage**:
   - Decodes the fetched instruction to determine the operation to be performed and the operands involved.

3. **Execute (E) Stage**:
   - Performs the actual computation or operation specified by the instruction.
   - For ALU operations, this stage calculates the result.

4. **Memory Access (M) Stage**:
   - Accesses memory if the instruction involves a memory operation (e.g., load, store).
   - For loads, it retrieves data from memory.
   - For stores, it writes data to memory.

5. **Write Back (W) Stage**:
   - Writes the result of the instruction back to the register file.
   - For loads, it writes the loaded data to the destination register.

These stages form the basic pipeline structure for a RISC-V CPU. However, modern CPUs often include additional stages and optimizations to improve performance, such as branch prediction, instruction reordering, and out-of-order execution.

Additionally, some RISC-V implementations may have variations in the pipeline stages based on the specific architecture (e.g., RV32I, RV64I) or additional features such as vector extensions (e.g., RV32V, RV64V). It's important to consult the specific CPU's documentation or reference manuals for precise details on the pipeline structure.

Creating a waterfall flow diagram for a pipelined RISC-V processor involves visually representing the flow of instructions through the various stages of the pipeline. In this example, we'll illustrate the pipeline stages and how instructions progress through each stage. Please note that this is a simplified representation and actual implementations may have additional complexities and optimizations.

Let's define a simple 5-stage pipeline for a RISC-V processor:

1. **Fetch (F)**: Fetches the instruction from memory.
2. **Decode (D)**: Decodes the instruction and reads register operands.
3. **Execute (E)**: Executes the operation or ALU computation.
4. **Memory Access (M)**: Accesses memory for load/store instructions.
5. **Write Back (W)**: Writes the result back to the register file.

The pipeline stages for an instruction will be denoted as F → D → E → M → W, indicating the progression of the instruction through the stages.

Here's a textual representation of the waterfall flow diagram for a RISC-V processor pipeline:

```
Clock Cycle 1:
   Instruction 1: F → D → E → M → W

Clock Cycle 2:
   Instruction 1:   F → D → E → M → W
   Instruction 2: F → D → E → M → W

Clock Cycle 3:
   Instruction 1:     F → D → E → M → W
   Instruction 2:   F → D → E → M → W
   Instruction 3: F → D → E → M → W

...

Clock Cycle N:
   Instruction 1:       F → D → E → M → W
   Instruction 2:         F → D → E → M → W
   Instruction 3:           F → D → E → M → W
   ...
```

In each clock cycle, a new instruction enters the pipeline (Fetch stage), and the instructions progress through subsequent stages in a staggered manner until they complete the pipeline and are retired. The diagram illustrates the concurrent execution of multiple instructions at different stages of the pipeline.
</details>
<details>
	<summary>PLL</summary>
	A Phase-Locked Loop (PLL) is an electronic circuit used in many applications to generate stable, high-frequency signals from a low-frequency reference signal. It's a critical component in modern electronics, especially in communication systems, microprocessors, frequency synthesizers, and more. Let's discuss PLL in detail.

1. **Components of a PLL**:
   - **Phase Detector (PD)**: Compares the phase of the output signal with a reference signal and produces an error signal.
   - **Voltage-Controlled Oscillator (VCO)**: Generates an output signal whose frequency is directly proportional to the input voltage.
   - **Loop Filter (LF)**: Filters and conditions the error signal from the phase detector to provide a stable control voltage for the VCO.
   - **Divider (optional)**: Divides the output signal to generate a feedback signal that is compared with the reference signal.

2. **Working Principle**:
   - The PLL locks the phase and frequency of the output signal to that of the reference signal by adjusting the VCO control voltage.
   - The phase detector detects the phase difference between the output and reference signals, generating an error signal.
   - The loop filter processes the error signal and converts it into a control voltage for the VCO.
   - The VCO's frequency is adjusted based on this control voltage, aligning the output signal's phase and frequency with the reference signal.

3. **PLL Operation**:
   - Initially, the PLL is "unlocked" with a free-running VCO and an unknown phase relationship between input and output.
   - The phase detector compares the input and output phases, generating an error signal.
   - The error signal is filtered to remove noise and unwanted frequency components.
   - The filtered error signal adjusts the VCO's frequency to minimize the phase difference between input and output.
   - The PLL achieves a locked state where the output phase and frequency are synchronized with the reference.

4. **Applications**:
   - **Clock Generation**: PLLs are used to generate stable clock signals with specific frequencies for microprocessors, memories, and other digital circuits.
   - **Frequency Synthesis**: PLLs can generate high-frequency signals by multiplying the frequency of a reference signal.
   - **Clock Recovery**: In communication systems, PLLs are used to recover the clock signal from the received data stream.

5. **Advantages**:
   - High-frequency stability and accuracy.
   - Easily configurable to generate different frequencies.
   - Can lock onto a reference signal even if the frequency varies or if there's noise.

Understanding PLLs is essential for various applications where precise and stable timing and frequency control are required.

### why do we need pll in our soc

A Phase-Locked Loop (PLL) is a critical component in modern System-on-Chip (SoC) designs for several reasons, particularly related to clock generation, synchronization, and performance optimization. Here's why we need a PLL in an SoC:

1. **Clock Generation and Frequency Synthesis**:
   - A PLL is commonly used to generate stable and precise clock signals with specific frequencies. It allows for frequency synthesis, enabling the creation of clock signals that are multiples or fractions of a reference clock.

2. **Clock Domain Crossing**:
   - SoCs often have multiple clock domains, each operating at different frequencies. A PLL helps in managing these clock domains, ensuring smooth transitions and proper synchronization when signals need to cross between domains.

3. **Clock Synchronization and Alignment**:
   - PLLs can be used to synchronize different clock signals within the SoC, aligning them to a common phase and frequency. This synchronization is crucial for correct operation and data integrity, especially in high-speed systems.

4. **Clock Phase Control**:
   - PLLs allow for precise control of the phase relationship between clock signals, which is important in applications like data sampling, where alignment of clock edges is critical for accurate data capture.

5. **Clock Skew Compensation**:
   - In large SoCs, clock signals may experience skew due to variations in trace lengths and other factors. PLLs can help compensate for this skew and ensure that clock signals arrive at different parts of the chip simultaneously.

6. **Power Management and Dynamic Voltage and Frequency Scaling (DVFS)**:
   - PLLs are essential for power management strategies. They enable dynamic adjustments of clock frequencies and voltages to optimize power consumption based on the workload, which is particularly important for battery-powered devices and energy-efficient operation.

7. **Clock Jitter Reduction**:
   - PLLs can be designed to reduce clock jitter, improving the quality of the clock signal. Reduced jitter is critical in high-speed applications to maintain signal integrity and minimize timing uncertainties.

8. **Clock Recovery from External Sources**:
   - PLLs can recover clocks from external sources that may have variations in frequency or phase, providing a stable and synchronized clock within the SoC.

9. **Integration of Heterogeneous Blocks**:
   - SoCs often integrate various IP blocks or subsystems, each operating at different frequencies. PLLs assist in providing the appropriate clocking for each block, allowing their seamless integration into the overall system.

In summary, PLLs play a crucial role in managing clock signals within an SoC, ensuring synchronization, alignment, power efficiency, and integration of various components. They are fundamental to achieving optimal performance and reliability in complex digital systems.

### why off-chip clocks cant be used all the time

Off-chip clocks, also known as external clocks, are typically generated outside the integrated circuit (IC) or system-on-chip (SoC) and are brought onto the chip to provide a clocking signal. While off-chip clocks can be used in certain scenarios, there are several reasons why they are not used all the time:

1. **Propagation Delay and Skew**:
   - Off-chip clocks experience propagation delays and skew as they travel from the source (external oscillator or clock generator) to the chip. These delays and skew can impact the timing and synchronization of signals within the chip.

2. **Signal Integrity**:
   - Clock signals can degrade in quality due to transmission over long distances. Factors like noise, interference, reflections, and impedance mismatches can affect the signal integrity, leading to clock jitter and other timing issues.

3. **Dependency on External Systems**:
   - Relying on off-chip clocks makes the system dependent on external components and their reliability. Any failure or malfunction in the external clock generation system can disrupt the functioning of the entire chip or system.

4. **Power Consumption**:
   - Constantly using off-chip clocks can lead to increased power consumption, especially if the chip needs to drive long traces or multiple clock distribution networks to various parts of the chip.

5. **Cost and Complexity**:
   - Depending on off-chip clocks may increase the cost and complexity of the design. Additional components like clock buffers, drivers, and complex routing schemes may be needed to distribute the clock accurately across the chip.

6. **Security and Robustness**:
   - Using off-chip clocks for critical functions can pose security risks, making the system vulnerable to external interference or tampering.

7. **Flexibility and Tuning**:
   - On-chip PLLs offer flexibility in generating multiple clock domains, adjusting frequencies, and managing clock phases. On-chip PLLs can be tuned and configured to suit the specific requirements of the chip and its components.

For these reasons, on-chip PLLs are commonly used to generate and distribute clocks within the chip. On-chip PLLs provide the advantages of reduced propagation delay, improved signal integrity, lower power consumption, and better control over clock characteristics. They allow for the creation of multiple clock domains, synchronization, and alignment of clocks according to the system's requirements, enhancing the overall performance and reliability of the IC or SoC.

### Components of PLL
A Phase-Locked Loop (PLL) is a circuit that synchronizes an output signal with a reference signal by controlling the phase and frequency of the output signal. The main components of a PLL include:

1. **Phase Detector (PD)**:
   The phase detector compares the phase of the input/reference signal with the feedback signal from the Voltage-Controlled Oscillator (VCO). It generates an output signal based on the phase difference, which is used to adjust the frequency of the VCO.

2. **Voltage-Controlled Oscillator (VCO)**:
   The VCO generates an output signal whose frequency is controlled by an input voltage. The VCO's frequency is directly proportional to the input voltage it receives. The output of the VCO is the output of the PLL.

3. **Low-Pass Filter (LPF)**:
   The low-pass filter is used to filter the output of the phase detector, producing a control voltage based on the phase difference. This voltage is then sent to the VCO to adjust its frequency.

4. **Frequency Divider (Divider)**:
   The frequency divider is used to divide the frequency of the VCO's output to produce a feedback signal. This feedback signal is fed back to the phase detector for comparison with the reference signal.

5. **Reference Input**:
   The reference input is the signal to which the PLL locks. It provides the reference frequency and phase that the PLL aims to synchronize with.

6. **Output**:
   The output of the VCO is the output of the PLL, and it is the synchronized signal that is phase-locked and frequency-locked to the reference input.

7. **Control Loop**:
   The control loop is formed by the phase detector, low-pass filter, and VCO. The phase detector compares the phases of the reference signal and the VCO output, and the low-pass filter processes this comparison to generate a control voltage. This control voltage adjusts the VCO's frequency to minimize the phase difference, locking the PLL to the desired frequency and phase.

These components work together to maintain a stable and synchronized output signal with respect to the reference signal, making the PLL a versatile circuit used in various applications like clock generation, communication systems, frequency synthesis, and more.

</details>

<details>
	<summary>DAC</summary>
DAC, or Digital-to-Analog Converter, is a fundamental electronic component used to convert digital data (usually in binary format) into an analog signal. It plays a crucial role in various electronic devices and systems where digital data needs to be transformed into an analog signal for applications such as audio processing, signal generation, communication systems, and more.

Here's an overview of DAC and its main components:

1. **Digital Input**:
   The digital input to the DAC is typically a binary representation of the desired analog signal. Each bit of the digital input represents a specific amplitude level.

2. **Binary Weighted Network or R-2R Ladder**:
   The binary weighted network, often implemented using an R-2R ladder network, is a resistor network that provides the weighted voltage levels corresponding to the binary bits of the digital input. In an R-2R ladder, the resistors are arranged in a ladder-like structure, with the top of the ladder connected to the highest bit and the bottom connected to ground.

3. **Summing Amplifier**:
   The summing amplifier is responsible for summing the voltages from the weighted resistor network based on the binary input. It creates an analog voltage that corresponds to the digital input.

4. **Analog Output**:
   The analog output of the DAC is the voltage generated by the summing amplifier, which represents the analog signal corresponding to the given digital input.

The operation of a DAC involves setting the digital input (binary bits) to the desired value, and the DAC generates a proportional analog voltage at the output based on the weighted sum of these bits.

The R-2R ladder DAC is a common architecture due to its simplicity and linearity. Each bit of the digital input corresponds to a specific voltage level determined by the resistor network. The summing amplifier then combines these voltage levels to generate the analog output.

DACs are used in a wide range of applications, including audio equipment, video signal processing, motor control, telecommunications, instrumentation, and more. The quality and performance of a DAC are critical in applications where accurate and high-resolution analog signals are required.

Weighted Resistor DAC and R-2R Ladder DAC are two fundamental architectures used in Digital-to-Analog Converters (DACs) to convert digital signals into analog signals. Let's explore each in detail:

1. **Weighted Resistor DAC (Binary-Weighted DAC)**:
   In a Weighted Resistor DAC, the resistors are arranged in a way that their values are binary weighted. The most significant bit (MSB) has a resistor with the highest value (e.g., R), and each subsequent bit has a resistor with half the value of the previous bit. The binary-weighted values are generated by connecting the digital input bits directly to the resistors. The analog output is produced by summing the weighted voltages across the resistors based on the digital input.

   **Advantages:**
   - Simple and straightforward architecture.
   - Accurate and precise if high-precision resistors are used.

   **Disadvantages:**
   - Requires precise resistors with accurate binary-weighted ratios, which can be costly and challenging to achieve in practice.
   - Prone to errors due to resistor tolerances.

2. **R-2R Ladder DAC (R-2R DAC)**:
   The R-2R Ladder DAC utilizes a ladder-like structure of resistors. In this structure, the top rung of the ladder consists of resistors with a value R, while the bottom rung consists of resistors with a value 2R. The ladder structure forms a binary-weighted pattern, and the analog output is derived by summing the voltages at specific nodes of the ladder. The digital input bits control switches that connect or disconnect the nodes to create the desired binary-weighted voltage levels.

   **Advantages:**
   - Easier to manufacture and calibrate compared to weighted resistor DAC.
   - Tolerant to resistor inaccuracies due to the self-correcting nature of the ladder structure.
   - Suitable for high-resolution applications.

   **Disadvantages:**
   - Requires twice the value of resistors (R and 2R), which may increase cost and complexity compared to binary-weighted DACs.

In practical applications, R-2R Ladder DACs are often preferred due to their ease of implementation and tolerance to resistor inaccuracies, making them well-suited for high-resolution DACs. However, the choice between the two depends on the specific requirements of the application and the desired trade-offs between accuracy, cost, and complexity.

</details>

<details>
	<summary>Labs</summary>
	
### Counter 
```
module mod7_counter (
    input wire clk,
    input wire rst_n,
    output reg [2:0] count
);

    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            count <= 3'b000;
        end else begin
            if (count == 3'b110)
                count <= 3'b000;
            else
                count <= count + 1;
        end
    end

endmodule
```

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day12/counter.PNG">
	
</center>


1. **`clk` (Clock Signal)**:
   - The clock signal (`clk`) is a regular waveform that toggles between 0 and 1 with a specific frequency. Each positive edge of the clock triggers an increment in the counter.

2. **`rst_n` (Reset Signal)**:
   - The reset signal (`rst_n`) is active-low, meaning it is effective when it is at a logic 0.
   - When `rst_n` transitions from 1 to 0 (negative edge), it resets the counter to `000` (binary).

3. **`count` (Counter Value)**:
   - The `count` waveform represents the 3-bit counter value in binary (from `000` to `110` in binary, or 0 to 6 in decimal).
   - On each positive edge of the clock (`clk`), the counter increments its value by 1.
   - When the counter reaches `110` (binary) or 6 (decimal), it wraps back to `000` (binary) or 0 (decimal).

In summary, the waveform shows the counter incrementing with each positive edge of the clock (`clk`), and it resets to `000` when the reset signal (`rst_n`) is active (low). The counter value cycles through 0 to 6 in binary (or 0 to 6 in decimal), following the clock pulses and reacting to the reset signal.


### mythcore

1. **`clk` and `reset`**:
   - `clk` is the clock signal.
   - `reset` is the reset signal.

2. **`out`**:
   - A 10-bit output signal representing the result of the core.

3. **Instructions and Logic**:
   - The logic in this code represents a simple RISC-V core where instructions are fetched, decoded, and executed based on the RISC-V instruction set.

4. **Modules and Signals**:
   - The code includes various modules such as instruction memory, register file, data memory, and ALU.
   - Different stages of the RISC-V pipeline are represented, including fetch, decode, execute, and memory access.

5. **`CPU_Imem_instr_a1`**:
   - Represents the instruction memory content, with different instructions specified using a sequence of bits.

6. **Decode and Control Logic**:
   - Various `assign` statements determine the type of instruction being processed and control signals accordingly.

7. **ALU Logic**:
   - The ALU performs arithmetic and logical operations based on the instruction type.

8. **Memory Access and Control Logic**:
   - Memory access instructions (load and store) are handled, and data memory is accessed accordingly.

Overall, this Verilog code implements a basic RISC-V core that fetches instructions, decodes them, and executes arithmetic and logical operations based on the instruction set.

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day12/mythcore.PNG">
	
</center>

### PLL

```
`timescale 1ns / 1ps
module avsd_pll_1v8( CLK, VCO_IN, VDDA, VDDD, VSSA, VSSD, EN_VCO, REF);

  input VSSD;
  input EN_VCO;
  input VSSA;
  input VDDD;
  input VDDA;
  input VCO_IN;
  output CLK;
  input REF;

 
 
 
  reg CLK;
  real period, lastedge, refpd;
  wire  VSSD, VSSA, VDDD, VDDA;
 

  initial begin
     lastedge = 0.0;
     period = 25.0; // 25ns period = 40MHz
     CLK <= 0;
      end

  // Toggle clock at rate determined by period
  always @(CLK or EN_VCO) begin
     if (EN_VCO == 1'b1) begin
        #(period / 2.0);
        CLK <= (CLK === 1'b0);
     end else if (EN_VCO == 1'b0) begin
        CLK <= 1'b0;
     end else begin
        CLK <= 1'bx;
     end
  end
   
  // Update period on every reference rising edge
  always @(posedge REF) begin
     if (lastedge > 0.0) begin
refpd = $realtime - lastedge;
// Adjust period towards 1/8 the reference period
        //period = (0.99 * period) + (0.01 * (refpd / 8.0));
        period =  (refpd / 8.0) ;
     end
     lastedge = $realtime;
  end
endmodule

```

Verilog code defines a module for an adjustable frequency clock generator using a phase-locked loop (PLL). Here's a brief explanation of the code:

1. The module `avsd_pll_1v8` has inputs (`VSSD`, `EN_VCO`, `VSSA`, `VDDD`, `VDDA`, `VCO_IN`, `REF`) and an output `CLK`.

2. The initial block initializes some variables (`lastedge` and `period`) and sets the initial value of `CLK` to 0.

3. The clock toggling logic is defined in an `always` block, toggling `CLK` based on the `period` when `EN_VCO` is high. The `period` determines the clock's frequency.

4. Another `always` block updates the `period` based on the rising edge of the reference signal (`REF`). The `period` is adjusted to be 1/8th of the time between successive reference signal edges.

The purpose of this code is to generate a clock signal (`CLK`) with an adjustable frequency based on the reference signal (`REF`). The generated clock's frequency is dynamically adjusted to be a fraction (1/8th) of the reference frequency.

The code uses `$realtime` to measure time for adjusting the clock period based on the reference signal. This is typically used in simulation to mimic real-time behavior.


<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day12/avsdpll.PNG">
	
</center>

**The waveform behavior:**

1. **CLK (Clock Signal)**:
   - The `CLK` waveform is toggling at a frequency determined by the `period`.
   - The initial state is 0, and it toggles between 0 and 1 based on the specified `period` (25 ns in this case).

2. **EN_VCO (VCO Enable)**:
   - `EN_VCO` waveform is high (`1`) for some time and then goes low (`0`).
   - When `EN_VCO` is high, the `CLK` toggles at the specified `period`. When it's low, the `CLK` remains low.

3. **REF (Reference Signal)**:
   - `REF` waveform is rising at regular intervals, indicating the reference signal edges.
   - The `period` of the `CLK` is adjusted based on these rising edges.

4. **Adjusting the Clock Period**:
   - Whenever there's a rising edge on `REF`, the clock period (`period`) is adjusted to be 1/8th of the time since the last edge.
   - The adjusted `period` causes a change in the `CLK` frequency accordingly.

The clock toggles based on the `period` whenever `EN_VCO` is high. The `period` is dynamically adjusted based on the rising edges of the reference signal, allowing the clock to adapt to changes in the reference frequency.

### DAC

```
module avsddac( OUT, D, VREFH, VREFL);

  input VREFH;
  input VREFL;
  input [9:0] D;
  output OUT;

  wire real VSS, VDD, VREFL, VREFH;
  reg  real OUT;
  real NaN;
  wire EN;

  wire [10:0] Dext;	// unsigned extended

  assign Dext = {1'b0, D};
  assign EN = 1;
 
  
  initial begin
     NaN = 0.0 / 0.0;
     if (EN == 1'b0) begin
	OUT <= 0.0;
     end else if (VREFH == NaN) begin
	OUT <= NaN;
     end else if (VREFL == NaN) begin
	OUT <= NaN;
     end else if (EN == 1'b1) begin
	OUT <= VREFL + ($itor(Dext) / 1023.0) * (VREFH - VREFL);
     end else begin
	OUT <= NaN;
     end
  end

  always @(D or EN or VREFH or VREFL) begin
     if (EN == 1'b0) begin
	OUT <= 0.0;
     end else if (VREFH == NaN) begin
	OUT <= NaN;
     end else if (VREFL == NaN) begin
	OUT <= NaN;
     end else if (EN == 1'b1) begin
	OUT <= VREFL + ($itor(Dext) / 1023.0) * (VREFH - VREFL);
     end else begin
	OUT <= NaN;
     end
  end 

endmodule
```

The `avsddac` module embodies a digital-to-analog converter (DAC) coded in Verilog. It takes a 10-bit digital input (`D`), alongside high and low voltage references (`VREFH` and `VREFL`), and generates an analog output (`OUT`). The module extends the 10-bit digital input to an 11-bit value (`Dext`). Depending on control signals and reference voltages, it calculates the analog output with proper error handling for exceptional cases.

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day12/avsddac.PNG">
	
</center>

**The waveform behavior:**

The waveform illustrates the behavior of the `avsddac` module during simulation. Several key signals are represented:

1. **`D` (10-bit Digital Input):**
   - This signal exhibits varying patterns representing changes in the digital input to the DAC.

2. **`VREFH` and `VREFL` (High and Low Voltage References):**
   - These signals either remain steady or undergo changes based on the simulation scenario.

3. **`EN` (Enable Signal):**
   - The enable signal toggles between 0 and 1, indicating the enabling or disabling of the DAC.

4. **`OUT` (Analog Output):**
   - The waveform of `OUT` demonstrates its variations based on the input `D`, `VREFH`, `VREFL`, and `EN`. It mirrors analog behavior as defined by the logic within the `avsddac` module.

Analyzing the `OUT` waveform alongside the varying inputs and control signals (`D`, `VREFH`, `VREFL`, `EN`) allows comprehending how the digital input undergoes conversion to an analog output. Additionally, one can observe how the output reacts to alterations in control signals or changes in reference voltages.


### VSDBabySoC

```

```

The `vsdbabysoc` module is a structural composition that brings together different components to create a system.

1. **Primary Inputs and Outputs:**
   - `OUT`: Analog output of the system.
   - `reset`: Reset signal.
   - `VCO_IN`: Input for the Voltage-Controlled Oscillator (VCO).
   - `ENb_CP`: Enable signal for the charge pump.
   - `ENb_VCO`: Enable signal for the VCO.
   - `REF`: Reference signal.

2. **Wires:**
   - `CLK`: Clock signal.
   - `RV_TO_DAC`: 10-bit data transmitted from the core to the digital-to-analog converter (DAC).

3. **Instantiation of Sub-modules:**
   - `core core1`: A unit of the `core` module, producing a 10-bit output (`RV_TO_DAC`) based on clock (`CLK`) and reset signals.
   - `avsdpll pll`: An instance of the `avsdpll` module, implementing a phase-locked loop (PLL) using input signals (`CLK`, `VCO_IN`, `ENb_CP`, `ENb_VCO`, `REF`).
   - `avsddac dac`: An instance of the `avsddac` module, generating the analog output (`OUT`) using a 10-bit input (`RV_TO_DAC`) and the high voltage reference (`VREFH`).

In summary, `vsdbabysoc` assembles these components to achieve the desired analog output (`OUT`) based on the provided inputs and control signals. 

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day12/vsdbabysoc_tb.PNG">
	
</center>

</details>



## Day-13 Post Synthesis Simulation

<details>
	<summary>Post Synthesis</summary>

## Synthesis and Post-Synthesis

### Synthesis:
1. **Design Specification:**
   The process begins with a detailed functional specification, outlining the desired behavior, inputs, and outputs of the digital circuit.

2. **High-Level Design:**
   A high-level design is created using hardware description languages (HDLs) like VHDL or Verilog, focusing on logical functionality without hardware-specific details.

3. **Synthesis:**
   The high-level design is transformed into a gate-level representation, selecting specific gates (e.g., AND, OR, XOR) and their interconnections to implement the desired logic functions. The output is typically a netlist.

4. **Technology Mapping:**
   In this step, actual physical gates are selected from a technology library, matching the gate-level representation and considering factors like speed, power consumption, and area.

### Post-Synthesis Phase:
Post-synthesis is a crucial stage in the VLSI design flow that follows logic synthesis. This phase involves several key activities to ensure the synthesized netlist meets performance, power, and functional requirements.

1. **Timing Analysis:**
   Timing analysis is performed to verify that the design meets specified timing constraints. Key parameters, such as setup and hold times, clock-to-q delays, and other timing metrics, are analyzed to ensure proper functioning of the circuit.

2. **Functional Verification:**
   Functional verification ensures that the synthesized netlist behaves as intended and aligns with the original high-level design specifications. Extensive testing using a variety of test cases validates the correctness of the logic and functionality.

3. **Power Analysis:**
   Power consumption analysis is essential to estimate the power usage of the design. This analysis helps in optimizing the design to meet power budget constraints while maintaining functionality.

4. **Constraint Updates:**
   Based on the results of timing and power analysis, design constraints may be updated to achieve the desired performance and power goals.

5. **Scan Insertion:**
   In certain cases, scan chains may be inserted into the design during the post-synthesis phase. Scan chains facilitate efficient testing and debugging of the circuit.

6. **Gate-Level Simulation (GLS):**
   GLS involves simulating the synthesized netlist using a test bench. This simulation validates the logical accuracy of the design after synthesis and ensures that timing requirements are met. GLS helps in detecting discrepancies and mismatches between the expected behavior and the actual synthesized netlist.

**Why Gate-Level Simulation (GLS)?**

Gate-level simulation (GLS) is critical in VLSI design for the following reasons:

- **Logical Accuracy Validation:**
  GLS verifies the logical equivalence of the synthesized netlist with the high-level design. It ensures that the circuit's functionality remains intact after synthesis.

- **Timing Verification:**
  GLS helps in validating timing requirements by analyzing critical paths and ensuring that the design meets specified timing constraints.

- **Verification of Synthesis Process:**
  GLS allows designers to confirm that the synthesis process accurately transformed the high-level description into a gate-level representation, preserving the intended functionality.

- **Debugging and Refinement:**
  Gate-level simulations aid in identifying and debugging issues that might have been introduced during synthesis. This iterative process helps refine the design for optimal performance and functionality.

In summary, the post-synthesis phase, plays a vital role in ensuring the correctness, performance, and functionality of the synthesized VLSI design. It bridges the gap between high-level design intent and the actual gate-level hardware implementation.

</details>
<details>
	<summary>Mod 7 Counter</summary>

The Verilog module `mod7_counter` defines a 3-bit counter that counts from 0 to 6 and then resets to 0. The counter operates based on the positive edge of the clock (`clk`) and the active-low asynchronous reset (`rst_n`). The module has a 3-bit output `count` to represent the counter value.

 ```
module mod7_counter (
    input wire clk,
    input wire rst_n,
    output reg [2:0] count
);

    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            count <= 3'b000;
        end else begin
            if (count == 3'b110)
                count <= 3'b000;
            else
                count <= count + 1;
        end
    end

endmodule

```

The `always` block within the module defines the counter behavior. When the reset `rst_n` is active (low), the counter is set to 0 (`3'b000`). On the positive clock edge, if the counter is not at its maximum value (`3'b110`), it increments by one. Once the counter reaches the maximum value, it resets to 0.



### Comparison of Pre-Synthesis and Post-Synthesis Simulations:

**Pre-Synthesis Simulation:**
In the pre-synthesis simulation, the functionality and behavior of the `mod7_counter` module are verified at a higher level of abstraction, focusing on the specified functionality without considering the specific gates and low-level timing details. This simulation stage ensures the desired counter behavior is achieved according to the provided specifications.

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day12/counter.PNG">
	
</center>

**Post-Synthesis Simulation:**

Post-synthesis simulation provides a more accurate representation of the design considering the specific gates and their characteristics after synthesis. It allows for a detailed analysis of the design's timing and performance, which is crucial for verifying the design's functionality in the context of the actual hardware implementation.
Regarding the comparison of pre-synthesis and post-synthesis simulations:

<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day13/mod7_counter_gls.PNG">


In contrast, the post-synthesis simulation involves the simulation of the gate-level netlist obtained after the synthesis process. It considers the actual gates and their interconnections, allowing for a detailed analysis of the design's timing, power, and other low-level characteristics. This simulation phase provides a more accurate representation of the design, considering the impact of synthesis optimizations and physical implementation on the counter's behavior.

Below is the gui of the synthesized counter design

<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day13/counter_gui.PNG">


</details>

<details>
	<summary>Labs</summary>

## Synthesis Process for RVMYTH IP in BabySOC

BabySOC is composed of three key intellectual properties (IPs):

1. **RVMYTH:**
   - RVMYTH is a crucial IP in BabySOC that undergoes synthesis.
   - Synthesis involves converting a high-level description of RVMYTH, written in a hardware description language (e.g., Verilog), into a gate-level representation suitable for hardware implementation.
   - The synthesis process ensures that the logical functionality of RVMYTH is preserved while optimizing it for hardware realization.

2. **DAC (Digital-to-Analog Converter):**
   - The DAC is an analog block vital for converting digital signals to analog in various applications.
   - Unlike RVMYTH, DAC is not synthesizable as it operates in the analog domain and is described at a higher level of abstraction, focusing on its analog characteristics.

3. **PLL (Phase-Locked Loop):**
   - PLL is another analog block within BabySOC, used for generating stable clock signals.
   - Similar to DAC, PLL is not synthesizable due to its analog nature, and its functionality is captured at a higher level of abstraction in the design.

### Synthesized RVMYTH IP Simulation Results

Following the synthesis process for the RVMYTH IP, a simulation is done to evaluate its behavior and functionality:

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day13/mythcore_gls1.PNG">
	
</center>

**Consistency of Functionality:**
- The post-synthesis simulation results confirm that RVMYTH maintains its intended functionality observed during the pre-synthesis stage.
- The IP accurately calculates the sum of the first n natural numbers up to 1000 and decrements accordingly, showcasing a consistent behavior.
- The resulting gate-level representation post-synthesis is now well-optimized for hardware implementation.
- This optimized version of RVMYTH aligns seamlessly with the BabySOC architecture, ensuring efficient integration.

The simulation results post-synthesis underscore that the RVMYTH IP effectively maintains its desired functionality, endorsing the synthesis process's success in converting high-level descriptions into hardware-ready representations.


## BabySOC Post-Synthesis Steps

Post synthesis, the focus shifts to integrating the synthesizable RVMYTH interfaced with the non-synthesizable DAC and PLL. Here are the steps to synthesize BabySOC using Design Compiler:

### 1. Set Target Library and Link Library:
   - Begin by specifying the target library and linking it for the synthesis process.
   - The library files are in `.lib` format, but Design Compiler requires `.db` format.
   - Convert the `.lib` files to `.db` format using `lc_shell`.

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day13/lc_shell.PNG">
	
</center>

### 2. Read BabySOC Verilog Description:
   - Use the `read_verilog` command to read the Verilog description of BabySOC, which includes the interfacing of RVMYTH, DAC, and PLL.
   - This description should reflect the connections and interactions among the components.
<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day13/vsdbabysoc_read.PNG">
	
</center>

  - Below is the gui of design before compile

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day13/babysoc_gui_before_compile.PNG">
	
</center>

### 3. Linking:
   - Execute the `link` command to ensure proper linking and association of the required modules and libraries.
   - Linking is essential to create a unified representation of the design with all components interfaced correctly.

### 4. Compile:
   - Perform an compile using the `compile_ultra` command.
   - This step involves the actual synthesis process, where the RTL (Register-Transfer Level) description is mapped to gates and components from the target library.
   - Optimization and mapping to the target library's gates are crucial for achieving a hardware-efficient implementation.

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day13/babysoc_link_and_compile.PNG">
	
</center>
  - Below is the gui of design after compile

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day13/babysoc_gui_after_compile.PNG">
	
</center>


5. **Generating the Netlist:**
   - Generate the gate-level netlist for BabySOC, including RVMYTH, DAC, and PLL, using the `write` command in Verilog format. The resultant file, `vsdbabysoc_netlist.v`, encapsulates the entire synthesized netlist.

### Gate-Level Simulation

Subsequently, the synthesized netlist (`vsdbabysoc_netlist.v`) is employed for gate-level simulation. This simulation phase provides insights into the functionality and interactions of the integrated components, RVMYTH, DAC, and PLL, in the post-synthesis context. It allows for a thorough analysis of the hardware-ready representation, enabling validation and refinement of the design before proceeding to physical implementation.


The post-synthesis representation of BabySOC reflects an optimized, gate-level implementation. The integration ensures that RVMYTH, DAC, and PLL work seamlessly, allowing for a comprehensive evaluation of the complete block's functionality and performance.


### Pre-Synthesis Simulation:
- **Description:**
  - Pre-synthesis simulation involves assessing the functionality and behavior of BabySOC at a higher level of abstraction.
  - The description primarily focuses on the intended behavior of RVMYTH, DAC, and PLL as per their high-level specifications.

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day12/vsdbabysoc_dac.PNG">
 
</center>

- **Level of Abstraction:**
  - The simulation is conducted at a behavioral or RTL (Register-Transfer Level) description.
  - The emphasis is on functional correctness and adherence to the specified behavior.

### Post-Synthesis Simulation:
- **Description:**
  - Post-synthesis simulation involves validating the functionality and behavior of BabySOC at a detailed gate-level representation.
  - The description reflects the actual gate-level implementation of RVMYTH, interfaced with DAC and PLL.

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day13/babysoc_gls.PNG">
 
</center>

- **Level of Abstraction:**
  - The simulation operates at the gate level, considering the synthesized netlist's actual gates and interconnections.
  - It allows for precise analysis of timing, power consumption, and other low-level characteristics.

- **Functionality Consistency:**
  - The post-synthesis simulation confirms the consistency in functionality observed during pre-synthesis.
  - The design continues to perform the specified operation: sum of the first n natural numbers up to 1000, followed by a decrement in the expected pattern.

- **Analog Output Observation:**
  - In the post-synthesis simulation, the observation of analog output from DAC is enabled.
  - This provides valuable insights into the analog domain and confirms the integration and functionality of the analog component within BabySOC.



</details>

## Day-14 SynopsysDC and Timing Analysis
<details>
	<summary>Introduction</summary>

In VLSI design, the term "PVT corner" refers to a specific set of process, voltage, and temperature conditions used to characterize or analyze the performance and behavior of a semiconductor device or circuit.

1. **Process (P):** The process corner refers to a specific manufacturing process variation, including parameters like doping levels, oxide thickness, and other fabrication parameters. Process variations can occur due to different manufacturing conditions or tolerances in the fabrication process.

2. **Voltage (V):** The voltage corner represents the different voltage levels at which the circuit or device is characterized. This includes operating at various supply voltages to understand the behavior and performance under different power conditions.

3. **Temperature (T):** The temperature corner represents different temperature conditions at which the circuit or device is characterized. Operating at various temperature levels helps in understanding how the device or circuit behaves under different thermal conditions.

PVT corners are essential in VLSI design because semiconductor devices' behavior can vary significantly based on these parameters. Characterizing a design at various PVT corners helps ensure that the circuit or device will function correctly and within specified performance limits under a range of real-world operating conditions.

Designers use PVT corners to analyze the worst-case performance, optimize for power, or achieve a balance between performance, power consumption, and other design goals. It's important to consider and account for process, voltage, and temperature variations to create robust and reliable integrated circuits.

TNS (Total Negative Slack), WNS (Worst Negative Slack), and WHS (Worst Hold Slack) are terms used in the context of timing analysis in digital integrated circuit design. These terms are used to evaluate the timing performance of a circuit and ensure that it meets the specified timing requirements.

1. **TNS (Total Negative Slack):**
   TNS represents the sum of the negative slack across all paths in a circuit. Slack is the amount of time by which a signal can be delayed without violating the specified timing constraints. A negative slack indicates that a path violates its timing requirements. TNS provides an overall view of how much timing violation exists in the entire design.

2. **WNS (Worst Negative Slack):**
   WNS is the most critical or largest negative slack among all paths in the circuit. It represents the timing violation that is closest to breaching the specified timing constraints. Addressing the WNS is crucial in design optimization and fixes, as it determines the worst-case timing scenario in the circuit.

3. **WHS (Worst Hold Slack):**
   WHS is similar to WNS but specifically relates to hold timing violations. Hold timing refers to the minimum amount of time that data must be held stable after a clock edge to ensure correct operation. WHS identifies the path with the largest negative slack with respect to hold timing, indicating the worst-case hold violation in the design.

These metrics are critical for timing closure in the VLSI design process. Designers use various techniques such as gate resizing, buffer insertion, clock skew adjustment, and pipeline optimization to address negative slack, minimize WNS, and ensure that the circuit meets its timing requirements. Achieving good TNS and eliminating WNS and WHS is essential to ensure the circuit operates reliably and within the specified timing bounds.

</details>

<details>
	<summary>Labs</summary>

The objective of this lab was to analyze the timing performance of the synthesized design under varying Process, Voltage, and Temperature (PVT) corners. PVT corners are critical parameters that significantly influence the behavior and reliability of integrated circuits. Understanding how a design performs under diverse PVT conditions is crucial for ensuring its robustness and adherence to specified timing requirements.

In this analysis, we synthesized the design considering different PVT corners to evaluate Total Negative Slack (TNS), Worst Negative Slack (WNS), and Worst Hold Slack (WHS). TNS gives us an overall view of timing violations across all paths in the design, while WNS and WHS pinpoint the most critical timing paths in terms of setup and hold violations, respectively.
### Conversion of .lib Files to .db Format for Synthesis
To perform the synthesis process with Synopsys Design Compiler (dc_shell), it's crucial to convert the necessary .lib files into a compatible .db format using lc_shell. However, during this conversion, certain .lib files encountered errors, necessitating manual intervention to resolve the issues and ensure a smooth synthesis experience.

```tcl
foreach file [glob *.lib] {
  set file_name [file rootname [file tail $file]]  
  read_lib $file
  write_lib $file_name -f db -o $file_name.db
}
```

Here's an overview of what each part of the script does:

1. **`foreach file [glob *.lib] { ... }`:**
   - Iterates through each .lib file in the directory.

2. **`set file_name [file rootname [file tail $file]]`:**
   - Extracts the base name of the .lib file (without the extension) to use as the file name for the .db file.

3. **`read_lib $file`:**
   - Reads the contents of the current .lib file.

4. **`write_lib $file_name -f db -o $file_name.db`:**
   - Writes the contents of the .lib file into a corresponding .db file, using the extracted base name.

This TCL script automates the conversion process for multiple .lib files, helping streamline the workflow for preparing these files for synthesis using Synopsys dc_shell.

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day14/db_convert.PNG">
 
</center>


### Automating Synthesis and Timing Analysis for Multiple Corners

In order to analyze BabySOC's performance across various corners, a TCL script is written to automate the synthesis process and generate corresponding timing reports for each corner.

#### TCL Script Overview

1. **Identification of .db Files:**
   - The script begins by identifying the .db files, representing different corners, essential for synthesizing BabySOC.

2. **Exclusion of Specific Files:**
   - Certain .db files, such as "avsddac.db" and "avsdpll.db," are excluded from the synthesis process as they are mentioned in the code for all the iterations.

3. **Synthesis and Timing Report Generation:**
   - For each valid .db file representing a corner, the script initiates the synthesis process using Synopsys Design Compiler (dc_shell).
   - Synthesis is driven by appropriate target and link library configurations for the respective corner.
   - Timing reports are generated, providing crucial insights into the design's performance for each corner.

4. **Report Storage:**
   - The generated timing reports are systematically stored in the "reports" directory, facilitating easy access and analysis.
```
set db_files [glob -directory "./" -types f -tails *.db]
set exclude_files {"avsddac.db" "avsdpll.db"}
set sky_db {}
foreach db $db_files {
    if {$db ni $exclude_files} {
        lappend sky_db $db
    }
}
    
foreach file_name $sky_db {
    set target_library [concat $file_name " avsddac.db avsdpll.db "]
    set link_library [concat " * " $file_name " avsddac.db avsdpll.db "]
    echo $file_name
    read_verilog vsdbabysoc.v
    source ../sdc/vsdbabysoc_synthesis.sdc
    link
    compile_ultra

    report_timing > reports/$file_name.rpt2
    report_qor > reports/$file_name.rpt

     

}
```

#### Script Execution Flow

- For each valid .db file representing a corner, the script:
  - Configures target and link libraries for synthesis.
  - Reads the Verilog description of BabySOC (`vsdbabysoc.v`).
  - Incorporates the necessary SDC (Synopsys Design Constraints) file for synthesis (`vsdbabysoc_synthesis.sdc`).
  - Links the design.
  - Executes the compilation.
  - Generates timing reports, providing valuable timing and quality of results (QoR) data.
    
For detailed synthesis reports, please visit the [Reports Folder](https://github.com/jagdishthakur904/samsung-pd-training/tree/master/Images/Day14/reports).

Below is the snapshot of all the WNS, TNS and slacks from report generated.
<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day14/wns_and_tns1.PNG">

</center>


### Timing Metrics Table:

The following table presents the timing metrics (WNS, TNS, Violating Paths) for each PVT corner related to setup timing:

| Corner         | WNS  | TNS     |
|----------------|------|---------|
| ff_100C_1v65   | 0.00 | 0.00    |
| ff_100C_1v95   | 0.00 | 0.00    |
| ff_n40C_1v56   | 0.10 | 71.58   |
| ff_n40C_1v65   | 0.00 | 0.00    |
| ff_n40C_1v76   | 0.00 | 0.00    |
| ss_100C_1v40   | 3.37 | 3448.14 |
| ss_100C_1v60   | 1.82 | 1841.68 |
| ss_n40C_1v28   | 8.65 | 9287.75 |
| ss_n40C_1v35   | 5.64 | 6058.17 |
| ss_n40C_1v40   | 4.61 | 4884.20 |
| ss_n40C_1v44   | 3.73 | 3954.31 |
| ss_n40C_1v76   | 1.06 | 1061.86 |
| tt_025C_1v80   | 0.13 | 94.46   |


<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day14/setup_wns.PNG">
 
</center>

#### Variation Analysis for PVT Corners:

- **Fast (ff) Corners:**
  - **Process Variation (P):**
    - The `ff_n40C_1v56` corner stands out with a WNS of 0.10, indicating a slightly best setup timing performance compared to other fast corners. This suggests that at -40°C, the process may not be as optimized for setup timing.
  - **Voltage (V):**
    - Both 1.65V and 1.95V exhibit zero WNS for fast corners, indicating robust performance in meeting setup timing requirements at both high and low voltages.
  - **Temperature (T):**
    - For fast corners, all temperatures show negligible WNS (0.00), implying effective meeting of setup timing requirements irrespective of temperature.

- **Slow (ss) Corners:**
  - **Process Variation (P):**
    - The slow corners (`ss`) generally exhibit higher WNS values, indicating the challenges in meeting setup timing requirements with a less optimized process.
  - **Voltage (V):**
    - Lower voltages (e.g., `ss_n40C_1v28`) result in notably higher WNS, suggesting that lower voltages can lead to more setup timing violations in slow corners.
  - **Temperature (T):**
    - Lower temperatures (e.g., `ss_n40C_1v44`) lead to lower WNS, indicating better setup timing performance at lower temperatures in slow corners.

#### Analysis of Temperature and Voltage Effects:

- **Temperature (T) Effect:**
  - At 100°C and -40°C, most corners show low WNS values or zero, indicating effective setup timing compliance even at extremes of temperature.
  - At 25°C, WNS remains low or zero for most corners, further highlighting that the design maintains good setup timing performance at moderate temperatures.

- **Voltage (V) Effect:**
  - Both 1.65V and 1.95V exhibit zero WNS for fast corners, indicating that the design comfortably meets setup timing requirements at these voltages.
  - In slow corners, lower voltages (e.g., `ss_n40C_1v28`) lead to significantly higher WNS, suggesting that lower voltages can increase setup timing violations in slow corners.




The following table presents the timing metrics (WNS, TNS, Violating Paths) for each PVT corner related to hold timing:



| Corner         | WNS  | TNS    |
|----------------|------|--------|
| ff_100C_1v65   | 0.15 | 50.24  |
| ff_100C_1v95   | 0.20 | 130.87 |
| ff_n40C_1v56   | 0.11 | 6.72   |
| ff_n40C_1v65   | 0.14 | 39.58  |
| ff_n40C_1v76   | 0.18 | 85.22  |
| ss_100C_1v40   | 0.00 | 0.00   |
| ss_100C_1v60   | 0.00 | 0.00   |
| ss_n40C_1v28   | 0.00 | 0.00   |
| ss_n40C_1v35   | 0.00 | 0.00   |
| ss_n40C_1v40   | 0.00 | 0.00   |
| ss_n40C_1v44   | 0.00 | 0.00   |
| ss_n40C_1v76   | 0.00 | 0.00   |
| tt_025C_1v80   | 0.09 | 5.17   |

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day14/hold_wns.PNG">
 
</center>

- **Fast (ff) Corners:**
  - **Process Variation (P):**
    - The worst negative slack (WNS) ranges from 0.15 to 0.20 for fast corners. Notably, the `ff_n40C_1v56` corner has the lowest WNS, indicating the fastest performance among the fast corners due to a more optimized process at -40°C.
  - **Voltage (V):**
    - Increasing the voltage from 1.65V to 1.95V results in a marginal increase in WNS, suggesting that a higher voltage slightly affects the critical paths for hold timing.
  - **Temperature (T):**
    - Comparing the `ff_100C_1v65` corner with the `ff_n40C_1v65` corner, we observe a decrease in WNS at lower temperature (-40°C), indicating a slowdown in switching at lower temperatures.

- **Slow (ss) Corners:**
  - **Process Variation (P):**
    - The slow corners (`ss`) generally exhibit lower worst negative slack (WNS) compared to fast corners, suggesting inherently slower performance due to a less optimized process.
  - **Voltage (V):**
    - Higher voltage in slow corners (e.g., `ss_100C_1v60`) slightly increases WNS, indicating a more pronounced impact on performance due to voltage changes in slower corners.
  - **Temperature (T):**
    - Lower temperatures (e.g., `ss_n40C_1v44`) generally lead to reduced WNS, reflecting slower switching at lower temperatures in slow corners.

#### Analysis of Temperature and Voltage Effects:

- **Temperature (T) Effect:**
  - At 100°C, we observe that the worst negative slack (WNS) ranges from 0.00 to 0.20, indicating that hold timing is generally well-met across corners at this elevated temperature.
  - At -40°C, the WNS ranges from 0.11 to 0.14, suggesting a slight improvement in hold timing performance at lower temperatures, likely due to reduced leakage and slower switching.
  - At 25°C, WNS ranges from 0.00 to 0.09, indicating that the design is relatively stable in terms of hold timing at this moderate temperature.

- **Voltage (V) Effect:**
  - Comparing the corners at 1.65V, the WNS ranges from 0.11 to 0.15, indicating relatively consistent performance in hold timing at this voltage level.
  - At 1.95V, the WNS ranges from 0.14 to 0.20, suggesting a higher impact of voltage on hold timing, with higher WNS values indicating potential violations.
  - At 1.56V, the WNS is 0.11, demonstrating that a lower voltage can lead to improved hold timing performance.



Below is the comparison of setup and hold slack for different corners

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day14/slack_comparision.PNG">
 
</center>




</details>



## Day-15-Inception of EDA and PDK

<details>
	<summary>Introduction</summary>

 OpenLANE is an open-source software toolchain developed by efabless that assists in the automated design and validation of digital integrated circuits (ICs). It focuses on implementing and verifying digital designs on various semiconductor technologies. OpenLANE aims to make the ASIC (Application-Specific Integrated Circuit) design process more accessible, cost-effective, and efficient for both professionals and hobbyists.

Here are some key aspects and components of OpenLANE:

1. **Automated Design Flow**: OpenLANE provides an automated and customizable digital design flow, from RTL (Register Transfer Level) to GDSII (Graphic Data System II) which includes synthesis, placement, routing, and design rule checking.

2. **Design Synthesis**: OpenLANE uses synthesis tools to convert RTL designs into gate-level netlists, optimizing for area, power, and timing.

3. **Floorplanning and Placement**: It helps in floorplanning and placing the various logic elements (blocks) on the chip, optimizing for performance and area.

4. **Routing**: OpenLANE performs routing, connecting the placed elements to create a complete layout that adheres to design constraints and meets timing requirements.

5. **Design Rule Checking (DRC)**: It validates the design against specified design rules to ensure compliance with the fabrication process.

6. **Timing Analysis**: OpenLANE conducts timing analysis to ensure that the design meets the required performance specifications.

7. **PDK (Process Design Kit) Integration**: OpenLANE supports various PDKs, which contain technology-specific data and models needed for design.

8. **Skywater PDK**: OpenLANE is often associated with the Skywater PDK, an open-source PDK for a 130nm technology process, provided by Google and Skywater Technology Foundry.

9. **Community Collaboration**: OpenLANE has a strong community of users and contributors who actively collaborate, contribute improvements, share experiences, and address issues related to the toolchain.

10. **Education and Learning**: OpenLANE is also used for educational purposes to teach and learn about ASIC design flows and methodologies.

Overall, OpenLANE facilitates an open and collaborative approach to ASIC design, making it more accessible for designers and researchers to explore and innovate in the field of integrated circuit design.
</details>

<details>
	<summary>Labs</summary>

For invoking openlane
```
docker
./flow.tcl -interactive
package require 0.9
prep -design picorv32a
```
<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day15/prep_design.PNG">
 
</center>

The "prep" phase involves setting up the necessary file structures and configurations for a design. During this stage, a new project directory is initialized to contain all the design files and configurations pertaining to the ASIC design. A structured directory hierarchy is established within the project directory, organizing various files such as RTL, synthesis scripts, configuration files, logs, and reports.

The directory structure typically includes subdirectories like "config," "runs," "src," "scripts," "results," and "logs." Configuration files, such as "design_config.tcl" and "config.tcl," are created within the appropriate directories to define design parameters, tool settings, and other necessary specifications for the ASIC design flow.

The RTL design files, represented at the Register Transfer Level (RTL), are placed in the designated directory (e.g., "src/rtl/") to facilitate synthesis and subsequent stages of the design flow. Additionally, custom scripts or modifications specific to the design or design flow can be added to the "scripts/" directory.

By following a systematic approach and organizing project files while defining configurations during the preparation stage, a solid foundation is laid for a successful ASIC design flow using OpenLANE. Each run within the "runs" directory can have its own configuration file, tailoring the design process based on specific requirements or design iterations.

During the preparation phase in OpenLANE, the "config.tcl" file, residing in the designated folder for a particular run, consolidates all the parameters utilized by OpenLANE for that specific run. This file is critical in configuring and customizing the behavior of OpenLANE according to the requirements and specifications of the design being processed.

Furthermore, the preparation stage involves the integration of technology-specific information from two key sources: the Technology LEF (Library Exchange Format) and the Cell LEF. The Technology LEF provides essential details such as layer definitions and a set of restricted design rules necessary for the Place-and-Route (PnR) flow. These rules and layer definitions are vital for accurately placing and routing the design elements.

On the other hand, the Cell LEF offers obstruction information for each standard cell. This information is crucial in minimizing Design Rule Check (DRC) errors during the PnR flow, ensuring that the standard cells are placed and routed in a manner that adheres to the design rules and specifications of the technology being used.

In summary, the "config.tcl" file centralizes parameters for a specific OpenLANE run, while the preparation in OpenLANE involves integrating technology-specific information from both the Technology LEF and the Cell LEF. These integrations are essential for achieving an effective and DRC-compliant PnR flow.

for synthesis
```
run_synthesis
```

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day15/synthesis.PNG">
 
</center>

The number of d flip flops = 1613

Total Number of cells = 14876

D flip flop ratio = 1613/14876 = 0.108429

In percentage => 10.8429%

</details>


## Day-16 Chip Floorplanning and Standard Cells

<details>
	<summary>Introduction</summary>
In the floorplanning phase of the ASIC design process, several critical parameters and aspects are defined to structure the layout and optimize various design elements.
In the context of OpenLANE, during the floorplanning phase, various critical parameters and actions are defined to structure the layout and optimize the design. Here's how these aspects are addressed in terms of OpenLANE:

1. **Die Area**: The total chip area is usually set in the configuration file (e.g., `design_config.tcl`) for a specific project.

2. **Core Area and Core Utilization**: These are determined by specifying the core utilization and aspect ratio in the `design_config.tcl`. Core utilization is usually set to a value within the 50-70% range.

3. **Aspect Ratio**: The aspect ratio is defined in the `design_config.tcl`.

4. **Place Macros**: Preplaced cells or macros are defined in the floorplan configuration within the `config.tcl` for a particular run. Locations and blockages for these macros are specified.

5. **Power Distribution Network**: While detailed power planning occurs in subsequent stages, the initial planning for power distribution and ground bounce mitigation starts in the floorplanning phase, setting the foundation for the PDN.

6. **Place Input and Output Pins**: Pin placement is addressed in the floorplan, specifying optimal locations for input and output pins in the `config.tcl` file.

7. **Preplaced Cells (MACROs)**: Locations and blockages for preplaced cells (macros) are defined in the `config.tcl` file to enable hierarchical PnR.

8. **Decoupling Capacitors**: Placement of decoupling capacitors near macros is defined in the floorplan configuration in the `config.tcl` file to address voltage drops and noise issues.

9. **Power Planning**: Planning for power distribution, ground bounce, and noise management starts in the floorplanning phase and is configured in the `config.tcl` file.

10. **Pin Placement**: Optimal pin placement is determined based on connectivity information and is specified in the `config.tcl` file.

In summary, OpenLANE uses configuration files (`config.tcl`, `design_config.tcl`) to define these aspects during the floorplanning phase, setting the necessary parameters for subsequent stages in the ASIC design flow.
</details>

<details>
	<summary>Labs</summary>

 ### Floorplanning with Openlane

To initiate the floorplanning stage in OpenLANE, the process begins with modifying the design-specific `config.tcl` file to tailor the configurations, encompassing parameters such as die area, core area, core utilization, aspect ratio, macros, power distribution, decoupling capacitors, and pin placement. These configurations are vital as they significantly impact the subsequent floorplanning process.

Subsequently, to execute the floorplanning, the `run_floorplan` command is used in the terminal within the project directory. This command prompts OpenLANE to read the configurations from `config.tcl` and commence the floorplanning process based on the specified parameters.

During the execution, progress can be monitored, and upon completion, the output—a DEF (Design Exchange Format) file—can be reviewed. This DEF file contains detailed information regarding the core area and the placements of standard cell sites, crucial for advancing to subsequent stages of the ASIC design flow.

To access the output, one can navigate to the designated directory containing the floorplanning results, typically located at `runs/<run_name>/results/floorplan/outputs/`. Here, `<run_name>` should be replaced with the actual name of the run provided during the floorplanning stage.

By following these steps, the floorplanning stage in OpenLANE can be executed successfully, resulting in a DEF file that outlines the core area and the initial placements of standard cell sites, guided by the configurations specified in the `config.tcl` file.

Below is the def file after floorplan
<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day16/floorplan_def.PNG">
 
</center>

### floorplan in Magic
To view a floorplan in Magic, three files are necessary:

1. **Magic Technology File (sky130A.tech)**:
   The Magic technology file (e.g., `sky130A.tech`) outlines technology-specific rules, layers, and parameters essential for accurate visualization and manipulation of the design in Magic. It encapsulates details about technology nodes and characteristics specific to the Skywater 130nm process.

2. **DEF File of Floorplan**:
   The DEF (Design Exchange Format) file, generated during the floorplanning stage, contains vital information regarding the core area, placement of standard cell sites, preplaced cells, and other floorplanning-related data. This file is crucial for an accurate representation of the floorplan layout in Magic.

3. **Merged LEF File**:
   The merged LEF (Library Exchange Format) file consolidates technology LEF information and cell LEF information. It includes layer definitions, standard cell properties, obstructions, and other design-specific details necessary for visualizing the floorplan layout in Magic.

To view the floorplan in Magic using these files:

1. **Launch Magic**:
   Open the Magic tool, either via the terminal or the interface.

2. **Load the Technology File**:
   Load the Magic technology file (`sky130A.tech`) using the relevant command within the Magic tool.

3. **Load the DEF File**:
   Load the DEF file of the floorplan using a command such as `lef read`, followed by the path to the DEF file.

4. **Load the Merged LEF File**:
   Load the merged LEF file using a command similar to `lef read`, followed by the path to the merged LEF file.

5. **Visualize the Floorplan**:
   After loading all the necessary files, the floorplan layout can be accurately visualized and navigated within the Magic tool.

Following these steps and providing the required files enables the successful viewing and analysis of the floorplan layout using the Magic tool.

Below is the gui view after floorplan
<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day16/floorplan_magic.PNG">
 
</center>

### Placement

In the Digital ASIC design flow following floorplanning, the next critical step is placement. Once the netlist has been synthesized and mapped to standard cells, and the floorplanning phase has determined the standard cell rows, placement can commence. OpenLANE conducts placement in two stages, namely:

1. **Global Placement**:
   In this initial stage, the placement is optimized for wirelength reduction. However, the placement achieved at this stage might not be entirely legal. Optimization efforts focus on minimizing wirelength by aiming to reduce the "half perimeter wirelength" metric. This stage involves arranging cells in a way that they are close to their ideal positions, but it may not adhere to all design rules and constraints.

2. **Detailed Placement**:
   After the global placement, the design goes through the detailed placement stage. This stage legalizes the placement of cells within the standard cell rows while conforming to the results obtained from the global placement. Detailed placement ensures that the placement adheres to design rules and constraints, making it a legally sound placement. It refines the positions of the cells, considering factors such as timing, power, and area optimizations. The goal is to achieve an optimal placement that meets the design specifications and constraints.

By conducting placement in these two stages, OpenLANE strikes a balance between optimization and legality, ultimately leading to a well-placed and optimized design that forms the foundation for subsequent stages in the ASIC design flow.

### Placement in magic
<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day16/placement_magic.PNG">
 
</center>

</details>
<details>
	<summary>Standard Cell Design Flow</summary>

 The standard cell design flow involves three key parts: Inputs, Design Steps, and Outputs.

1. **Inputs**:
   - **PDKs (Process Design Kits)**: These kits provide technology-specific information, including design rules, device models, and other necessary data for designing in a particular process technology.
   - **DRC & LVS Rules**: Design Rule Checking (DRC) and Layout vs. Schematic (LVS) rules are essential for ensuring the design adheres to specific layout and electrical criteria.
   - **SPICE Models**: SPICE (Simulation Program with Integrated Circuit Emphasis) models are used for simulating and analyzing circuit behavior.
   - **Library & User-defined Specs**: Specifications and requirements that guide the design process.

2. **Design Steps**:
   - **Circuit Design**: Creating the logical and electrical representation of the cell, specifying its functionality and behavior.
   - **Layout Design**: Translating the circuit design into a physical layout, considering factors like area, power, and performance.
   - **Characterization**: This step involves using tools like GUNA for characterizing the cells. Characterization includes timing, power, and noise characterization to create liberty files used by synthesis tools to optimize circuit arrangements.

3. **Outputs**:
   - **CDL (Circuit Description Language)**: A representation of the circuit's behavior in a textual format.
   - **GDSII**: The final layout in GDSII format, ready for manufacturing.
   - **LEF (Library Exchange Format)**: A standard format for exchanging library data, containing cell pin and geometry information.
   - **Extracted Spice Netlist (.cir)**: A netlist that includes parasitics and is used for accurate circuit simulation.
   - **Timing, Noise, Power Libraries**: Libraries providing critical timing, noise, and power information essential for synthesis and analysis.
   - **Function**: Description of the cell's functionality and behavior.

**Standard Cell Characterization**:
Standard Cell Characterization is a well-defined flow that involves the following steps:
   - Linking a Model File of CMOS containing property definitions.
   - Specifying process corners for the cell to be characterized.
   - Specifying cell delay and slew thresholds percentages.
   - Specifying timing and power tables.
   - Reading the parasitic extracted netlist.
   - Applying input or stimulus.
   - Providing necessary simulation commands.

This process ensures that the standard cell libraries are characterized accurately, enabling synthesis tools to optimize circuit arrangements effectively based on the defined characteristics.
</details>

## Day-17 Design Library Cell

<details>
	<summary>Introduction</summary>

The 16-mask process for semiconductor fabrication involves multiple steps to create a functional device. Here's a summarized overview of the process:

### 1. Substrate Selection and Preparation:
- **Substrate Choice**: Start by selecting a suitable substrate, often P-type silicon, with specific properties:
  - **High Resistivity**: Typically in the range of 5-50 ohms.
  - **Doping Level**: Usually around 10<sup>15</sup>cm<sup>3</sup>.
  - **Orientation**: Commonly (100) orientation.

- **Creating Active Regions**:
  - Define regions where PMOS and NMOS cells will be located on the substrate (active regions).
  - Isolate these pockets by creating an insulating layer, often Silicon Dioxide (SiO₂) of approximately 40nm thickness.
  - Deposit a layer of silicon nitride (Si₃N₄) about 80nm thick.

- **Well Formation**:
  - Use a photoresist layer and masks to define the regions for N-well and P-well formation.
  - Implant boron ions into the substrate for P-well formation and phosphorus ions for N-well formation.
  - To diffuse these ions into the substrate effectively, use ion implantation with specific energies (around 200keV for boron and 400keV for phosphorus).
  - The substrate is then placed in a high-temperature furnace (around 1100°C) for further diffusion, forming clear wells. This is known as the twin-tub process.

### 2. Gate Formation:
- **Defining the Gate**:
  - Deposit a layer of polysilicon about 0.4μm thick.
  - Use a mask and etching process to define the gate area.

- **Threshold Voltage Control**:
  - Boron is diffused into the substrate with lower energy (around 60keV) to achieve the desired threshold voltage for PMOS.
  - Similarly, phosphorus is diffused for NMOS.

### 3. Lightly Doped Drain (LDD) Formation:
- **LDD Structure Formation**:
  - Use masks and ion implantation to create lightly doped regions in the substrate (LDD areas) for both PMOS and NMOS devices.
  - This step helps in managing hot electron effects and short-channel effects.

### 4. Source and Drain Formation:
- **Creating Heavily Doped Regions**:
  - Apply masks to cover certain regions and expose others for ion implantation.
  - Implant heavily doped P+ and N+ regions in appropriate areas, forming the source and drain regions.

### 5. Contacts and Local Interconnects:
- **Interconnect Formation**:
  - Remove the thin screen oxide using HF solution.
  - Deposit titanium on the wafer surface using sputtering.
  - Heat the wafer to form a low-resistant TiSi2 layer.
  - Define interconnects using masks and etching processes.

### 6. Higher Level Metal Formation:
- **Metal Layer Deposition**:
  - Deposit a thick (SiO₂) layer, often doped with phosphorus or boron, to planarize the surface.
  - Drill contact holes using photolithographic processes.

- **Metal Layer Buildup**:
  - Grow a thin TiN layer to improve adhesion and act as a barrier between bottom and top interconnects.
  - Deposit a blanket layer of tungsten followed by an aluminum layer.

- **Multilayer Metal Formation**:
  - Use masks to define the pattern and create multiple metal layers with increasing thickness from bottom to top.

</details>

<details>
	<summary>Labs</summary>

```
magic -T sky130A.tech sky130_inv.mag &
```
<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/inv_bbox.PNG">
 
</center>


This is the generated spice file from magic
<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/inv_spice.PNG">
 
</center>

This is the updated spice file for feeding to ngspice
<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/updated_inv_spice.PNG">
 
</center>

below is the simulation in ngspice of inverter
<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/waveform_y_vs_t.PNG">
 
</center>


### Labs on DRC
The met3.mag is as shown below
<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/met3_sim.PNG">
 
</center>
Now we see that rule 3.4 is not the visible one but we can visualize it as follows

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/cif_see.PNG">
 
</center>

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/cif_see_spacing.PNG">
 
</center>


Now we load Poly
<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/poly_mag.PNG">
 
</center>

Poly 9 error

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/poly9.PNG">
 
</center>

These violations can be rectified by editing the .tech files drc rules

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/techfile_edit.PNG">
 
 
</center>


AFter DRC clean
<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/after_drc_clean.PNG">
 
</center>

To address certain violations in the design, specific actions and modifications are needed:

1. **Poly Resistor Spacing Issue to Diff and Tap:**
   - **Correction**: Copy the 3 poly metal and paste it into 2 different locations. Include PMOS and NMOS substrates and contacts.
   - **Action**: Modify the design to incorporate the above corrections, adjusting the poly resistor spacing to the diff and tap.

2. **Modification of .tech Files:**
   - **Correction**: Edit the .tech files to rectify issues related to design rules, properties, or specifications.
   - **Action**: Update the necessary parameters in the .tech files to ensure compliance with design requirements and rules.

These actions are crucial to ensure that the design adheres to the required specifications and resolves any violations that were identified. The adjustments made will contribute to a design that meets the desired criteria and is ready for further stages in the ASIC design process.


To describe DRC (Design Rule Check) errors as geometrical constructs:

DRC errors in the context of semiconductor design refer to violations of predefined geometric rules and constraints that are crucial for ensuring the manufacturability and functionality of the semiconductor device. These rules are defined based on the fabrication process, technology node, and design requirements. When a design violates these rules, it's flagged with DRC errors, indicating areas where the geometry does not conform to the specified constraints.

These geometrical constructs encompass various aspects of the design, including but not limited to:

1. **Spacing Violations**:
   - **Description**: Violations related to the minimum required distance between different features, such as wires, transistors, or metal lines.
   - **Cause**: Insufficient spacing can lead to electrical interference or short circuits.
   - **Resolution**: Adjusting the layout to meet the specified spacing requirements.

2. **Width Violations**:
   - **Description**: Violations concerning the width of certain features like metal traces or poly-silicon paths.
   - **Cause**: Inadequate width can affect electrical conductivity and resistance.
   - **Resolution**: Modifying the width of the specified elements to comply with the design rules.

3. **Enclosure Violations**:
   - **Description**: Violations where an element is not fully enclosed by another as required by the design rules.
   - **Cause**: Incomplete enclosure can lead to reliability issues or improper functioning.
   - **Resolution**: Adjusting the layout to ensure proper encapsulation according to design rules.

4. **Overlap Violations**:
   - **Description**: Violations involving the overlap of different layers or elements that should not overlap.
   - **Cause**: Overlapping can cause short circuits or other unwanted electrical effects.
   - **Resolution**: Modifying the layout to eliminate the overlap where not permitted by the design rules.

5. **Notching Violations**:
   - **Description**: Violations where specific geometrical features, such as corners or edges, are not constructed according to design guidelines.
   - **Cause**: Incorrect notching can impact the reliability and performance of the device.
   - **Resolution**: Adhering to the prescribed notching requirements by adjusting the geometry.

Understanding DRC errors in terms of geometrical constructs is essential for designers to rectify violations, ensuring the final design complies with the necessary geometric and fabrication rules for a successful semiconductor manufacturing process.

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/nwell6.PNG">
 
</center>

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/nwell6_ostyle_drc.PNG">
 
</center>

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/nwell_odnwell_shrink.PNG">
 
</center>

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/nwell6_feed.PNG">
 
</center>

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/nwell6_missing.PNG">
 
</center>

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/nwell_error.PNG">
 
</center>

<center>
	<img width="1085" alt="multicycle_path" src="https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day17/error_fixed.PNG">
 
</center>

</details>


## Day-18 Pre-Layout Timing analysis and Importance of good Clock Tree

<details>
	
<summary>Timing modelling using delay tables</summary>

### Theory 1: Introduction to Delay Tables

*Introduction:*

Clock gating involves using gates for clock nets to prevent dynamic switching and minimize short-circuit power in the clock tree when the clock is gated, as depicted in the figure below.

![Clock Gating](https://github.com/Dhananjay411/Samsungpdtraining/blob/master/samsungpd_%23day19/123.png)

1. When considering swapping a buffer for a gate, it's crucial to examine the timing characteristics of the buffer.
2. For each buffering level, an identical buffer should be used, and each node should drive the same node.
3. It's important to note that the output load varies, affecting the input transition of the following buffer due to load variations in one buffer.
4. Consequently, a range of delays is observed.

![Buffer and Gate](https://github.com/Dhananjay411/Samsungpdtraining/blob/master/samsungpd_%23day19/1234.png)

1. A delay table is characterized by varying the input transition and output load of a cell against the delay of that cell.
2. Each cell has its own delay table for different sizes and threshold tables.

![Delay Table](https://github.com/Dhananjay411/Samsungpdtraining/blob/master/samsungpd_%23day19/12345.png)

### Theory 2: Usage of Delay Tables

*Usage of Delay Tables:*

- Each type of cell has its individual delay table since variations in the internal pmos and nmos width/length ratio change the resistance, consequently affecting the RC constant and the delay of each cell.
- Values of delay not present in the table are extrapolated based on the available data.

![Delay Table Usage](https://github.com/Dhananjay411/Samsungpdtraining/blob/master/samsungpd_%23day19/32.png)

- Similar to delay tables, there's also a characterization table for input transition.
- The latency at endpoints is the sum of delays of each individual cell in that path.
- If the output load driven for a cell varies, there will be a non-zero total skew value between two endpoints, indicating different delay numbers between endpoints. Hence, it's preferable to have nodes at each level driving the same load.
- To maintain zero skew in the presence of varied load, using a different buffer size at the same level that achieves the same delay based on its delay table is an option.
- These factors should be considered during the early stages of clock tree design.
- Power-aware clock tree synthesis (CTS) involves considering endpoints that are active under specific conditions. Clock propagation into inactive cells is unnecessary during their inactive periods.

![Power-aware CTS](https://github.com/Dhananjay411/Samsungpdtraining/blob/master/samsungpd_%23day19/321.png)


### Lab 1: Converting Grid Information to Track Information
*Steps to convert grid information to track information:*

1. **Understanding Library Exchange Format (LEF):**
   - LEF is an ASCII-based specification representing the physical layout of an integrated circuit.
   - It contains design rules and abstract information about standard cells.
   - The information in LEF serves the purpose of the respective CAD tool, covering aspects like input, output, power, and group port, but excluding logic path information.

*Objective:* Extract LEF file from a .mag file and integrate it into the picorv32a flow (previous step involves standard cell library).

*Main Guidelines:*
   - Ensure input and output ports align at the intersection of vertical and horizontal tracks.
   - Standard cell width aligns with the track pitch, and the height aligns with the vertical track pitch.

*Steps:*
   - Open the tracks.info file:
     ```bash
     vim ~/Desktop/work/tools/openlane_working_dir/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/tracks.info
     ```
   - Run Magic to open a .mag file using the sky130A.tech technology file:
     ```bash
     cd ~/Desktop/work/tools/openlane_working_dir/openlane/vsdstdcelldesign
     magic -T sky130A.tech sky130_inv.mag
     ```

*Track Information (Used During Routing Stage):*
   - Tracks allow routes to pass over them, serving as metal traces.


![Track Information](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/jagdish_inv.png)


### Lab 2: Converting Magic Layout to Standard Cell LEF

*Steps to convert Magic layout to standard cell LEF:*

- Define layers without ports in the layout, while ports will be defined separately as pins of a macro.
- Ports definitions are necessary for LEF extraction.
- Ports are defined through the Magic layout editor, using the Text tool to fill in the required information.

*Example of Defining Ports for Input and Output:*
- Define classes of ports for further organization.
- Extract the LEF file and check the saved file.

*Extract LEF File:*
  ```bash
  cd ~/Desktop/work/tools/openlane_working_dir/openlane/vsdstdcelldesign
  save sky130A_inv_jagdish.mag
  ```

*Check Saved File:*
  ```bash
  ls
  ```

- Use Magic to open the .mag file and then write the LEF file.

*Open Magic and Write LEF:*
  ```bash
  magic -T sky130A.tech sky130_inv_jagdish.mag
  ```

*In Tkcon (Magic Console):*
  ```bash
  lef write
  ```

</details>


<details>
<summary>Configuring Synthesis Settings to Enhance Slack and Include inv_jagdish</summary>

### Introduction

In this lab, we'll configure synthesis settings to improve slack and include the inv_jagdish cell.

### Configuration Steps

1. Navigate to the OpenLane configuration directory:
   ```bash
   cd ~/Desktop/work/tools/openlane_working_dir/openlane/configuration
   vim README.md
   ```

2. Modify the following synthesis settings in the `README.md` file:
   - `SYNTH_STRATEGY`: Controls area and timing optimization.
   - `SYNTH_BUFFERING`: Controls buffering for high fanout nets.
   - `SYNTH_SIZING`: Controls cell sizing instead of buffering.
   - `SYNTH_DRIVING_CELL`: Ensures more drive strength for cells driving input.

   ![Synthesis Settings](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/modifications.png)

   ```bash
   echo $::env(SYNTH_STRATEGY)
   set ::env(SYNTH_STRATEGY) "DELAY 0"
   echo $::env(SYNTH_STRATEGY)
   echo $::env(SYNTH_BUFFERING)
   echo $::env(SYNTH_SIZING)
   set ::env(SYNTH_SIZING) 1
   echo $::env(SYNTH_SIZING)
   echo $::env(SYNTH_DRIVING_CELL)
   ```

3. Remove the existing synthesis file:
   ```bash
   cd ~/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/runs/12-10_05-00/results/synthesis
   rm -rf picorv32a.synthesis.v
   ```

4. Run the synthesis process in the OpenLane terminal:
   ```bash
   run_synthesis
   ```

   ![Synthesis Run](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/synthesis_success.png)

5. Run the floorplan stage in OpenLane:
   ```bash
   run_floorplan
   ```

 

6. Modify files in the `openroad` and `tcl_commands` directories:
   ```bash
   cd ~/Desktop/work/tools/openlane_working_dir/openlane/scripts/openroad
   vim or_basic_mp.tcl
   cd ~/Desktop/work/tools/openlane_working_dir/openlane/scripts/tcl_commands
   vim floorplan.tcl
   ```

   - Make necessary modifications in the opened files.

   ![Synthesis Settings](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/modifications.png)

      ![Synthesis Settings](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/modified_config.png)

8. Run floorplan and placement again:
   ```bash
   run_floorplan
   run_placement
   ```

9. Perform additional steps to resolve errors and create the placement result file:
   ```bash
   cd ~/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/runs/12-10_05-00/results/placement
   ```

   - Use Magic to read the LEF and DEF files.
   ```bash
   magic -T ~/Desktop/work/tools/openlane_working_dir/pdks/sky130A/libs.tech/magic/sky130A.tech lef read ../../tmp/merged.lef def read picorv32a.placement.def
   ```

   ![Placement Result](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/placement_cmd.png)


  ![Placement Result](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/placement_gui.png)

  ![Placement Result](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/placement_gui1.png)
  


**Theory 1: Setup Timing Analysis and Introduction to Flip-Flop Setup Time**

*Setup Timing Analysis and Introduction to Flip-Flop Setup Time:*

- In the context of timing analysis, we focus on setup time, particularly concerning flip-flops and clock edges.
- At time stamp 0, the first clock edge reaches the launch flop, marking the beginning of our analysis.
- At time stamp T, the second rising edge reaches the capture flop. The analysis interval is between 0 and T.
- For a combinational circuit to function correctly, the combinational delay must be less than the period T of the clock.

![Clock Edges and Timing Analysis](https://github.com/Dhananjay411/Samsungpdtraining/blob/master/samsungpd_%23day19/xy.png)

- In practical scenarios, the internal flop circuitry introduces a delay between mux 1 and mux 2.
- These internal delays impose restrictions on the combinational delay requirements.
- This internal delay is known as the setup time and needs to be subtracted from the total clock period T.
- This adjustment allows the capture flop enough time to compute and stabilize the data at Q before the second rising edge of the clock reaches.

![Internal Flop Circuitry and Setup Time](https://github.com/Dhananjay411/Samsungpdtraining/blob/master/samsungpd_%23day19/xyz.png)

**Theory 2: Introduction to Clock Jitter and Uncertainty**

*Introduction to Clock Jitter and Uncertainty:*

- Jitter refers to the deviation of a clock edge from its ideal position, usually caused by factors like clock generator circuitry, noise, power supply fluctuations, and interference from neighboring circuitry.
- Jitter is a critical consideration in design, contributing to the design margin specified for timing closure.
- Clocks are ideally expected to reach the clock pin at precisely 0 seconds or at Ts (time stamp), but real-world scenarios introduce uncertainty due to the clock source generation having its built-in variations, resulting in jitter.
- Jitter manifests as temporary variations in the clock period, affecting the combinational delay's stringency. Consequently, we adjust the combinational delay to account for uncertainty arising from jitter.

![Clock Jitter and Combinational Delay](https://github.com/Dhananjay411/Samsungpdtraining/blob/master/samsungpd_%23day19/k1.png)

- The combinational delay of a path is depicted above, reflecting the impact of jitter-induced uncertainty.
- Timing analysis becomes more challenging when dealing with multiple ideal clocks.

![Timing Analysis with Multiple Ideal Clocks](https://github.com/Dhananjay411/Samsungpdtraining/blob/master/samsungpd_%23day19/k2.png)


</details>
<details>
	<summary>CTS and signal integrity</summary>

### Theory 1: Clock Tree Synthesis and Buffering Using H-Tree Algorithm

- Clock tree synthesis is vital for propagating clock signals to all clock pins in the design.
- A well-designed clock tree considers skew between clock pins due to long routing.
- The H-tree implementation optimizes clock tree design based on distances between clock pins and the clock port.
- The goal is to minimize skew, allowing clock signals to reach all cells simultaneously.

![Clock Tree Diagram](https://user-images.githubusercontent.com/118953917/214889414-ef867688-41ee-4fce-b9ba-53c150a740f6.png)

- Clock tree buffering is necessary due to wire resistances and capacitance, which cause signal integrity issues.
- Buffers are added to maintain signal integrity and address routing-related delays.

![Buffering Diagram](https://user-images.githubusercontent.com/118953917/214899578-e074127a-75d3-4f4f-80c1-89001cd57860.png)



### Theory 2: Crosstalk and Clock Net Shielding

- Clock net shielding is crucial to protect clock nets from crosstalk, ensuring a glitch-free signal.
- Clock nets are critical, and shielding minimizes glitches and delta delays that can affect design functionality.
- Shielding can be connected to ground or Vdd, ensuring no switching activity occurs and maintaining data net integrity.

![Clock Net Shielding](https://user-images.githubusercontent.com/118953917/214894595-17db203b-7643-4333-800c-578284702548.png)



### Lab 1: Steps to Run CTS Using TritonCTS

- In the STA terminal, write the synthesized Verilog file and check its details.
- Run floorplan, placement, and CTS in the OpenLane tool.
- Modify the OpenLane configuration README.md file.




### Lab 2: Steps to Verify CTS Runs

- Modify TCL files for each stage to configure CTS parameters.
- In OpenLane, display and verify various CTS-related environment variables.


</details>

<details>
<summary>Timing Analysis with Real Clocks Using OpenSTA</summary>

### Theory 1: Setup Timing Analysis Using Real Clocks

- Clock network delays are combined after buffer insertion, considering clock signal integrity.
- Buffers are inserted into clock paths to maintain signal integrity, adjusting the clock edge arrival times.

![Setup Timing Analysis](https://user-images.githubusercontent.com/118953917/214993881-dec5a151-4e8b-4212-b8ba-64f1a8eca181.png)

- For hold timing analysis, the combinational delay should exceed the hold time of the flop to ensure data stability.

![Hold Timing Analysis](https://user-images.githubusercontent.com/118953917/214994634-1d64f057-197d-45f4-b7b0-65494f8cb69d.png)



### Hold Timing Analysis Using Real Clocks

- Hold timing analysis considers factors like jitter and clock network delays.
- Skew differences between launch and capture flops are critical for hold timing.
- Lower uncertainty is essential for accurate hold timing analysis.

![Hold Timing Analysis](https://user-images.githubusercontent.com/118953917/214995292-07ac14b8-171d-4058-9440-ff23b2804206.png)

- Formulas for setup and hold time calculations with real clocks.

![Formulas for Setup and Hold Time](https://user-images.githubusercontent.com/118953917/214995599-ba697707-5ed4-463a-8ba0-0deecc7594b3.png)



### Lab 1: Steps to Analyze Timing with Real Clocks Using OpenSTA

- Use OpenRoad to read and analyze the synthesized design with OpenSTA, considering clock libraries and SDC.
- Review the checks and analyze the timing paths.

![OpenSTA Commands](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/cts_run.png)


![OpenSTA Report](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/cts_tcl.png)



### Lab 2: Steps to Execute OpenSTA with Right Timing Libraries and CTS Assignment

- Use OpenRoad to read the design with TritonCTS and analyze it using the appropriate libraries.
- Check clock buffers and review timing analysis results.



![image](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/cts_real.png)


![image](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/cts_real1.png)

![image](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/cts_real_setup.png)


![image](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/cts_real_timing.png)


![image](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/real_timing.png)

</details>

## Day-19 Final stage RTL to GDS
<details>
<summary>Theory</summary>

### Introduction to Maze Routing using Lee's Algorithm

- **Routing Stage**
  - Maze Routing-Lee’s Algorithm is utilized to find the shortest path between two nodes in a grid.
  - Routing involves creating physical wire connections within the design by determining the best route between two endpoints, the source and the target, with the shortest distance and the least number of zig-zag turns.
  - The algorithm needs to consider any set blockages that hinder routing in a particular area.

![Maze Routing Example](https://user-images.githubusercontent.com/118953917/215030291-ceea2ccd-d922-4883-8370-97a39a423721.png)

**Steps in Lee's Algorithm:**

1. Create the routing grid behind the floorplan.
2. Define the source and target points to connect with the best route using the routing grid.
3. Label the grid ground (adjacent to horizontal and vertical grid), excluding grids under blockages and at the boundary.

![Lee's Algorithm Steps](https://user-images.githubusercontent.com/118953917/215032150-34401e02-d2db-4d5c-a437-3ca369b4cdec.png)



### Lee's Algorithm Conclusion

- Choosing the left-hand side (LHS) route is preferable over the right-hand side (RHS) due to the LHS figure providing a route with fewer bends (L-shaped).
- Lee's algorithm becomes complex for a large number of start and endpoints, consuming considerable time and memory.
- Various algorithms like line-search and stanner-tree algorithms can help reduce time and memory consumption.

![Lee's Algorithm Comparison](https://user-images.githubusercontent.com/118953917/215033857-8446f957-7d5d-4378-accf-81f824cfbdd9.png)



### Design Rule Check (DRC)

- Design Rule Check (DRC) involves adhering to specific rules during the routing of the design.
- DRC rules include minimal wire width, wire pitch, and wire spacing, all based on the fabrication process limitations.
  
![Wire Width and Spacing](https://user-images.githubusercontent.com/118953917/215035532-aaae220b-4b3d-446c-8eed-5b697367212c.png)

- DRC violations like signal shorts need to be addressed to prevent functional failure.
- New DRC rules include via width and via spacing based on technology limitations.

![Via Width and Spacing](https://user-images.githubusercontent.com/118953917/215036993-58407624-384b-4965-a9b1-0519dc5a5670.png)

- Parasitic extraction is performed to extract resistances and capacitances of the wires for further processes.

![Parasitic Extraction](https://user-images.githubusercontent.com/118953917/215037259-747e6a52-c7cd-4a01-ab20-209179aef4fe.png)

</details>


<details>
<summary>Labs</summary>

### Lab Steps to Build Power Distribution Network

> If exited from OpenLane
```
cd work/tools/openlane_working_dir/openlane
make mount
pwd
ls -ltr
./flow.tcl -interactive
package require openlane 0.9
prep -design picorv32a -tag 12-10_05-00
```

*Note: Use ```prep -design -tag``` to retain configurations from the last OpenLane job and ```prep -design -tag -overwrite``` to create a fresh run with new configurations without changing the tag name.*

> In OpenLane
```
echo $::env(CURRENT_DEF)    (Ensure current_def is at the CTS stage)
gen_pdn                     (Generate power distribution network)
```

* Error encountered during "gen_pdn" due to current_def not being changed to floorplan.pdn.


### Power Distribution Network (PDN)

![Power Distribution Network](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/19_gen_pdn.png)


### Routing

![Routing](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day18/routing.png)

![Error](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/error.png)
</details>

## Day-20 Floorplanning and POwerplanning in ICC2

<details>
	<summary>Theory</summary>

### Physical Design Flow

The **Physical Design Flow**  refers to the process of converting a synthesized netlist, design restrictions, and a standard library into a physical layout based on the design rules provided by the foundry. This layout is then sent to the foundry for the creation of the chip.

This flow is governed by specific objectives, including wire length reduction, achieving minimum area, and optimizing power consumption.

![Physical Design Flow Image](https://user-images.githubusercontent.com/118953917/215411723-547f98c2-d8ac-446c-92b2-19e020ed9f1c.png)

### Main Steps in the Physical Design Flow

1. **Create a Gate-Level Netlist (After Synthesis):**
   - The netlist is the result of the synthesis process and serves as the foundation for physical design.
   - Synthesis translates RTL (Register-Transfer Level) designs written in VHDL or Verilog HDL into gate-level specifications understood by subsequent tools.
   - It lists the cells used, their interconnections, area utilization, and other crucial parameters.

2. **Floorplanning:**
   - In this step, the dimensions of all blocks are calculated, and they are placed in appropriate positions on the chip.
   - Blocks with high connectivity are positioned close to each other to facilitate efficient connections.

3. **Partitioning:**
   - Partitioning involves dividing the chip into separate functional chunks, aiding in placement and routing.
   - It helps distinguish distinct functional blocks and facilitates modular design.

4. **Placement:**
   - Placement involves optimally positioning standard cells within the core boundary to achieve minimal congestion and optimal timing.
   - The tool optimizes the placement based on various criteria such as timing, congestion, area, and power.
   - The tool may also add buffers/inverters and place physical-only cells to meet timing, drive (DRV), and foundry requirements.

5. **Static Timing Analysis (STA):**
   - STA validates the timing performance of the design by checking all possible timing paths for violations.
   - It calculates signal propagation delays along each path and checks for violations of timing constraints.
   - STA is efficient and thorough compared to dynamic simulation, checking all timing paths.

6. **Clock Tree Synthesis (CTS):**
   - CTS is a crucial step in the physical design flow used to reduce skew and insertion delay in the clock distribution network.
   - It ensures the even distribution of the clock signal among all sequential elements in the design.

7. **Routing:**
   - Routing involves creating connections between cells and blocks.
   - Global routing assigns routing resources and keeps track of network assignment.
   - Detailed routing makes the actual connections based on the results of global routing.

8. **Physical Verification:**
   - This step ensures that the produced layout design is valid and adheres to technological prerequisites, density requirements, and other rules.
   - It involves density verification and checks for correctness in the layout.


![Physical Design Flow Image](https://user-images.githubusercontent.com/118953917/215418212-f6a6c325-c64d-43c9-8628-ef15c05ae168.png)

*Source: [ChipEdge](https://chipedge.com/steps-in-vlsi-physical-design-flow/#:~:text=VLSI%20Physical%20Design%20Flow%20is,the%20creation%20of%20the%20chip.)*
</details>
<details>
	<summary>Labs</summary>


### Physical Design Flow

#### Sources
1. [Getting Started with VSDBabySoC](https://github.com/Devipriya1921/VSDBabySoC_ICC2#getting-started-with-vsdbabysoc)

#### Setup Commands
```bash
cd /home/j.thakur/vlsi/day20
git clone https://github.com/manili/VSDBabySoC.git
git clone https://github.com/Devipriya1921/VSDBabySoC_ICC2.git
git clone https://github.com/bharath19-gs/synopsys_ICC2flow_130nm.git
git clone https://github.com/kunalg123/icc2_workshop_collaterals.git
git clone https://github.com/google/skywater-pdk-libs-sky130_fd_sc_hd.git
git clone https://github.com/kunalg123/sky130RTLDesignAndSynthesisWorkshop.git
```


**vsdbabysoc.tcl**

- Modify the file as per the given path and remove -lib in read_lib commands. Replace MYCLK with clk since the clock used in the design is {clk}.
- All commands have been inserted in gvim and will be executed one at a time.

![vsdbabysoc.tcl](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/vsdbabysoc_tcl.png)



#### Shell Commands
```bash
cd /home/j.thakur/vlsi/day20/
dc_shell
source vsdbabysoc.tcl
```

![Shell Commands](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/source_babysoc_tcl.png)



#### Reports

- **Report Area**

![Report Area](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/report_area.png)

- **Report Power**

![Report Power](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/report_power.png)

- **Report Timing**

![Report Timing](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/report_timing.png)


### Output Schematic

![Output Schematic](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/synth_gui.png)



### Performing Physical Design

#### Modifying Files

- **top.tcl**

![top.tcl](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/top_tcl_modifications.png)

- **icc2_common_setup.tcl**

![icc2_common_setup.tcl](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/icc2_common_setup_modifications.PNG)

![icc2_common_setup.tcl](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/icc2_common_setup_modifications2.PNG)

- **icc2_dp_setup.tcl**

![icc2_dp_setup.tcl](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/icc2_db_setup_modifications.PNG)

- **init_design.read_parasitic_tech_example.tcl**

![init_design.read_parasitic_tech_example.tcl](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/init_design_parasitic_modifications.PNG)

- **init_design.mcmm_example.auto_expanded.tcl**

![init_design.mcmm_example.auto_expanded.tcl](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/init_design_mcmm.PNG)

- **pns_example.tcl**

![pns_example.tcl](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/pns_example.png)

#### Output Layout

> Invoking icc2_shell
```bash
cd /home/j.thakur/vlsi/day20/run0
icc2_shell
source top.tcl
```

![Output Layout](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/top_run.png)

![Output Layout 2](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/gui1.png)

![Output Layout 3](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/dac_gui.png)

![Output Layout 3](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/pll_gui.png)

> In icc2_shell
```bash
set_propagated_clock [all_clocks]             (Converting clock object from ideal clock to propagated clock)
report_timing
estimate_timing
report_constraints -all_violators -nosplit -verbose -significant_digits 4 > /home/j.thakur/vlsi/day20/run0/violators.rpt
```

![Timing and Constraints](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/timing_7_per.png)

* estimate_timing report could not be generated since there are no estimate timing rules detected on nets

![No Estimate Timing](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/estimate_timing.png)

**violators.rpt**

```bash
gvim //home/j.thakur/vlsi/day20/run0/violators.rpt    (Reviewing violations report within the design)
```

![Violators Report](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/violators.png)


#### Modifying Constraints

```bash
gvim /home/j.thakur/vlsi/day20/vsdbabysoc.tcl
```

![Constraints Modification](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/modifications_in_sdc.png)

* Rerun the script in dc_shell and generate reports

**Generated vsdbabysoc.sdc after synthesis**



#### Slacks

* The slack seems to be decreased from the previous run

![Slacks](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/triming_after_clock.png)


</details>

## Day-21 Placement and CTS Labs

<details>
<summary>Theory</summary>


### Pre-Placement in VLSI Physical Design

In the VLSI physical design flow, "pre-placement" refers to the initial stage where components like cells are placed on the chip layout before detailed routing. Here are key elements associated with pre-placement:

1. **Physical Cells**: These are library cells that typically only connect to power and ground rails. They serve essential functions like power distribution and grounding in the design.

2. **Well Taps**: These are structures that ensure a stable power supply by connecting to the substrate and providing a low-impedance path to the power grid.

3. **End Cap Cell**: An end cap cell is placed at the boundary of the design to handle any abrupt changes in the routing pattern.

4. **Special Cells**: These cells might have specific functions critical to the design. They are placed strategically to optimize the design's performance and reduce power consumption.

5. **Spare Cells**: These are additional cells placed strategically in the layout. They can be used later during the design process for optimizations, repairs, or other modifications.

6. **Decap Cells**: Decoupling capacitor cells are placed to manage voltage fluctuations, ensuring stable and noise-free power distribution.

7. **Cell Padding**: Reserved space around cells to prevent routing congestion and to provide flexibility for future modifications.

### Pre-Placement Optimization

Before the detailed placement, optimization strategies are applied to enhance the design's quality. Here are the main areas of optimization in pre-placement:

1. **Routability**: This involves ensuring that the design is easily routable, meaning that routing wires can be efficiently placed without excessive congestion or detours. Proper cell placement and floorplanning are crucial to achieve good routability.

2. **Performance (Timing)**: Optimizations are performed to meet timing constraints and improve performance. This includes minimizing delays in critical paths, balancing delays across the design, and optimizing clock distribution.

3. **Power Optimization**: Techniques are employed to optimize power consumption, as power is a critical concern in modern VLSI designs. This involves strategies like power gating, voltage scaling, and minimizing switching activities.



### Placement in VLSI Physical Design

**What is Placement?**

Placement in VLSI physical design is the process of determining the optimal location for each standard cell and other components on the chip layout. It involves positioning the cells in such a way that it enhances the design's performance and makes subsequent routing more efficient.

**Key Aspects of Placement:**

1. **Optimization**: Placement is not just about arranging cells; it's about optimizing the design for various factors, including timing, power, and area. It's a critical step in achieving a balance between these factors.

2. **Routability**: Placement significantly impacts the routability of the design. Efficient placement ensures that the subsequent routing of interconnections can be accomplished with minimal congestion and delay.

**Goals and Objectives of Placement:**

1. **Timing, Power, and Area Optimization**: Achieving the best balance between timing, power consumption, and chip area to meet design goals.

2. **Minimum Congestion**: Ensuring that the routing paths are clear and unobstructed, minimizing congestion that can impede signal flow.

3. **Minimum Cell Density and Pin Density**: Avoiding overly dense placement of cells and pins to enhance the ease of routing and overall design manageability.

**Inputs for Placement:**

1. **Technology Files (.tf)**: Files containing information about the manufacturing technology and design rules.

2. **Netlist**: The logical representation of the design in terms of interconnected components.

3. **Synopsys Design Constraints (.sdc)**: Specifies timing, area, and other constraints for the design.

4. **Library Files (.lib)**: Contains information about standard cells and their characteristics.

5. **Library Exchange Format (.lef)**: Contains information about cell geometries and pin locations.

6. **Design Exchange Format (.def)**: Contains floor planning and power planning information.

**Placement Methods:**

1. **Timing Driven Placement**: Focuses on optimizing placement to meet timing constraints and reduce critical paths.

2. **Congestion Driven Placement**: Optimizes placement to reduce congestion, ensuring smoother routing paths.


### Steps in Placement Phase

**1. Design Constraints:**
   - Define constraints related to timing, area, power, and other design parameters that guide the placement process.

**2. Reading Gate-Level Netlist from Synthesis:**
   - Obtain the gate-level netlist generated during the synthesis process, which serves as the foundation for the placement stage.

**3. Global Placement:**
   - Place the cells in the chip area in a coarse manner, considering high-level connectivity and rough positions to meet initial constraints.

**4. Detailed Placement:**
   - Fine-tune the placement by optimizing cell positions to achieve better performance, reduce wirelength, and adhere to design rules.

**5. Placement Optimization:**
   - Iteratively refine the placement to enhance various design metrics such as timing, power, area, and routability.

### Outputs of Placement

**1. Physical Layout Information:**
   - Detailed information about the physical layout, including positions and orientations of each cell, placement of I/O pads, and macros.

**2. Cell Placement Location:**
   - Precise coordinates and positions of each cell within the chip area, ensuring minimal congestion and meeting timing requirements.

**3. Physical Layout, Timing, and Technology Information of Reference Libraries:**
   - Information about the physical layout, timing characteristics, and technology specifics of the standard cell libraries used in the design.



### Placement Stages

**1. Global Placement:**
   - Initial placement of cells in a chip area, ensuring high-level connectivity and meeting initial constraints.

**2. Detailed/Legal Placement:**
   - Fine-tuning the placement to ensure legal placement of cells, adhering to design rules and constraints.

**3. Placement Optimization:**
   - Iterative refinement of the placement to enhance various design metrics such as timing, power, area, and routability.

**4. Cell Sizing:**
   - Adjusting the sizes of cells to optimize performance, power, or area while maintaining design requirements.

**5. Cloning:**
   - Creating copies (clones) of certain cells to improve performance, reduce congestion, or meet specific design objectives.

**6. Buffering:**
   - Adding buffers strategically in the design to enhance signal quality, optimize timing, and manage loads.

**7. Re-Buffering:**
   - Fine-tuning buffer insertion based on the results from initial buffering, aiming for better timing and performance.


### CTS - Pre-CTS Optimization

**1. Perform High Fanout Net Synthesis (HFNS):**
   - Identifying and performing synthesis on high fanout nets to optimize their structure before CTS.

**2. Set CTS Routing Rules:**
   - Defining specific routing rules and guidelines for the CTS process to ensure efficient clock signal distribution.

**3. Shielding:**
   - Implementing shielding techniques to minimize clock skew and optimize clock distribution in the design.

**4. Non-Default Rules (NDR):**
   - Incorporating non-default routing rules where necessary to address specific design requirements and constraints.

**5. Set RC Delay Models:**
   - Configuring RC (Resistance-Capacitance) delay models to account for resistance and capacitance effects, optimizing signal delays.

**6. Double Spacing:**
   - Increasing the space between certain elements to avoid congestion and improve routing efficiency.

**7. Double Width:**
   - Increasing the width of certain critical nets or paths to enhance signal integrity and minimize delays.

**8. Ground Shielding:**
   - Employing shielding techniques on the ground plane to reduce noise and enhance the integrity of the clock signal.



### Clock Tree Synthesis (CTS)

**Definition:**
- Clock Tree Synthesis (CTS) involves distributing the clock signal throughout the chip while balancing the load to ensure uniform clock arrival times at each sequential element.

**Key Components:**
1. **Clock Buffer:**
   - Elements used to amplify and distribute the clock signal across the chip efficiently.
   
2. **Normal Buffer:**
   - Standard buffers employed to improve the strength and integrity of the clock signal.

**Goals:**
- **Meeting Clock Tree Design Rule Constraints:**
  - Adhering to specified design rules for the clock tree to ensure optimal performance and reliability.

- **Meeting Clock Tree Targets:**
  - Achieving set targets for clock distribution, including signal integrity and timing requirements.

**Main Concerns of CTS:**
- **Skew:**
  - Keeping clock skew (variation in arrival times of clock signals) within acceptable limits to maintain synchronization.

- **Noise:**
  - Mitigating noise during clock distribution to avoid signal degradation and ensure accurate clocking.

- **Power:**
  - Optimizing power consumption during clock distribution, considering its substantial impact on overall chip power usage.

- **Delay:**
  - Minimizing clock delay to meet timing requirements and ensure efficient functioning of the design.


</details>

<details>
<summary>Labs</summary>
### Observing for 40% of Utilization

In this phase, we aim to observe the design with a targeted core utilization of 40%. The steps involve modifying constraints, adjusting the core utilization in the design, generating reports, and examining the CTS schematic.

1. **Modifying Constraints:**
   - The process begins by modifying constraints to achieve the desired core utilization of 40%. This involves adjusting various parameters and configurations within the design script.


2. **Generated vsdbabysoc.sdc after Synthesis:**
   - The Synopsys Design Constraints (SDC) file is updated to reflect the modifications made to the design constraints after synthesis, considering the target utilization.

   ![Generated vsdbabysoc.sdc](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day20/modifications_in_sdc.png)

3. **Modifying Core Utilization = 40% in top.tcl:**
   - The core utilization is adjusted to 40% in the design script (top.tcl) to reflect the desired core density.

   ![Modify Core Utilization](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day21/top_modifi1.png)

4. **Output Layout with 40% Core Utilization:**
   - The resulting output layout is observed, and it's noted that the core of the Digital-to-Analog Converter (DAC) is visibly larger compared to the previous run with 7% core utilization, cause the total core area got reduced.
![Output Layout 1](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day21/40_per_gui.png)
![Output Layout 2](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day21/dac_40_per.png)
![Output Layout 3](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day21/pll_40_per.png)



5. **Reports Generated from the Run:**
   - Various reports are generated to assess the design's performance and adherence to constraints. These reports include pre-pin placement warnings and post-estimated timing information.

   ![Pre-Pin Placement Warnings](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day21/timing_for_40_per.png)
   ![Post-Estimated Timing Report](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day21/report_power_40_per.png)

7. **CTS Schematic Design:**
   - The Clock Tree Synthesis (CTS) schematic is showcased, emphasizing the transformation from ideal clocks to propagated clocks.

   ![CTS Schematic ](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day21/cts_schematic.png)
   ![CTS Schematic After](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day21/cts_sche_full.png)

   ![CTS Gui ](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day21/gui_cts_new.png)

    ![CTS Gui1 ](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day21/gui_cts_new1.png)



</details>

## Day-22 CTS Analysis Labs

<details>
	<summary>Theory</summary>

Clock Tree Synthesis (CTS) is an essential technique in the field of physical design. Its primary purpose is to ensure that the clock signal, which synchronizes all sequential elements (such as flip-flops) in a VLSI chip, is distributed uniformly and efficiently.

Key aspects of CTS include:

1. **Equal Clock Distribution:** CTS aims to distribute the clock signal equally to all sequential components across the chip. This uniform distribution ensures that each part of the chip receives the clock simultaneously.

2. **Balancing Delays:** Achieving equal clock distribution requires balancing the delays encountered by the clock signal as it travels from the source (the clock generation point) to all the different sequential elements. This balancing minimizes variations in clock arrival times at various parts of the chip, which is vital to avoid setup and hold time violations.

The main goal of Clock Tree Synthesis (CTS) is to address two critical aspects:

1. **Minimizing Skew:** Skew refers to the variation in the arrival times of the clock signal at different locations on the chip. By minimizing skew, CTS ensures that the clock signal reaches all sequential elements simultaneously. Reducing skew is essential to prevent timing violations and maintain reliable chip operation.

2. **Minimizing Insertion Delay:** Insertion delay is the additional time introduced by the clock tree as the clock signal propagates through buffers. Minimizing insertion delay helps maintain good timing performance and overall chip efficiency.

     ![cts](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/cts_image.jpeg)




### Various algo's used for CTS
In Clock Tree Synthesis (CTS), several algorithms and techniques are used to achieve optimal clock distribution. Some of the commonly employed clock wise CTS algorithms include:

1. **Conventional CTS (Clock Tree Synthesis):** This is the traditional and most widely used CTS method. It involves building a binary tree structure, where the clock signal source is at the root, and it fans out to leaf nodes which connect to sequential elements. This method is relatively simple but may lead to longer clock routes and potential skew issues.

2. **Multisource CTS:** In Multisource CTS, multiple clock sources are used to distribute the clock signal. This approach aims to reduce clock skew and improve clock distribution efficiency by having multiple sources of the clock tree. This can be particularly useful in large designs where conventional CTS may lead to excessive clock skew.

3. **H-tree CTS:** The H-tree structure is a more balanced and efficient clock distribution tree compared to the conventional binary tree. In an H-tree, the clock signal is distributed in a hierarchical pattern that minimizes clock skew and maintains a more uniform clock arrival time to different parts of the chip. It's often used in high-performance designs to achieve better clock distribution.

4. **Mesh CTS:** Mesh CTS, also known as Grid-based CTS, uses a grid-like structure to distribute the clock signal. This approach is efficient in minimizing clock skew, especially in designs with a grid-like architecture. It ensures that the clock signal is distributed uniformly across the chip.

    ![mesh cts ](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/clock_mesh.png)

 *Source: [vlsi-backend-adventure](https://www.vlsi-backend-adventure.com/cts.html)*





Each CTS algorithm has its advantages and is selected based on the specific requirements of the design, chip architecture, and performance goals. Designers may choose the most suitable algorithm to ensure reliable and efficient clock distribution in their VLSI designs.


### H-Tree algorithm

The H-tree algorithm is a clock tree synthesis technique used to distribute the clock signal in a balanced and efficient manner. The algorithm follows a hierarchical pattern, and here's how it works step by step:

1. **Identify Flip-Flops:** The first step is to identify all the flip-flops (sequential elements) in the design. These are the elements that need to be clocked and are part of the clock domain.

2. **Calculate Center:** Find the center point of all the identified flip-flops. This center point is often considered the centroid of these flip-flops' positions.

3. **Trace Clock Port:** Starting from the clock source (input port), trace the clock signal to the center point of these flip-flops.

4. **Divide the Core:** Divide the core area around the center point into two equal parts. This division can be horizontal, vertical, or both, depending on the specific implementation.

5. **Trace to New Centers:** From the center point, trace the clock signal to the new center points created in the previous step. This hierarchical structure ensures that clock signals propagate in a balanced way, minimizing clock skew.

6. **Recursive Division:** Continue this process of dividing the area into two equal parts and tracing the clock signal to new centers recursively until you reach the clock pin of each flip-flop. This hierarchical approach ensures that the clock signal travels efficiently, and clock skew is minimized.

    ![h tree ](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/h_tree.JPG)

*Source: [Physicaldesign4u](https://www.physicaldesign4u.com/2020/03/clock-tree-routing-algorithms.html)*



The H-tree algorithm aims to distribute the clock signal uniformly, especially in designs with a grid-like structure. By following this hierarchical pattern and dividing the area into balanced segments, it helps achieve a clock tree with reduced clock skew, leading to better overall design performance. This is particularly important in high-performance VLSI designs where maintaining synchronized clocks is critical.


### Various CTS checks

Various checks are performed during Clock Tree Synthesis (CTS) to ensure the clock distribution meets the required specifications and to guarantee the proper operation of the design. Here are some of the key CTS checks:

1. **Skew Check:** This check ensures that the clock signals reaching all sequential elements (flip-flops) are well-balanced in terms of arrival time. It's essential to minimize clock skew to prevent timing violations.

2. **Pulse Width Check:** It verifies that the clock signals' pulse widths (high and low phases) meet the specified requirements. Clock signals should have a sufficient duty cycle to guarantee proper operation.

3. **Duty Cycle Check:** Duty cycle refers to the ratio of the clock's high time to the total clock period. This check ensures that the duty cycle is within the specified bounds to prevent issues like setup and hold time violations.

4. **Latency Check:** In this check, the latency introduced by the clock tree is assessed. The goal is to ensure that the clock distribution doesn't introduce excessive delays that might impact the design's performance.

5. **Power Check:** This check focuses on power consumption. It's important to ensure that clock buffers and the clock distribution network are designed to minimize power usage while meeting performance requirements.

6. **Crosstalk Quality Check:** This check evaluates the potential for crosstalk, where the clock signal on one wire affects nearby wires, potentially causing signal integrity issues. Minimizing crosstalk is essential for reliable operation.

7. **Delta Delay Quality Check:** This check assesses the differences in delay between various branches of the clock tree. Large delta delays can lead to clock skew and, therefore, need to be minimized.

8. **Glitch Quality Check:** Glitches can occur during clock signal transitions and may lead to unexpected behavior. This check ensures that clock buffers are designed to minimize or eliminate glitches in the clock tree.

These checks are part of the clock tree synthesis process to validate the clock distribution network's quality and performance. Ensuring that the clock signal reaches all parts of the design reliably and consistently is crucial for the overall functionality and performance of the integrated circuit.

</details>


<details>
	<summary>Labs</summary>
In the ICC2 terminal, the provided commands are used to perform various checks and generate reports related to clock tree synthesis and timing analysis.
1. `check_clock_tree`:
   - This command is used to check for issues that can adversely impact the Quality of Results (QoR) of the design, especially the clock tree structure, constraints, and clock tree exceptions.
   - It helps identify problems that could affect the effectiveness of Clock Tree Synthesis (CTS).

![check clock tree](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/check_clock_tree.png)


2. `check_legality`:
   - This command checks the legality of the current placement in the design.
   - It reports violation statistics related to placement legality.
   - The goal is to ensure that the placement adheres to the design rules and constraints.
![check legality](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/check_legality.png)
   - After doing the man for `check_legality` command
![check legality](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/check_legality_man.png)


3. `report_clock_timing -type summary`:
   - This command generates a summary report related to clock timing.
   - The summary report provides an overview of key timing information and metrics for the clock network.
![clk_summary](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/clk_timing_summary.png)


4. `report_clock_timing -type skew`:
   - This command generates a report specifically focused on clock skew.
   - It provides details on skew-related timing information, which is essential for ensuring synchronized clock signals.

![clk_summary](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/clk_timing_skew.png)

  


5. `report_clock_timing -type latency`:
   - This command generates a report that focuses on clock latency.
   - It provides information about latency-related aspects of the clock network, which can impact overall design performance.

![clk_summary](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/clk_timing_latency.png)


6. `report_clock_timing -type transition`:
   - This command generates a report related to clock signal transitions.
   - It offers insights into how clock signals transition between different elements of the design.
![clk_summary](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/clk_timing_transition.png)

  - After doing the man for `report_clock_timing` command
![check legality](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/report_clock_timing_man.png)



The `synthesize_clock_trees -clocks clk` command in ICC2 Compiler is used to initiate the synthesis of clock trees for the specified clock domain, which is identified by the clock named "clk" in this case.

![clk_summary](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/cts_step_9.png)

After doing the man for `synthesize_clock_trees` command
![check legality](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/synthesize_clock_trees_man.png)


before running `synthesize_clock_trees -clocks clk` command the clock GUI window looks like
![clk_summary](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/before_cts.png)

after running `synthesize_clock_trees -clocks clk` command the clock GUI window looks like

![clk_summary](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/after_cts.png)
![clk_summary](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/pll_after_cts.png)
![clk_summary](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/after_cts_gui.png)


report generated after route_opt
![clk_summary](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day22/route_opt_qor.png)



 
</details>


## Day-23 Clock Gating Technique

<details>
	<summary>Theory</summary>

 ### Hierarchical Clock Tree Synthesis for Complex Designs

In the context of digital designs with a large number of flip-flops and diverse clock domains, a hierarchical approach to clock tree synthesis is a valuable strategy. It involves segmenting the chip into smaller, manageable regions, each with its own localized clock tree, which are then interconnected to form a comprehensive routed clock tree for the entire chip. This hierarchical strategy offers several benefits:

1. **Local Clock Trees**: Divide and Conquer
   - The design is partitioned into smaller regions, each with its dedicated local clock tree.
   - These local trees are optimized to minimize clock skew and insertion delay within their respective regions.
   - The division of the chip into smaller sections makes it more manageable and aids in achieving timing goals.

2. **Global Clock Tree**: Coordinating the Regions
   - The local clock trees within different regions are interconnected via a global clock tree.
   - The global tree coordinates clock signals between these regions, ensuring proper synchronization.
   - It allows for efficient signal distribution across the entire chip.

3. **Optimized Timing and Performance**
   - By focusing on each local tree individually, the hierarchical approach helps in achieving lower skew and reduced insertion delay.
   - This optimization enhances the overall timing and performance of the design, even for million-flop clock endpoints.

4. **Complexity Management**
   - Managing a single enormous clock tree in a complex design can be challenging and result in poor performance.
   - Hierarchical CTS simplifies the problem by breaking it down into more manageable parts, allowing for better control over the design.

5. **Customization**
   - Each local clock tree can be customized to the specific requirements of its region.
   - This enables the efficient handling of various clock domains and constraints within the design.

6. **Reduction of Skew**
   - Controlling clock skew, especially in large designs, is a crucial aspect of hierarchical CTS.
   - The approach allows for targeted skew reduction within individual regions before merging them into the global tree.

7. **Ensuring Timing Objectives**
   - The hierarchical approach offers a structured strategy to meet the timing and performance objectives for million-flop designs.
  
### Power-Aware Clock Tree Synthesis: Balancing Performance and Energy Efficiency

Clock tree synthesis (CTS) has traditionally focused on areas such as reducing clock skew and meeting timing constraints. However, as the demand for energy-efficient and low-power devices grows, power-aware CTS has emerged as an important component of the design process. Here's why power-aware CTS is crucial:

1. **Energy Efficiency Matters**: Excessive power consumption can lead to reduced battery life, increased heat dissipation, and environmental concerns. In applications like mobile devices, IoT, and data centers, energy efficiency is paramount.

2. **Balancing Performance and Power**: Power-aware CTS strikes a balance between performance (meeting timing constraints) and minimizing power consumption. It aims to distribute the clock signal efficiently while consuming less energy.

3. **Avoiding Over-Buffering**: Over-buffering is a common issue in CTS, where extra buffers are inserted to meet timing constraints. Power-aware CTS takes a more holistic approach, minimizing over-buffering and reducing the power overhead.

4. **Voltage Scaling**: Dynamic voltage scaling (DVS) is a power-saving technique that adjusts the voltage and frequency of the clock signal to reduce power consumption during periods of low activity. Power-aware CTS can facilitate DVS by optimizing the clock tree structure.

5. **Global vs. Local Optimization**: Power-aware CTS can involve both global and local optimization strategies. At the global level, it looks at the entire clock distribution network, considering factors like the clock mesh structure and skew. Locally, it optimizes buffers to reduce unnecessary power wastage.

6. **Optimal Sizing and Location**: By determining the optimal size and location of buffers, power-aware CTS minimizes the power needed for signal distribution. It considers factors such as signal capacitance and the load on buffers.

7. **Leakage Power Reduction**: CTS also addresses leakage power, which is a significant contributor to a chip's overall power consumption. By strategically turning off sections of the clock tree when not in use, it helps reduce leakage power.

8. **Comprehensive Analysis**: Power-aware CTS incorporates tools and methodologies for power analysis, such as estimating switching activity and dynamic power consumption. This information guides the CTS process to minimize power usage.

9. **Trade-offs with Timing**: While focusing on power reduction, power-aware CTS ensures that timing constraints are not compromised. It balances power optimization with meeting the required clock frequencies.

10. **Environmental Impact**: In an era of increasing environmental awareness, power-aware CTS contributes to more sustainable and eco-friendly electronic devices.


### Clock Gating with AND, OR, and Universal NAND Gate: Reducing Power Consumption

Clock gating (CG) is a well-established technique in digital design to minimize power consumption, particularly in sequential circuits that spend a considerable amount of time in idle or low-activity states. It aims to reduce dynamic power, which is a significant contributor to a chip's overall power usage. CG achieves this through the use of logic gates, primarily AND, OR, and Universal NAND gates, which are strategically placed in the clock tree. Here's an overview of clock gating and how it helps conserve power:

1. **The Dynamic Power Challenge**: Dynamic power is the power consumed by integrated circuits when they switch between logic states. In many designs, a significant portion of dynamic power originates from the clock distribution network. This is why CG is crucial; it targets this substantial source of power consumption.

2. **Idle and Active States**: In typical digital circuits, not all components are active simultaneously. Many components remain idle, waiting for specific conditions or inputs. During these idle periods, the clock signal can be 'gated' or disabled using logic gates.

3. **How CG Works**: Clock gating works by inserting logic gates (AND, OR, or Universal NAND) in the clock path. These gates evaluate specific conditions. If the conditions are met, the clock is allowed to propagate through the gate, enabling the clocked element. If not, the clock is 'gated' or blocked, preventing the clock signal from reaching the element. This effectively stops the idle or unnecessary clock pulses from propagating through the circuit.

4. **Reducing Transitions**: In digital circuits, each clock transition results in a power dissipation, known as dynamic power. By gating the clock signal when it's not needed, CG reduces the number of clock transitions, thus reducing power consumption.

5. **Conditional Activation**: CG allows conditional activation of circuit elements. For instance, in a microprocessor, certain execution units may be clock-gated when not in use. Similarly, in a complex SoC (System on Chip), specific IP blocks may be clock-gated when the related functionality is not required.

6. **Types of CG**: There are different types of CG techniques, such as positive-edge CG, negative-edge CG, and level-sensitive CG. The choice depends on the design requirements and the specific conditions under which clock gating should occur.

7. **Design Trade-offs**: While CG can significantly reduce power consumption, it can also introduce complexity and potential issues like signal glitches. Engineers must carefully design and verify the conditions under which clock gating is applied.

8. **Power Savings**: The power savings achieved through clock gating can be substantial. It directly impacts the chip's energy efficiency and extends battery life in applications like mobile devices.


**Clock Gating in VLSI Design: When and Where It's Implemented**
**1. Synthesis Stage:**

- **Purpose**: Clock gating can be introduced during the synthesis stage of VLSI design. The primary aim here is to ensure that the logical structure of the design takes into account the potential power savings offered by clock gating.

- **Types of Clock Gating**: During synthesis, the designer specifies the types of clock gating to be used. This can include AND gates, OR gates, or universal NAND gates, depending on the design requirements.

- **Insertion Logic**: In this stage, the designer defines the conditions under which the clock signal should be gated. These conditions are usually related to the activity or idleness of specific functional blocks within the design.

- **Logical Representation**: The synthesis tool generates logical representations of clock gating based on the specified conditions. These representations are then used to guide the physical implementation of clock gating in the later stages of design.

**2. Physical Implementation Stage:**

- **Purpose**: While the logical structure of clock gating is introduced during synthesis, it is physically realized during the implementation stage of VLSI design. This is where the design is translated into an actual layout and the physical connections are established.

- **Clock Tree Synthesis (CTS)**: In this stage, clock gating is implemented as part of the overall clock tree synthesis process. The logical gates that were specified during synthesis are placed within the clock distribution network. These gates allow or block the clock signal from reaching specific parts of the design, depending on the predefined conditions.

- **Optimization**: The physical implementation also involves optimization of the clock gating structures to ensure that they are efficient in terms of area, power, and timing.

- **Verification**: Verification tools are used to ensure that the clock gating logic is correctly implemented and that it meets the design requirements without introducing issues like glitches or excessive delay.

**3. Post-Implementation Verification:**

- **Purpose**: After the physical implementation, thorough verification and validation are carried out to ensure that the clock gating operates as expected and delivers the intended power savings.

- **Testing**: Extensive testing is performed to verify the functionality of the clock gating logic under various operational conditions. This includes testing under real-world scenarios where the design transitions between active and idle states.

- **Analysis**: Detailed analysis is conducted to quantify the power savings achieved through clock gating. This analysis helps to determine the overall energy efficiency and performance of the design.

### Routing in Physical Design Flow

In the physical design flow of integrated circuits (ICs), routing is the final and critical step. It involves making physical connections between various signal pins of the components that constitute the IC. These connections are established using different metal layers within the IC's layout. Here's the key aspects of the routing process:

**1. Types of Routing:**

Routing is categorized into several types based on the purpose and the signals involved. The three main types of routing are:

**a. Power/Ground (P/G) Routing:** This type of routing focuses on connecting the power and ground pins of various components in the IC. It is crucial for ensuring that every component has access to a stable power supply and ground connection.

**b. Clock Routing:** Clock signals play a pivotal role in synchronous digital circuits. Clock routing involves creating the physical connections for clock signals, ensuring minimal skew and stable clock distribution throughout the IC.

**c. Signal Routing:**

- **Global Routing:** Global routing establishes high-level connections between different blocks or regions of the IC. It determines the general paths for signal interconnections but does not provide the fine details of the routing.

- **Detailed Routing:** Detailed routing is where the intricate connections between individual pins, gates, and blocks are established. It involves optimizing the paths for critical signals to meet timing, power, and area constraints. Detailed routing is a highly complex and critical aspect of the routing process.

**2. Routing Optimization:**

Routing is a complex and resource-intensive process. To ensure that the design meets its specifications and constraints, various optimization techniques are employed. These techniques aim to minimize congestion, reduce signal delays, and ensure signal integrity. Some of the routing optimization techniques include:

- **Layer Assignment:** Deciding which metal layers to use for routing different signals based on their speed and characteristics.

- **Track Assignment:** Allocating specific tracks or routing channels to different signals and ensuring proper spacing and separation.

- **Wire Sizing:** Adjusting the width and spacing of wires to balance performance, area, and power consumption.

- **Obstacle Avoidance:** Managing and routing around physical obstacles such as other wires or components on the IC.

- **Clock Tree Synthesis (CTS):** Optimizing the routing for clock signals to minimize skew and power consumption.

**3. Final Routing Process:**

The last step of the physical design flow typically involves executing the final routing process. This process is often initiated with a command such as `route_opt`. During this phase, the tool uses the routing information generated in previous steps to create the actual physical connections on the layout. It considers all routing rules, optimization objectives, and constraints specified in the design.

Routing can be a time-consuming and resource-intensive phase, but it is essential for ensuring that the IC operates as intended, meeting performance, power, and area requirements. The output of the routing process is a fully routed design that is ready for manufacturing.



</details>

<details>
	<summary>Labs</summary>

**Resolving "cannot find usable buffers or inverters" Error in CTS**

During the Clock Tree Synthesis (CTS) stage in the physical design flow, I encountered an error indicating that there were "cannot find usable buffers or inverters." This error occured due to a mismatch between the voltage settings in the library cells and the voltage used for setup in the design. Below are the steps taken to resolve this issue:


1. **Identifying the Issue:** The first step was to identify the cause of the error. The error message pointed to a lack of available inverters and buffers, which are essential components in clock tree construction.

![before_cts](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/place_opt_failed.PNG)

2. **Using `check_bufferability` Command:** To gain further insights into the issue, I executed the `check_bufferability` command. This command is a valuable tool for identifying and diagnosing issues related to bufferability in the design.

`check_bufferability -nets CLK -verbose`

![check_bufferability](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/check_bufferlability_1.PNG)


3. **Voltage Mismatch Detected:** The `check_bufferability` command revealed that the error was linked to a voltage mismatch. This mismatch occurred between the library cells used in the design and the voltage setting specified in the design setup.

![check_bufferability](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/check_bufferlability_2.PNG)

4. **Modifying MCMM File:** To address the voltage mismatch issue,I ensured that the library cells and the design setup both had the correct voltage settings. This typically involves editing the MCMM setup file associated with the design.


5. **Re-Running the Flow:** After making the necessary changes to the MCMM file, I re-ran the CTS step. This time, the CTS process completed successfully without the "cannot find usable buffers or inverters" error.

After running `place_opt`

   ![place_opt_success](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/place_opt_success.PNG)
   
gui window

   ![before_cts](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/before_cts.png)

After doing the man for `place_opt` command
![check legality](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/place_opt_man.png)


After running `clock_opt`

   ![cts_success](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/cts_success.PNG)

gui window
      ![final_gui](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/final_gui.PNG)

   ![gui_after_cts](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/gui_after_cts.PNG)

The below image shows the buffer cell added in design
   ![clkbuf_cell](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/clkbuf_cell.png)



After doing the man for `clock_opt` command
![check legality](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/clock_opt_man.png)

Timing after cts

   ![Timing_after_cts](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/timing_after_cts.png)

after running `route_opt`

   ![route_opt](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/route_opt_qor.PNG)

After doing the man for `route_opt` command
![check legality](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/route_opt_man.png)

### Clock Gating Lab

For clock gating, `compile_ultra -incremental -gate_clock` command is used at synthesis stage, the def and gate-level netlist generated after synthesis is given as input to the flow here ICGs are inserted in the design

   ![report_clock_gating](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/clock_gating.PNG)

 ICGs insertion can be seen here 
 
   ![report_clock_gating](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/ICG.PNG)

In below snapshot you can see the ICG cell, its ref_name is SNPS_CLOCK_GATE_HIGH_core_21, it contains latch from sky130 lib

   ![ICG_cell](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day23/ICG_cell.PNG)


</details>

## Day-24 Timing Violations and ECO

<details>
	<summary>Theory</summary>
	
**What is ECO?**
- **Purpose:** ECO is a vital process in the semiconductor design flow that allows engineers to make adjustments or fixes to a chip's design even after significant stages of the design flow have been completed. These changes could be due to issues, design improvements, or the need to meet specific requirements.

- **Typical Stage:** ECO is generally carried out on the gate-level netlist of the design. This means that engineers work with the low-level representation of the design's logical elements (gates and flip-flops). Changes made to the gate-level netlist are also typically mirrored in the RTL (Register Transfer Level) description, ensuring that the logical functionality remains consistent.

- **Verification:** ECO is a complex process and involves thorough verification. Engineers need to ensure that the changes made during ECO do not introduce new design problems, violations, or bugs. Verification processes, including formal verification and functional simulation, are an integral part of ECO.

**Why ECO?**
- **PPA Tradeoff:** ECO enables designers to explore different trade-offs between Power (considering aspects like dynamic power, short-circuit power, and leakage power), Performance (meeting timing constraints), and Area (chip size). The ability to make changes at this stage allows for fine-tuning the design to optimize these parameters.

- **Tool Limitations:** Despite the power and capabilities of modern EDA (Electronic Design Automation) tools, they may not automatically resolve all design issues. Manual intervention is required to address complex or corner-case design challenges.

- **Verification Assurance:** Design verification processes often identify issues and bugs in the design. Performing ECO to address these problems helps ensure that the chip is free from errors without requiring a full redesign, which can be time-consuming and costly.

- **Sign-off Checks:** During the initial Physical Design (PD) phase, some sign-off checks might not be completed or addressed. ECO offers the opportunity to finalize these sign-off checks, ensuring the design meets all the required criteria.

**ECO Strategies in Detail**
The ECO process typically involves the following steps:

1. **Investigate the Problem:** The process begins by thoroughly examining the identified problem or the need for a design change using the latest design database and information.

2. **ECO Generation:** Based on the analysis, an ECO plan is created to address the problem. This plan specifies what changes should be made to the design.

3. **ECO Implementation:** Once the ECO plan is established, engineers make the necessary changes to the design using the most recent design database. This includes modifying the gate-level netlist, adding or removing logic elements, or making other adjustments.

4. **Database Update:** After implementing the ECO changes, the updated design is saved in the database. This new database becomes the basis for subsequent design stages.

![image](https://github.com/jagdishthakur904/samsung-pd-training/assets/142480250/d3d1b453-09cb-4864-a445-4bc0fc19476d)

**Various ECO Strategies**
- **Margin-Based Fixing:** This strategy focuses on resolving issues related to Design Rule Violations (DRV) and setup/hold time violations. Engineers may consider both max and min margins to address these issues.

- **Selective Endpoint Biased Fixing:** Engineers can opt to fix issues with and without margins, or they may choose to work within specific slack (timing) ranges to optimize the design's performance.

- **Slack-Based Fixing:** Slack is a measure of how much time a signal can be delayed without violating timing constraints. Engineers can target specific slack values, such as setup and hold target slack, or aim to minimize maximum slack violations.

- **Fix 'n' Number of Paths:** This strategy involves setting limits on the number of paths to be fixed. Engineers can specify the maximum number of paths to fix per group or per endpoint.

- **Group-Based and Path-Based Fixing:** This approach allows for fixes to be made at the group or individual path level, depending on the specific requirements of the design.

- **Full Chip vs. Reg2Reg Fixing:** Designers must decide whether to apply fixes globally across the entire chip or focus on specific register-to-register paths.

- **Leakage Fixing Using HVT:** High-Voltage Transistors (HVT) are employed to address leakage power concerns, optimizing power consumption.

- **Hierarchical ECO:** This strategy determines how fixes are applied in hierarchical designs, whether they are concentrated at the top level, applied individually within replicated hierarchies, or a combination of approaches.

- **Physical-Aware ECO:** Engineers consider physical design aspects during the ECO process. This can involve addressing routing congestion issues and ensuring that newly added logic fits within the available space on the chip.

ECO is a critical phase in semiconductor design, allowing engineers to fine-tune the design while ensuring it meets all required criteria for power, performance, and area. The success of ECO relies on careful planning, thorough verification, and a variety of strategies to address different design challenges.


</details>

<details>
	<summary>Labs</summary>
	
**Post-CTS Slack Improvement:**
1. After performing CTS with clock buffers, it's observed that the slack has improved, but it still doesn't meet the design requirements.
2. Setup and hold analysis is performed to identify areas of concern.
![setup](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day24/timing26.txt)

**Schematic Analysis:**
1. The schematic of the worst clock path is analyzed in the GUI to identify critical areas.
![worst_path](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day24/worst_path_gui.png)

![worst_path](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day24/schematic_before_sizing.png)

**Upsizing for Delay Reduction:**
1. To meet the slack requirements, the decision is made to upsize specific cells, increasing their drive strength to reduce delay.
2. The `size_cell` command is used to increase the size of selected cells.

![size_cell](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day24/size_cell.png)

**Slack Improvement:**
1. By upsizing the cells, the `report_timing -delay max` slack is met, addressing setup violations.
![setup](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day24/timing_diff_setup.png)

**Downsizing to Meet Hold Slack:**
1. To meet the hold slack requirement, the decision is made to downsize specific cells.
2. The `size_cell` command is used to reduce the size of selected cells to meet hold constraints.

![hold](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day24/timing_diff_hold.png)


**Comparing Before and After ECO:**
1. The QoR before and after ECO is compared using the `report_qor` command.
2. The analysis shows that the area has increased due to cell resizing, and some violations have been resolved.
   ![QOR](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day24/qor_diff.png)

**Fixing Transition and Capacitance Violations:**
1. The design has transition and capacitance violations. These are identified using `report_constraints -max_transition -all_violators`.
2. The violations are fixed by analyzing the affected nets and increasing the drive strength of the relevant cells using the `size_cell` command.

**Power Analysis:**
1. Power analysis is performed before and after ECO using the `report_power` command.
2. It is observed that power has increased due to higher drive strength.
![Power](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day24/power_diff.png)
**Adding Decaps:**
1. The ECO process includes adding decaps to the design to improve power distribution and signal integrity.
   ![Decap](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day24/decap_insertion.png)

    ![Decap](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day24/decap_gui.png)
 
</details>

## Day-26 Introduction to Mixed Signal FLow
<details>
	<summary>Theory</summary>

### Mixed Signal Design: A Brief Introduction

**What is Mixed Signal Design?**

- Electronic signals are messages encoded by changing the voltage of an electric current, serving to communicate within devices.
- There are two main types of electronic signals: analog and digital.
- Analog signals are more prevalent in nature, while microcontrollers and microprocessors primarily understand and use digital signals (1s and 0s).
- To bridge the gap between digital and analog, Analog-to-Digital Converters (ADCs) and Digital-to-Analog Converters (DACs) are employed.

**Characteristics of Mixed-Signal Chips:**

- Mixed-signal chips deal with input signals where precise values matter. This category includes RF, Analog, Analog-to-Digital, and Digital-to-Analog conversion.
- Modern mixed-signal chips may require high-precision signal measurement, which demands different design and process technology compared to regular digital circuits.

### Analog and Mixed Signal (AMS) Flow

- AMS, or Analog and Mixed Signal, involves the design and integration of both digital and analog components.
- The AMS flow encompasses various stages, as shown below:

![AMS Flow](https://user-images.githubusercontent.com/118953917/218935017-b6e05d14-a790-4607-8612-a27c89c5b98b.png)

### A Practical Example: VSDBabySoC

- VSDBabySoC serves as an example of a mixed-signal design, comprising different components:
  - RVMYTH processor (digital block)
  - PLL (analog block)
  - DAC (analog block, used for digital-to-analog conversion)

### Introduction to Key Files in the Design Process

**LEF (Library Exchange Format) File:**
- Contains physical properties such as width and height for standard cells.
- It is crucial for defining the layout of components.

**LIBerty File:**
- Contains timing information for the cells, including setup times, hold times, and delay information.

**GDSII and OASIS Files:**
- GDSII and OASIS are file formats for layout design that enable the transfer of design data between parties.
- They are crucial for handoffs from IP owners to PD teams and foundries for fabrication.

![Files Overview](https://user-images.githubusercontent.com/118953917/218978973-19dae4f1-8f5a-4916-acdc-a9cfdf711425.png)

**PnR Tool:**
- The Place-and-Route (PnR) tool is used for optimal placement of standard cells to minimize congestion, improve timing, area, and power.

**Why Are These Files Necessary?**
- LEF, LIB, and TF files are essential to provide crucial information for the physical design of the chip.

![Physical Design Flow](https://user-images.githubusercontent.com/118953917/218981759-27c9b056-ae06-481c-8ac1-826549041f43.png)

**Sources of These Files:**
- These files are sourced from various parties and are vital for different stages in the design process.

![File Sources](https://user-images.githubusercontent.com/118953917/218983204-5a925e58-9748-4ec4-902d-9c804e265cbd.png)

### Exploring IP Cores

**What Are IP Cores?**
- IP cores are blocks of logic or data used in semiconductor chips.
- They are often the intellectual property of a specific entity and are crucial for FPGA and ASIC designs.
- IP cores can be customized and mapped to different process technologies, offering flexibility.
- IP cores come in different categories, including hard IP cores and soft IP cores.

**IP Core Integration in Semiconductor Industry:**
- IP cores play a significant role in semiconductor chip development, as they facilitate design reusability and improve efficiency.

![IP Core Integration](https://user-images.githubusercontent.com/118953917/218985408-52ba048f-00c0-49bf-b1af-694b6094a823.png)


</details>

## Day-27 Introduction to Crosstalk-Glitch and Delta Delay

<details>
	<summary>Theory</summary>

 **Introduction to the Chip Design Cycle**

In the chip design process, we strive to achieve three main objectives:

1. **Power Efficiency:** Our first goal is to minimize power consumption, ensuring that the chip operates efficiently and conserves energy.

2. **Performance Enhancement:** We aim to improve the chip's performance in terms of speed and functionality.

3. **Compact Size:** We seek to create smaller chip devices, as smaller size can be advantageous in modern electronics.

**Crosstalk Noise Origins**

One significant factor contributing to crosstalk noise in chip design is high routing density and the use of a large number of standard cells. This is particularly noticeable in processes with channel lengths of 0.25 um and 0.1 um.

- **Channel Length Reduction:** To achieve smaller chip sizes, designers often reduce the channel length of MOSFETs. This reduction not only shrinks the MOSFET size but also leads to smaller combinational logic cells. As a result, more circuits can be accommodated in the same chip area. For example, a chip designed for sending and receiving messages can now host multiple instances, each handling different functions.

- **Interference Due to Reduced Size:** However, reducing component size can introduce interference issues, especially in processes with channel lengths of 0.1 um or less. In these scenarios, wires and nets are placed closely together, which can lead to crosstalk. Initially, when dealing with larger components, there might be 20 standard cells. As the component size decreases, the number of standard cells significantly increases, leading to denser routing. This density can result in functional failures within the design, often referred to as crosstalk.

So, while the reduction in component size allows for more functionality within a chip's area, it also brings about challenges related to crosstalk.

[Note: The source of this information is attributed to a figure from a lecture video in a Udemy course(https://www.udemy.com/course/vlsi-academy-crosstalk/learn/lecture/1614424#overview).]

![image](https://user-images.githubusercontent.com/118953917/219541836-b80e0fa7-52ce-45a3-898b-161ecf48c703.png)

**Dominant Lateral Capacitance**

- **Two Types of Capacitance:** There are two key types of capacitance involved in chip design:
  - **Interlayer Capacitance:** These are capacitors situated between two consecutive different layers in the chip.
  - **Lateral Capacitance:** These capacitors are placed between two wires at the same level within a metal layer.

![image](https://user-images.githubusercontent.com/118953917/219543759-59aad67d-c6f8-4d67-86ee-1182b9c4804c.png)

- **Increasing Lateral Capacitance:** One of the contributing factors to crosstalk noise is the increase in lateral capacitance, which occurs as the number of metal layers in the chip design increases. Lateral capacitance is particularly problematic as it predominantly exists within the same layer.

- **Reasons for Increased Lateral Capacitance:**
  - **Resistance Reduction:** Breaking the chip into multiple metal layers serves to decrease resistance. This lower resistance is crucial for improving the chip's efficiency.
  - **Overlap Area:** The overlap area between metal layer 1 and metal layer 2, as depicted in the figure below, becomes extensive. This substantial overlap leads to an increase in lateral capacitance. In processes with channel lengths of 0.25 um and above, interlayer capacitance is more dominant.

![image](https://user-images.githubusercontent.com/118953917/219565374-c89b697d-bab2-4759-a627-b5930a383fb4.png)

- **Challenges Due to Reduced MOSFET Size:** As the MOSFET size is reduced, the number of standard cells increases, leading to a greater number of connections. Consequently, the routing becomes denser. To address this, chip designers reduce the width of the metal. However, this alone may not suffice as the demand for routing resources in the area remains high.

- **Altered Connection Strategies:** In such scenarios, designers must adopt different connection strategies. For instance, a method that makes the signal travel in a straight line across a single metal layer without transferring the signal to a different metal layer. This adaptation is driven by the limited routing resources in a compact chip area.

- **Notable Changes:** Key changes that arise due to these factors include the reduction of metal width and an increase in the number of metal layers.

- **Lateral Capacitance Challenges:** The most significant drawback of lateral capacitance is that it primarily exists within the same layer. This close proximity can lead to immediate coupling of signals between different components of the same layer, resulting in the adverse impact of any switching activity.

![image](https://user-images.githubusercontent.com/118953917/219570032-d95aae1c-0f77-487d-83da-dc47820dd052.png)

**Introduction to Noise Margin**

- **Reduced Supply Voltage and Noise Margin:** Another important aspect to consider in chip design is the impact of lower supply voltage on noise margin.

- **Inverter Functionality:** In a basic inverter operation, low-level input results in high-level output and vice versa.

- **Graphical Representation:** This behavior is graphically represented, where when Vin (input voltage) is low, Vout (output voltage) is high, and vice versa. The critical transition point occurs at half the voltage (Vdd/2).

- **Varying Input Voltage:** As the input voltage transitions from low to high, the output voltage follows suit, gradually decreasing until it reaches a low level.

- **Ideal vs. Practical Behavior:** In an ideal scenario, this transition should be instantaneous, but practical scenarios introduce delays due to capacitances and resistances. The curve, while not perfectly smooth, approaches zero voltage.

- **Defining Key Voltages:**
  - **Input Low Voltage (VIL):** The range of input voltage recognized as a low logic level.
  - **Output High Voltage (VOH):** The output voltage corresponding to a high logic state.
  - **Input High Voltage (VIH):** The input voltage level above which the output is expected to be low.
  - **Output Low Voltage (VOL):** The output voltage at a high input level.

![image](https://user-images.githubusercontent.com/118953917/219579883-a91f6c08-72de-45c6-bbfc-483c7ff29838.png)

**Noise Margin Summary**

- **Defining Logic Levels:**
  - Any voltage between VOL (Output Low Voltage) and VIL (Input Low Voltage) is considered as logic 0.
  - In the range between VIL and VIH (Input High Voltage), the voltage is in an undefined region. It can transition from logic 1 to logic 0 or vice versa within this range, making it a critical zone.
  - Voltages between VIH and VOH (Output High Voltage) are consistently treated as logic 1.
  - It's essential to prevent voltages from entering the undefined region as it becomes impossible to distinguish between logic 0 and logic 1 in this case.

- **Challenge of Large Physical Distances:** This issue becomes pronounced when there is a significant physical distance between the main power supply and the circuit. 

- **Noise Margin Significance:** Noise margin plays a vital role in defining the input voltage range and output voltage behavior. Essentially, it varies the input voltage. It helps to identify how the input voltage should be categorized.
  - **Noise Margin:** Any voltage within the range defined by VOH and VIH is detected as logic 1 and should be placed within the inputs and outputs of the circuit.
  - Any voltage within the Noise Margin Low (NML) range is recognized as logic 0. Noise in this range can usually be managed or disregarded.

![image](https://user-images.githubusercontent.com/118953917/219953157-00f6b3c5-2728-4346-8112-c546254744ca.png)  
![image](https://user-images.githubusercontent.com/118953917/219952384-7bce91e1-b507-41d1-8706-82f6d5ea487c.png)

- **Lower Supply Voltage Impact:** A decrease in the supply voltage leads to a reduction in noise margin. As an example, in the figure below, the margin on the left-hand side (LHS) becomes less than 200 mV, and on the right-hand side (RHS), the noise margin falls below 100 mV.

![image](https://user-images.githubusercontent.com/118953917/219953486-88c0dbd4-6321-4b8c-85f9-2f88e0b85201.png)

**Noise Margin Summary**

- **Defining Logic Levels:**
  - Any voltage between VOL (Output Low Voltage) and VIL (Input Low Voltage) is considered as logic 0.
  - In the range between VIL and VIH (Input High Voltage), the voltage is in an undefined region. Within this range, the logic can transition from logic 1 to logic 0 or vice versa. This undefined region is a critical area.
  - Voltages between VIH and VOH (Output High Voltage) are consistently treated as logic 1.
  - It's crucial to prevent voltages from entering the undefined region because it becomes impossible to distinguish whether the voltage is in logic 1 or logic 0 within this zone.

- **Challenge of Large Physical Distances:** This issue becomes pronounced when there is a significant physical distance between the main power supply and the circuit.

- **Noise Margin Significance:** Noise margin plays a vital role in defining the input voltage range and output voltage behavior. Essentially, it varies the input voltage.
  - **Noise Margin:** Any voltage within the range defined by VOH and VIH is detected as logic 1 and should be placed within the inputs and outputs of the circuit.
  - Any voltage level in the Noise Margin Low (NML) range is recognized as logic 0. Noise in this range can usually be managed or disregarded.

- **Lower Supply Voltage Impact:** A decrease in the supply voltage leads to a reduction in noise margin. As an example, in the figure below, the margin on the left-hand side (LHS) becomes less than 200 mV, and on the right-hand side (RHS), the noise margin falls below 100 mV.

![image](https://user-images.githubusercontent.com/118953917/219953486-88c0dbd4-6321-4b8c-85f9-2f88e0b85201.png)

**Introduction to Signal Integrity and Glitch**

  
### Signal Integrity and Crosstalk
  
* Signal Integrity and Crosstalk are the Quality checks of the clock routes.
  
* **Signal integrity**: It refers to the ability of an electrical signal to reliably carry information and resist the disruptive effects of high-frequency electromagnetic interference from nearby signals.
  
* **Crosstalk**: This is an unwanted electrical interaction that occurs between two or more physically adjacent signal pathways due to capacitive cross-coupling. Crosstalk is a type of noise signal that interferes with the intended signal while it's being transmitted through the communication medium.
  
**Aggressor and Victim Nets**
  
* A signal pathway that experiences undesirable cross-coupling effects from a neighboring pathway is referred to as the victim pathway.
  
* The neighboring pathway that causes these effects in a victim pathway is known as the aggressor pathway.
  
### Crosstalk-Glitch
  
* Crosstalk noise, or simply crosstalk, occurs when one signal pathway is switching (changing state), and another pathway remains in a constant state. This switching signal can induce voltage spikes in the constant pathway due to the presence of coupling capacitance (Cc) between the two pathways.

* Types of Glitches --> These glitches can include Rise, Fall, Overshoot, and Undershoot, depending on how the voltage changes in the affected signal.

![image](https://user-images.githubusercontent.com/118953917/220038938-9c354627-8e3e-454a-8ee6-e855a5eaf6da.png)
  
### Performing Crosstalk Delay Analysis

1. Enable PrimeTime SI by using the command: `set_app_var si_enable_analysis true`.

2. Back-annotate the design with cross-coupling capacitance information in a SPEF or GPD file. Replace `file_name.spf` with the actual file name: `read_parasitics -keep_capacitive_coupling file_name.spf`.

### Using `check_timing` Command

To check specific aspects related to crosstalk analysis, you can use the following types:

- `no_driving_cell`
- `ideal_clocks`
- `partial_input_delay`
- `unexpandable_clocks`

### Generating Timing Reports

You can generate various timing reports related to crosstalk analysis using commands like:

- `report_timing`
- `report_si_bottleneck`
- `report_delay_calculation –crosstalk`
- `report_si_double_switching`
- `report_noise`

For example, to view the Crosstalk Analysis Report, use the following command:

```shell
report_timing -crosstalk_delta
report_si_bottleneck
report_delay_calculation –crosstalk
report_si_double_switching
report_noise
report_timing -transition_time -crosstalk_delta -input_pins -significant_digits 4
```

### Bottleneck Reports

Generate bottleneck reports with commands like:

- `report_si_bottleneck`
- `report_bottleneck`
- `delta_delay`
- `delta_delay_ratio`
- `total_victim_delay_bump`
- `delay_bump_per_aggressor`

For example, to get a list of all the victim nets with a delay violation or within 2.0 time units of a violation, listed in order of delta delay:

```shell
report_si_bottleneck -cost_type delta_delay -slack_lesser_than 2.0
```

### Crosstalk Net Delay Calculation

To calculate the delay for a specific net affected by crosstalk, you can use the following command. Replace `g1/Z` and `g2/A` with the actual pins or nets:

```shell
report_delay_calculation -crosstalk -from [get_pins g1/Z] -to [get_pins g2/A]
```

### Reporting Crosstalk Settings

To check your crosstalk settings and configurations, you can use the following commands:

- `report_si_delay_analysis`
- `report_si_noise_analysis`
- `report_si_aggressor_exclusion`

These commands will provide information about the crosstalk analysis settings in your design.

</details>

<details>
	<summary>Labs</summary>


### ICC2 Shell Commands

1. **Source a Tcl Script:**
   ```tcl
   source /home/j.thakur/vlsi/day20/run2/top.tcl
   ```
   - This command executes the `top.tcl` script, which likely contains instructions for your IC design.

2. **Update Timing Information:**
   ```tcl
   update_timing
   ```
   - This command updates the timing information within your design, recalculating timing constraints and delays.

3. **Write Parasitic Information in SPEF Format:**
   ```tcl
   write_parasitics -format spef -output vsdbabysoc_spef
   ```
   - This command writes parasitic information in the Standard Parasitic Exchange Format (SPEF) and saves it as `vsdbabysoc_spef`.
      ![spef](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day27/write_spef.png)

 ![spef](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day27/spef_file.png)

4. **Decompress a GZIP-Compressed File:**
   ```tcl
   gzip -d /home/j.thakur/vlsi/day20/run2/write_data_dir/vsdbabysoc/vsdbabysoc.pt.v.gz
   ```
   - This command decompresses the GZIP-compressed file named `vsdbabysoc.pt.v.gz`.

5. **Copy a File to Another Location:**
   ```tcl
   cp /home/j.thakur/vlsi/day20/run2/write_data_dir/vsdbabysoc/vsdbabysoc.pt.v /home/j.thakur/vlsi/day20/run2/
   ```
   - This command copies the decompressed `vsdbabysoc.pt.v` file to another location within your project directory.


### PT-Shell Commands

1. **Set Target Libraries:**
   ```tcl
   set target_library "/home/j.thakur/vlsi/day20/run2/avsddac.db /home/j.thakur/vlsi/day20/run2/avsdpll.db /home.j.thakur/vlsi/day20/run2/sky130_fd_sc_hd__tt_025C_1v80.db"
   ```
   - This command sets the target library, including multiple library files, for use in your design.

2. **Set Linked Libraries:**
   ```tcl
   set link_library [list /home/j.thakur/vlsi/day20/run2/avsddac.db /home/j.thakur/vlsi/day20/run2/avsdpll.db /home/j.thakur/vlsi/day20/run2/sky130_fd_sc_hd__tt_025C_1v80.db]
   ```
   - This command sets up a list of linked libraries, referencing the same library files as the target libraries.

3. **Read Verilog File:**
   ```tcl
   read_verilog /home/j.thakur/vlsi/day20/run2/vsdbabysoc.pt.v
   ```
   - This command reads and imports the Verilog file `vsdbabysoc.pt.v` into your PT-Shell environment.

4. **Link the Design:**
   ```tcl
   link_design
   ```
   - This command links and associates the imported design with the specified libraries and linked libraries.

5. **View Current Design:**
   ```tcl
   current_design
   ```
 ![current_design](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day27/cuurent_design.png)
   - This command displays information about the currently loaded and linked design.

These PT-Shell commands are part of the process of setting up design environment, importing the design, and associating it with the necessary libraries to perform various analyses and optimizations in the physical design stage.


Certainly, here are the provided commands structured more clearly:

### Commands for SDC, SI Analysis, and Parasitics

1. **Read SDC File:**
   ```tcl
   read_sdc /home/j.thakur/vlsi/day20/run2/func1.sdc
   ```
   - This command reads and imports the SDC (Synopsys Design Constraints) file `func1.sdc` into your design environment.

2. **Enable Signal Integrity (SI) Analysis:**
   ```tcl
   set_app_var si_enable_analysis true
   ```
   - This command sets an application variable to enable Signal Integrity (SI) analysis, allowing you to perform SI checks on your design.

3. **Read Parasitics with Capacitive Coupling:**
   ```tcl
   read_parasitics -keep_capacitive_coupling /home/j.thakur/vlsi/day20/run2/vsdbabysoc_spef.temp1_25.spef
   ```
   - This command reads parasitic information from the specified SPEF (Standard Parasitic Exchange Format) file and retains information related to capacitive coupling.

4. **Check Timing:**
   ```tcl
   check_timing
   ```
   - This command initiates a timing check, which evaluates the timing constraints and identifies any violations or issues related to signal integrity.


    ![check_timing](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day27/check_timing.png)

These commands are typically used during the physical design process to set constraints, enable SI analysis, and incorporate parasitic information into the design environment for accurate analysis and optimization.


1. **Report SI Bottleneck:**
   ```tcl
   report_si_bottleneck
   ```
   - This command generates a report listing the nets with the largest crosstalk effects. These are the nets that may be most affected by crosstalk noise.

2. **Report Bottleneck:**
   ```tcl
   report_bottleneck
   ```
   - This command generates a report that includes information about multiple minimum and maximum delay violations in your design.

3. **Report SI Delay Analysis:**
   ```tcl
   report_si_delay_analysis
   ```
   - This command generates a report that provides insights into the delay analysis specific to Signal Integrity, helping you understand timing characteristics.

     ![current_design](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day27/report_bottleneck1.png)

4. **Report SI Aggressor Exclusion:**
   ```tcl
   report_si_aggressor_exclusion
   ```
   - This command generates a report related to excluding aggressor nets from crosstalk analysis, which can help you fine-tune your SI analysis.

5. **Report SI Noise Analysis:**
   ```tcl
   report_si_noise_analysis
   ```
   ![current_design](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day27/report_aggressor.png)
   - This command generates a report focused on noise analysis, helping you understand the impact of noise on your design.

These reports can be useful for diagnosing and optimizing your design with respect to Signal Integrity, especially in scenarios where crosstalk and timing violations need to be addressed.

![current_design](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day27/report_constraints.png)

 
</details>

## Day-28 Introduction to DRC/LVS

<details>
	<summary>Theory</summary>

### Introduction to SkyWater SKY130

#### SkyWater PDK Overview

The SkyWater Open Source PDK is a collaborative effort between Google and SkyWater Technology Foundry. It offers a fully open-source Process Design Kit (PDK) and associated resources. The PDK includes documentation, available at [SkyWater PDK Docs](https://skywater-pdk.readthedocs.io/en/main/), and is hosted on GitHub at [SkyWater PDK Repository](https://github.com/google/skywater-pdk). There's also an active community at [SkyWater Community](https://invite.skywater.tools/).

The "130" in SKY130 denotes the feature size, representing the length of the smallest transistor achievable in this process.

#### Open-Source EDA Tools and Open_PDKs

Open_PDKs is a Makefile-based installer designed to adapt files from SkyWater PDKs for a range of open-source EDA (Electronic Design Automation) tools. These tools include Magic, Klayout, Openlane, Xschem, Netgen, Ngspice, IVerilog, qflow, IRSIM, and xcircuit.

The supported libraries by open_pdks encompass digital standard cells (sky130_fd_sc_hd), primitive devices/analog (sky130_fd_pr), I/O cells (sky130_fd_io), and third-party libraries (sky130_ml_xx_hd).

The installation structure follows a common format, with SkyWater PDKs located under `/usr/share/pdk/sky130A/`. Within this directory, there are two subdirectories: `libs.tech` for open-source tool setup and `libs.ref` for reference libraries.

#### Physical Verification and Design Flow

Physical verification is crucial and involves two major steps:

1. **Design Rule Checking (DRC):** This step ensures that the layout adheres to all the rules stipulated by the foundry for the specific process.

2. **Layout Vs. Schematic (LVS):** LVS is performed to verify that the layout netlist matches the schematic netlist.

This systematic approach ensures the reliability and accuracy of the chip design process.

</details>

<details>
	<summary>Labs</summary>

 ### Opensource EDA Tools: Check Tool Installations

#### Magic

To invoke the Magic interface, use the command `magic` in the command prompt:

```bash
magic
```

This command opens a layout window and a console window for executing layout commands. You can also invoke the Tcl interpreter in the terminal with the option `-noconsole`:

```bash
magic -noconsole
```

To run Magic in batch mode without a graphics layout window, use the following command:

```bash
magic -dnull -noconsole filename.tcl
```

#### Netgen

Invoke Netgen in the terminal with the command:

```bash
netgen
```

Netgen is command-driven and lacks a graphics interface. You can also run Netgen in batch mode:

```bash
netgen -batch source filename.tcl
```

Netgen provides a GUI window in Python, accessible with:

```bash
/usr/local/lib/netgen/python/lvs_manager.py
```

#### Xschem

To invoke Xschem, use the command:

```bash
xschem
```

This opens a schematic window. Unlike Netgen and Magic, Xschem uses the native command line terminal for Tcl commands. Run Xschem in batch mode with:

```bash
xschem --tcl filename.tcl -q
```

#### Ngspice

To invoke Ngspice in Linux, use the command:

```bash
ngspice
```

Ngspice has its own prompt and runs its own set of interpreter commands that aren't based on Tcl. Run Ngspice in batch mode with:

```bash
ngspice -b
```

### Creating Sky130 Device Layout In Magic

```bash
cd /home/j.thakur/Desktop
mkdir inverter
cd inverter
mkdir xschem
mkdir mag
mkdir netgen
```


```bash
cd xschem
ln -s /usr/share/pdk/sky130A/libs.tech/xschem/xschemrc
ln -s /usr/share/pdk/sky130A/libs.tech/ngspice/spinit .spiceinit
cd ../mag/
ln -s /usr/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
cd ../netgen/
ln -s /usr/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl setup.tcl
```

#### xschem

```bash
cd inverter/xschem/
xschem
```

This opens an xschem display with various example schematics. SKY130 devices are accessible in xschem, and examples can be explored by pressing "E" after clicking the relevant rectangle. To return to the menu, press "CTRL+E". Resizing the schematic to fit the window can be done with the "F" key.

![Xschem Devices](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/example3.PNG)

#### magic

```bash
cd ../mag/
magic
magic -d XR     # To invoke a cairo graphics package for better rendering
magic -d -OGL   # An OpenGL-based graphics package
```

This opens two magic windows, with the layout window displaying "Technology: sky130A" along with various colors and icons representing available layers in this technology.

![Magic Layout](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/magic4.PNG)

Useful Magic shortcuts include adjusting the cursor box, zooming, selecting layers, and more. For example, left and right mouse buttons adjust the cursor box, Shift+Z zooms out, and the middle mouse button or "P" key selects a layer.

To edit Devices drop-down buttons, click on Devices 1 -> nmos (MOSFET). Select nmos (MOSFET) under "Devices 1" and set the width to 2 um, length to 0.5 um, and fingers to 3.

![Magic Device Parameters](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/param5.PNG)

Change the device type to `sky130_fd_pr__nfet_g5v0d10v5` for further customization.

![Magic Device Type](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/magic_nmos6.PNG)


### Creating Simple Schematic In Xschem

```bash
cd ../xschem/
xschem
```

- Press the "Insert" key to open the Choose Symbol window. Select the SkyWater library directory path to access SkyWater components and choose the `fd_pr` library. To create an inverter, select the `nfet` and `pfet` devices from the insert window and place them anywhere in the schematic.

![Inserting Components]()

- Pins are found under the `xschem` library in the insert window and are named as `ipin.sym`, `opin.sym`, and `iopin.sym`. Place the pins and use the "M" key to move the components around on the schematic window. Use the "C" key to copy the components and the "Del" key to erase components. Use the "W" key to insert wires between components and make connections.

- Rename each pin to something sensible using the "Q" key to bring up the parameter window. Select the components by clicking on them and use the "Q" key to bring up the parameter windows to configure the properties of the devices.

- For **nfet**, change the length to 0.18, set the number of fingers to 3, and the width of each finger to 1.5. Since there are 3 fingers, the total width in the parameter window must be set to 4.5.

- Similarly, for **pfet**, adjust the parameters to 3 fingers, width of 1 per finger, and a length of 0.18. Specify that the body is connected to the Vdd pin as it is a 3-pin pfet.

![Configuring Components](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/9inverter_pfet.PNG)
![Configuring Components](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/10inverter_nfet.PNG)

- Save the design by clicking "File" -> "Save As" -> "inverter.sch".

### Creating Symbol And Exporting Schematic In Xschem

- To functionally validate the schematic, create a testbench that is separated from the schematic. Firstly, create a symbol for the schematic as the schematic will appear as a symbol in the testbench. Click on the "Symbol" menu and select "Make symbol from schematic". Then, create a testbench schematic using the new schematic option and insert the generated symbol from the local directory using the "Insert" key.

- Select the new schematic in the "File" tab and choose "inverter.sch" under the home directory. Paste it on the schematic window.

- The testbench will be simple, where a ramp input is generated, and the output response is observed after connecting the power supplies. Insert 2 voltage sources from the default xschem library, one for the input and one for the supply. Connect these and add a GND node to the supply connections. Create "ipins" and "opins" for the input and output signals to observe in Ngspice.

- Set the supply voltage to 1.8 V. For the input voltage, set the supply to a piece-wise linear function (PWL) to get a ramp. The PWL function has voltage and time values that state the supply will start at 0V, then ramp up from 20 ns until it reaches its final value at 900 ns of 1.8 V.

- Place two more statements for ngspice, but as these aren't specific to any component, they must be placed in text boxes. To place a text box, select the `code_shown.sym` component under the `xschem` library.

- The first text box will specify the location of the device models used in the device schematic, using a `.lib` statement that selects a top-level file that tells ngspice where to find all the models and specifying a simulation corner for all the models.

- For the second block, specify:
  ```bash
  value = ".control
  tran 1n 1u
  plot V(in) V(out)
  .endc"
  ```

- This will tell ngspice to run a transient simulation for 1 ns and monitor voltages for the in and out pins. Save this as "inverter_tb.sch".

![Testbench Schematic](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/11inveter_tb.PNG)

- To generate the netlist, click on the "Netlist" button, then simulate it in Ngspice by clicking the "Simulate" button.

- The waveform confirms that the schematic behaves as an inverter.

![Simulation Waveform](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/12inverter_simulation.PNG)

- After verifying the schematic, create a layout for it. To do this, go back to the inverter schematic.

- Click on the "Simulation" menu and select "LVS netlist: Top Level is a .subckt". Wait a few seconds and check the Simulation menu to see if a tick mark appears beside the aforementioned option. This verifies if you have properly defined a sub-circuit for creating a layout cell with pins in the layout.

- Finally, generate a netlist for the schematic by clicking the "Netlist" button and exit Xschem.

### Importing Schematic to Layout and Inverter Layout Steps

```bash
cd ../mag/
magic -d XR
```

- Import the schematic to the layout in Magic by running the `magic`, then click on "File" -> "Import SPICE," and select the `inverter.spice` file from the `xschem` directory. If done correctly, the layout should be opened up in Magic.

![Layout Import](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/13layout_before.PNG)

- The schematic import does not know how to do analog placing and routing as it is very complicated. Therefore, components must be placed in the best positions and wired manually.

- Firstly, place the `pfet` device above the `nfet` and adjust the placement of the input, output, and supply pins.

![Component Placement](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/14layout_after.PNG)

- Set some parameters that are only adjustable in the layout which will make it more convenient to wire the whole layout. Use the "S" key to pop out the parameter editing section, press the "I" key to select the object, then use "CTRL+P" to open up the parameter options for the selected device.

- Set the "Top guard ring via coverage" to 100. This will put a local interconnect to metal1 via at the top of the guard ring. Next, for "Source via coverage," put +40, and for "Drain via coverage," put -40. This will split the source and drain contacts, making it easy to connect them with a wire.

- For `nfet`, set the "Bottom guard ring via coverage" to 100, while the source and drain via coverages are set to +40 and -40, respectively, like the `pfet`.

- Start painting the wires using metal1 layers by connecting the source of the `pfet` to Vdd and the source of the `nfet` to Vss. Next, connect the drains of both MOSFETs to the output. Finally, connect the input to all the poly contacts of the gate.

![Wiring Layout](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/15extract.PNG)

- Save the file and select the "autowrite" option.

- Run the following commands in the Magic console:

```bash
extract do local    # Ensuring that Magic writes all results to the local directory
extract all         # Performing the actual extraction
ext2spice lvs       # Simulating and setting up the netlist to hierarchical spice output in Ngspice format with no parasitic components
ext2spice           # Generating the spice netlist
```

![Extraction and Spice Generation](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/16remove_unwanted.PNG)

```bash
rm *.ext                                          # Clear any unwanted files; .ext files are just intermediate results from the extraction
/usr/share/pdk/bin/cleanup_unref.py -remove .     # Clean up extra .mag files; files containing parameterized cells that were created and saved but not used in the design
netgen -batch lvs "../mag/inverter.spice inverter" "../xschem/inverter.spice inverter"    # Run LVS by entering the Netgen subdirectory
```

- Always use the layout netlist first and schematic netlist second in the Netgen command as in side by side, resulting in the layout on the left and the schematic on the right. Each netlist is represented by a pair of keywords in quotes, where the first is the location of the netlist file, and the second is the name of the subcircuit to compare.

- As seen from the result, there was an issue in the wiring, and the netlists do not match. This is due to wiring errors in the layout.

![LVS Result](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/17lvs.PNG)

**Debugging Errors in Netlist, Rerun, and Save Layout**

```bash
extract do local
extract all
ext2spice lvs
ext2spice cthresh 0     # Tells Magic to add all the parasitic capacitances to the spice netlist
ext2spice
```

- Referring to the netlist file, there are multiple lines beginning with `C`, which detail the parasitic capacitances.

```bash
vim inverter.spice 
```

![Netlist with Parasitic Capacitances](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/inverter_spice.PNG)

```bash
cp ../xschem/inverter_tb.spice .
vim inverter_tb.spice
```

- Modify the testbench netlist file.

![Testbench Netlist](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/18tb_spice.PNG)

```bash
/usr/share/pdk/bin/cleanup_unref.py -remove .
cp ../xschem/.spiceinit .
ngspice inverter_tb.spice
```

- The result is almost the same as in the previous simulation in Xschem.

![Simulation Result](https://github.com/jagdishthakur904/samsung-pd-training/blob/master/Images/Day28/19final.PNG)

</details>
