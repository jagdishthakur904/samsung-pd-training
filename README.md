# samsung-pd-training
- [Day-0-Installation](#day-0-Installation)

- [Day-1-Introduction to Verilog RTL design and Synthesis](#Day-1-Introduction-to-Verilog-RTL-design-and-Synthesis)

- [Day-2-Timing libs,hierarchical,flat synthesis,efficient flop coding styles](#Day-2-Timing-libs-hierarchical-flat-synthesis-efficient-flop-coding-styles)

- [Day-3-Combinational and sequential optmizations](#day-3-Combinational-and-sequential-optmizations)

- [Day-4-GLS, blocking vs non-blocking and Synthesis-Simulation mismatch](#DAY4--GLS-blocking-vs-non-blocking-and-Synthesis-Simulation-mismatch)

- [Day-6-Introduction to Logic Synthesis](#DAY-6-Introduction-to-Logic-Synthesis)

- [Day-7-Basic of STA](#DAY-7-Basic-of-STA)

- [Day-8-Advanced Costraints](#DAY--8-Advanced-Costraints)


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

#NOTE: Both inputs IN A, IN B are coming w.r.t clock MY CLK created on port CLK
```

```
set_output_delay-max 3-clock [get_clocks MY CLK] [get_ports Out_Y"];

set_output_delay-min 0.5-clock [get_clocks MY CLK] [get_ports Out_Y"];
set_input_transition-max 1.5 [get_ports Out_Y"];

set_input_transition-min .75 [get_ports Out_Y"];

#NOTE: Output Out_Y is generated w.r.t clock MY CLK created on port CLK
```


# LAB
commands
```
read_verilog lab8_circuit.v
```
Screenshot

```
 
```
Screenshot
	
</details>
