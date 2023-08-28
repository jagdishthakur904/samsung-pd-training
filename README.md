![image](https://github.com/jagdishthakur904/samsung-pd-training/assets/142480250/560f381d-3b3f-438e-aa48-03870aa421bf)![image](https://github.com/jagdishthakur904/samsung-pd-training/assets/142480250/cf7a423a-9620-45c8-b4ae-bb674e8f104c)# samsung-pd-training
- [Day-0-Installation](#day-0-Installation)

- [Day-1-Introduction to Verilog RTL design and Synthesis](#Day-1-Introduction-to-Verilog-RTL-design-and-Synthesis)

- [Day-2-Timing libs,hierarchical,flat synthesis,efficient flop coding styles](#Day-2-Timing-libs-hierarchical-flat-synthesis-efficient-flop-coding-styles)

- [Day-3-Combinational and sequential optmizations](#day-3-Combinational-and-sequential-optmizations)

- [Day-4-GLS, blocking vs non-blocking and Synthesis-Simulation mismatch](#5-DAY4--GLS-blocking-vs-non-blocking-and-Synthesis-Simulation-mismatch)


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

- ## Day-1 Introduction to Verilog, RTL Design and Synthesis
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


# Day-2-Timing libs, hierarchical, flat synthesis, efficient flop coding styles
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

# Day3-Combinational and sequential optmizations
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

Blocking statements execute sequentially, following the order in which they are written within an always block. On the other hand, non-blocking statements execute all the right-hand side (RHS) calculations first, and upon entering the always block, the values are assigned to the left-hand side (LHS). This can lead to discrepancies, particularly when improper use of blocking statements generates latches. You can observe an instance of this in Example 4.

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

# Example4

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
