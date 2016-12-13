(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.4' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     15454,        353]
NotebookOptionsPosition[     15744,        338]
NotebookOutlinePosition[     16281,        361]
CellTagsIndexPosition[     16238,        358]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["HIV Progression", "Title", "PluginEmbeddedContent"],

Cell[TextData[{
 "The following module gives a model of the spread HIV within a human body \
over a given duration period. \n\nThe main target of HIV is a type of white \
blood cell called a CD4+T cell. If untreated, after a much longer period of \
time than is considered in this module, the number of T cells gradually \
falls, eventually leading the patient to be susceptible to opportunistic \
infections. This is the condition known as AIDS. Here we focus on the \
progression of the HIV infection in the first few days and weeks, well before \
the infected individual progresses to AIDS.\n\nDynamics of uninfected T \
cells, U:\n\n Uninfected T cells are produced by the body at a rate \[Alpha].\
\n In the absence of virus, uninfected T cells die naturally at a rate \
\[Beta]U.\n Uninfected T cells turn into infected T cells at a rate \
\[Gamma]VU.\n \tThe factor of V reflects the fact that the more virus \
particles there are, the greater the infection rate of \tuninfected cells. \n \
\tThe parameter \[Gamma] subsumes all of the microscopic details of how a \
virus particle comes into contact and \tinfects a T cell.\n \n It follows \
that the total rate of change of U is:\n\t",
 Cell[BoxData[
  FormBox[
   FractionBox["dU", "dt"], TraditionalForm]]],
 " =\[Alpha]\[Minus]\[Beta]U\[Minus]\[Gamma]UV.\n\nDynamics of infected T \
cells, I\t:\n There is a contribution to the rate of change of infected cells \
of \[Gamma]VU, from before\n Infected T cells die at a rate \[Kappa]I , \
releasing m virus particles each time an infected T cell dies.\n\nIt follows \
that the total rate of change of I is:\n\t",
 Cell[BoxData[
  FormBox[
   FractionBox["dI", "dt"], TraditionalForm]]],
 " =\[Gamma]UV\[Minus]\[Kappa]I.\n\t\nDynamics of free virus particles, V:\n \
There is a contribution to the rate of change of free virus particles of \
\[Minus]\[Gamma]VU because the number of free virus\n particles decreases by \
one when an uninfected T cell become infected.\n Infected T cells die at a \
rate \[Kappa]I, releasing m virus particles each time an infected T cell dies\
\n Free virus particles are eliminated by the body at a rate \[Lambda]V \n\n\
It follows that the total rate of change of V is:\n\t",
 Cell[BoxData[
  FormBox[
   FractionBox["dV", "dt"], TraditionalForm]]],
 " = m\[Kappa]I \[Minus] \[Lambda]V \[Minus] \[Gamma]VU.\n \nBelow, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["v", "0"], TraditionalForm]]],
 " denotes the number of free virus particles at the beginning.\n\nFor more \
information, see ",
 StyleBox["M. \nA. Nowak and R. M. May, Virus Dynamics: Mathematical \
Principles of Immunology and Virology, New York: Oxford University Press, \
2001.",
  FontFamily->"Arial"]
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData["\[IndentingNewLine]"], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 1., $CellContext`d$$ = 
    0.1, $CellContext`k$$ = 40., $CellContext`totaltime$$ = 
    25, $CellContext`u$$ = 1., $CellContext`V0$$ = 
    36.6, $CellContext`\[Beta]$$ = 
    2.59000000000000000000000000000024`3.*^-6, $CellContext`\[Lambda]$$ = 
    200000., Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Spacer[200]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`totaltime$$], 25, 
       Style["Time", FontSize -> 14, FontFamily -> "Helvetica"]}, 0.1, 200, 
      0.1}, {{
       Hold[$CellContext`\[Lambda]$$], 200000., 
       Style["\[Alpha]    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 
      1000000, 10000}, {{
       Hold[$CellContext`d$$], 0.1, 
       Style["\[Beta]    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 
      1.*^-6, 1, 0.01}, {{
       Hold[$CellContext`\[Beta]$$], 2.`3.*^-7, 
       Style["\[Gamma]    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 
      1.`3.*^-8, 1.`5.*^-5, 1.`3.*^-8}, {{
       Hold[$CellContext`a$$], 1., 
       Style["\[Kappa]    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 
      5, 0.01}, {{
       Hold[$CellContext`u$$], 1., 
       Style["\[Lambda]    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 
      20, 0.1}, {{
       Hold[$CellContext`k$$], 40., 
       Style["m    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 1000, 
      10}, {{
       Hold[$CellContext`V0$$], 1, 
       Style[
       "\!\(\*SubscriptBox[\n StyleBox[\"V\",\nFontSlant->\"Italic\"], \"0\"]\
\)    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 100, 0.01}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Dynamic[
           
           Style[$CellContext`totaltime$$, FontSize -> 14, FontFamily -> 
            "Helvetica"]]}, {
          Manipulate`Place[2], 
          Dynamic[
           
           Style[$CellContext`\[Lambda]$$, FontSize -> 14, FontFamily -> 
            "Helvetica"]]}, {
          Manipulate`Place[3], 
          Dynamic[
           
           Style[$CellContext`d$$, FontSize -> 14, FontFamily -> 
            "Helvetica"]]}, {
          Manipulate`Place[4], 
          Dynamic[
           Style[
            ScientificForm[$CellContext`\[Beta]$$], FontSize -> 14, 
            FontFamily -> "Helvetica"]]}, {
          Manipulate`Place[5], 
          Dynamic[
           
           Style[$CellContext`a$$, FontSize -> 14, FontFamily -> 
            "Helvetica"]]}, {
          Manipulate`Place[6], 
          Dynamic[
           
           Style[$CellContext`u$$, FontSize -> 14, FontFamily -> 
            "Helvetica"]]}, {
          Manipulate`Place[7], 
          Dynamic[
           
           Style[$CellContext`k$$, FontSize -> 14, FontFamily -> 
            "Helvetica"]]}, {
          Manipulate`Place[8], 
          Dynamic[
           
           Style[$CellContext`V0$$, FontSize -> 14, FontFamily -> 
            "Helvetica"]]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {400., {180.634033203125, 186.365966796875}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`totaltime$102649$$ = 
    0, $CellContext`\[Lambda]$102650$$ = 0, $CellContext`d$102651$$ = 
    0, $CellContext`\[Beta]$102652$$ = 0, $CellContext`a$102653$$ = 
    0, $CellContext`u$102654$$ = 0, $CellContext`k$102655$$ = 
    0, $CellContext`V0$102656$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 1., $CellContext`d$$ = 
        0.1, $CellContext`k$$ = 40., $CellContext`totaltime$$ = 
        25, $CellContext`u$$ = 1., $CellContext`V0$$ = 
        1, $CellContext`\[Beta]$$ = 2.`3.*^-7, $CellContext`\[Lambda]$$ = 
        200000.}, "ControllerVariables" :> {
        Hold[$CellContext`totaltime$$, $CellContext`totaltime$102649$$, 0], 
        Hold[$CellContext`\[Lambda]$$, $CellContext`\[Lambda]$102650$$, 0], 
        Hold[$CellContext`d$$, $CellContext`d$102651$$, 0], 
        Hold[$CellContext`\[Beta]$$, $CellContext`\[Beta]$102652$$, 0], 
        Hold[$CellContext`a$$, $CellContext`a$102653$$, 0], 
        Hold[$CellContext`u$$, $CellContext`u$102654$$, 0], 
        Hold[$CellContext`k$$, $CellContext`k$102655$$, 0], 
        Hold[$CellContext`V0$$, $CellContext`V0$102656$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`s$}, $CellContext`s$ = 
         NDSolve[{
           Derivative[
             1][$CellContext`x][$CellContext`t] == $CellContext`\[Lambda]$$ - \
$CellContext`d$$ $CellContext`x[$CellContext`t] - $CellContext`\[Beta]$$ \
$CellContext`v[$CellContext`t] $CellContext`x[$CellContext`t], 
            Derivative[
             1][$CellContext`y][$CellContext`t] == (-$CellContext`a$$) \
$CellContext`y[$CellContext`t] + $CellContext`\[Beta]$$ \
$CellContext`v[$CellContext`t] $CellContext`x[$CellContext`t], 
            Derivative[
             1][$CellContext`v][$CellContext`t] == (-$CellContext`u$$) \
$CellContext`v[$CellContext`t] + $CellContext`k$$ $CellContext`a$$ \
$CellContext`y[$CellContext`t] - $CellContext`\[Beta]$$ \
$CellContext`v[$CellContext`t] $CellContext`x[$CellContext`t], $CellContext`x[
             0] == $CellContext`\[Lambda]$$/$CellContext`d$$, $CellContext`y[
             0] == 0, $CellContext`v[0] == $CellContext`V0$$}, {
            $CellContext`x[$CellContext`t], 
            $CellContext`y[$CellContext`t], 
            $CellContext`v[$CellContext`t]}, {$CellContext`t, 
            0, $CellContext`totaltime$$}]; Column[{
           LogPlot[{
             Evaluate[
              ReplaceAll[
               $CellContext`x[$CellContext`t], $CellContext`s$]], 
             Evaluate[
              ReplaceAll[
               $CellContext`y[$CellContext`t], $CellContext`s$]], 
             Evaluate[
              ReplaceAll[
               $CellContext`v[$CellContext`t], $CellContext`s$]]}, \
{$CellContext`t, 0, $CellContext`totaltime$$}, 
            PlotRange -> {All, {0.1, Automatic}}, 
            PlotStyle -> {{Thick, Red}, {Thick, Green}, {Thick, Orange}}, 
            LabelStyle -> {
              Directive[Medium], FontFamily -> "Helvetica", FontSize -> 14}, 
            Frame -> True, FrameLabel -> {
              Style["time", "AR"], 
              Style["U, I, V", "AR", Italic]}, FrameTicks -> Automatic, 
            ImageSize -> {400, 300}], 
           Grid[{{
              Style["U", "Helvetica", Italic], 
              Graphics[{Red, 
                Line[{{0, 0}, {1, 0}}]}, ImageSize -> 10], 
              Style["uninfected T cells", "Helvetica"]}, {
              Style["I", "AR", Italic], 
              Graphics[{Green, 
                Line[{{0, 0}, {1, 0}}]}, ImageSize -> 10], 
              Style["infected T cells", "Helvetica"]}, {
              Style["V", "AR", Italic], 
              Graphics[{Orange, 
                Line[{{0, 0}, {1, 0}}]}, ImageSize -> 10], 
              Style["free virus particles", "Helvectica"]}}]}, Alignment -> 
          Center]], "Specifications" :> {
        Spacer[200], {{$CellContext`totaltime$$, 25, 
          Style["Time", FontSize -> 14, FontFamily -> "Helvetica"]}, 0.1, 200,
          0.1, ImageSize -> Small, AppearanceElements -> {}, ControlPlacement -> 
         1}, {{$CellContext`\[Lambda]$$, 200000., 
          Style["\[Alpha]    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 
         0, 1000000, 10000, ImageSize -> Small, AppearanceElements -> {}, 
         ControlPlacement -> 2}, {{$CellContext`d$$, 0.1, 
          Style["\[Beta]    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 
         1.*^-6, 1, 0.01, ImageSize -> Small, AppearanceElements -> {}, 
         ControlPlacement -> 3}, {{$CellContext`\[Beta]$$, 2.`3.*^-7, 
          Style["\[Gamma]    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 
         1.`3.*^-8, 1.`5.*^-5, 1.`3.*^-8, ImageSize -> Small, 
         AppearanceElements -> {}, ControlPlacement -> 
         4}, {{$CellContext`a$$, 1., 
          Style["\[Kappa]    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 
         0, 5, 0.01, ImageSize -> Small, AppearanceElements -> {}, 
         ControlPlacement -> 5}, {{$CellContext`u$$, 1., 
          Style["\[Lambda]    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 
         0, 20, 0.1, ImageSize -> Small, AppearanceElements -> {}, 
         ControlPlacement -> 6}, {{$CellContext`k$$, 40., 
          Style["m    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 1000,
          10, ImageSize -> Small, AppearanceElements -> {}, ControlPlacement -> 
         7}, {{$CellContext`V0$$, 1, 
          Style[
          "\!\(\*SubscriptBox[\n StyleBox[\"V\",\nFontSlant->\"Italic\"], \"0\
\"]\)    ", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 100, 0.01, 
         ImageSize -> Small, AppearanceElements -> {}, ControlPlacement -> 8}, 
        Grid[{{
           Manipulate`Place[1], 
           Dynamic[
            
            Style[$CellContext`totaltime$$, FontSize -> 14, FontFamily -> 
             "Helvetica"]]}, {
           Manipulate`Place[2], 
           Dynamic[
            
            Style[$CellContext`\[Lambda]$$, FontSize -> 14, FontFamily -> 
             "Helvetica"]]}, {
           Manipulate`Place[3], 
           Dynamic[
            
            Style[$CellContext`d$$, FontSize -> 14, FontFamily -> 
             "Helvetica"]]}, {
           Manipulate`Place[4], 
           Dynamic[
            Style[
             ScientificForm[$CellContext`\[Beta]$$], FontSize -> 14, 
             FontFamily -> "Helvetica"]]}, {
           Manipulate`Place[5], 
           Dynamic[
            
            Style[$CellContext`a$$, FontSize -> 14, FontFamily -> 
             "Helvetica"]]}, {
           Manipulate`Place[6], 
           Dynamic[
            
            Style[$CellContext`u$$, FontSize -> 14, FontFamily -> 
             "Helvetica"]]}, {
           Manipulate`Place[7], 
           Dynamic[
            Style[$CellContext`k$$, FontSize -> 14, FontFamily -> 
             "Helvetica"]]}, {
           Manipulate`Place[8], 
           Dynamic[
            
            Style[$CellContext`V0$$, FontSize -> 14, FontFamily -> 
             "Helvetica"]]}}]}, 
      "Options" :> {
       ControlPlacement -> Left, SynchronousUpdating -> False, LabelStyle -> 
        Large}, "DefaultOptions" :> {}],
     ImageSizeCache->{681., {210., 215.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({Attributes[Derivative] = {NHoldAll, ReadProtected}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{797.0666666666667, 1328.81},
Visible->True,
AuthoredSize->{797, 1329},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.4 for Mac OS X x86 (32-bit, 64-bit Kernel) (February 25, \
2016)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 57, 0, 52, "Title"],
Cell[1546, 37, 2750, 48, 806, "Text"],
Cell[CellGroupData[{
Cell[4321, 89, 70, 0, 31, "Input"],
Cell[4394, 91, 11322, 243, 427, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature avTATg9kOF9FrAK3voM2cYNb *)
