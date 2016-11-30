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
NotebookDataLength[      9671,        220]
NotebookOptionsPosition[      9967,        205]
NotebookOutlinePosition[     10502,        228]
CellTagsIndexPosition[     10459,        225]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["HIV Progression", "Title", "PluginEmbeddedContent"],

Cell["\<\
The following module gives a model of the spread HIV within a human body over \
a given duration period. \
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData["\[IndentingNewLine]"], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 1., $CellContext`d$$ = 
    0.07000100000000001, $CellContext`k$$ = 40., $CellContext`totaltime$$ = 
    41.6101, $CellContext`u$$ = 1., $CellContext`V0$$ = 
    1, $CellContext`\[Beta]$$ = 2.*^-7, $CellContext`\[Lambda]$$ = 80000, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Spacer[200]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`totaltime$$], 25, 
       Style["duration", FontSize -> 14, FontFamily -> "Helvetica"]}, 0.0001, 
      200, 0.01}, {{
       Hold[$CellContext`\[Lambda]$$], 200000., 
       Style["\[Alpha]", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 
      1000000, 10000}, {{
       Hold[$CellContext`d$$], 0.1, 
       Style["\[Beta]", FontSize -> 14, FontFamily -> "Helvetica"]}, 1.*^-6, 
      1, 0.01}, {{
       Hold[$CellContext`\[Beta]$$], 2.*^-7, 
       Style["\[Gamma]", FontSize -> 14, FontFamily -> "Helvetica"]}, 1.*^-8, 
      0.00001, 1.*^-8}, {{
       Hold[$CellContext`a$$], 1., 
       Style["\[Kappa]", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 5, 
      0.01}, {{
       Hold[$CellContext`u$$], 1., 
       Style["\[Lambda]", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 20, 
      0.1}, {{
       Hold[$CellContext`k$$], 40., 
       Style["m", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 1000, 10}, {{
       Hold[$CellContext`V0$$], 1, 
       Style[
       "\!\(\*SubscriptBox[\n StyleBox[\"v\",\nFontSlant->\"Italic\"], \"0\"]\
\)", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 100, 0.01}}, 
    Typeset`size$$ = {400., {180.634033203125, 186.365966796875}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`totaltime$113118$$ = 
    0, $CellContext`\[Lambda]$113119$$ = 0, $CellContext`d$113120$$ = 
    0, $CellContext`\[Beta]$113121$$ = 0, $CellContext`a$113122$$ = 
    0, $CellContext`u$113123$$ = 0, $CellContext`k$113124$$ = 
    0, $CellContext`V0$113125$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 1., $CellContext`d$$ = 
        0.1, $CellContext`k$$ = 40., $CellContext`totaltime$$ = 
        25, $CellContext`u$$ = 1., $CellContext`V0$$ = 
        1, $CellContext`\[Beta]$$ = 2.*^-7, $CellContext`\[Lambda]$$ = 
        200000.}, "ControllerVariables" :> {
        Hold[$CellContext`totaltime$$, $CellContext`totaltime$113118$$, 0], 
        Hold[$CellContext`\[Lambda]$$, $CellContext`\[Lambda]$113119$$, 0], 
        Hold[$CellContext`d$$, $CellContext`d$113120$$, 0], 
        Hold[$CellContext`\[Beta]$$, $CellContext`\[Beta]$113121$$, 0], 
        Hold[$CellContext`a$$, $CellContext`a$113122$$, 0], 
        Hold[$CellContext`u$$, $CellContext`u$113123$$, 0], 
        Hold[$CellContext`k$$, $CellContext`k$113124$$, 0], 
        Hold[$CellContext`V0$$, $CellContext`V0$113125$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`s$}, $CellContext`s$ = 
         NDSolve[{
           Derivative[
             1][$CellContext`x][$CellContext`t] == $CellContext`\[Lambda]$$ - \
$CellContext`d$$ $CellContext`x[$CellContext`t] - ($CellContext`\[Beta]$$ \
$CellContext`v[$CellContext`t]) $CellContext`x[$CellContext`t], 
            Derivative[
             1][$CellContext`y][$CellContext`t] == (-$CellContext`a$$) \
$CellContext`y[$CellContext`t] + ($CellContext`\[Beta]$$ \
$CellContext`v[$CellContext`t]) $CellContext`x[$CellContext`t], 
            Derivative[
             1][$CellContext`v][$CellContext`t] == (-$CellContext`u$$) \
$CellContext`v[$CellContext`t] + ($CellContext`k$$ $CellContext`a$$) \
$CellContext`y[$CellContext`t] - ($CellContext`\[Beta]$$ \
$CellContext`v[$CellContext`t]) $CellContext`x[$CellContext`t], \
$CellContext`x[
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
          Style["duration", FontSize -> 14, FontFamily -> "Helvetica"]}, 
         0.0001, 200, 0.01, ImageSize -> Tiny, Appearance -> 
         "Labeled"}, {{$CellContext`\[Lambda]$$, 200000., 
          Style["\[Alpha]", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 
         1000000, 10000, ImageSize -> Tiny, Appearance -> 
         "Labeled"}, {{$CellContext`d$$, 0.1, 
          Style["\[Beta]", FontSize -> 14, FontFamily -> "Helvetica"]}, 
         1.*^-6, 1, 0.01, ImageSize -> Tiny, Appearance -> 
         "Labeled"}, {{$CellContext`\[Beta]$$, 2.*^-7, 
          Style["\[Gamma]", FontSize -> 14, FontFamily -> "Helvetica"]}, 
         1.*^-8, 0.00001, 1.*^-8, ImageSize -> Tiny, Appearance -> 
         "Labeled"}, {{$CellContext`a$$, 1., 
          Style["\[Kappa]", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 5,
          0.01, ImageSize -> Tiny, Appearance -> 
         "Labeled"}, {{$CellContext`u$$, 1., 
          Style["\[Lambda]", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 
         20, 0.1, ImageSize -> Tiny, Appearance -> 
         "Labeled"}, {{$CellContext`k$$, 40., 
          Style["m", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 1000, 10,
          ImageSize -> Tiny, Appearance -> "Labeled"}, {{$CellContext`V0$$, 1, 
          Style[
          "\!\(\*SubscriptBox[\n StyleBox[\"v\",\nFontSlant->\"Italic\"], \"0\
\"]\)", FontSize -> 14, FontFamily -> "Helvetica"]}, 0, 100, 0.01, ImageSize -> 
         Tiny, Appearance -> "Labeled"}}, 
      "Options" :> {ControlPlacement -> Left, SynchronousUpdating -> False}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{647., {210., 215.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
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
WindowSize->{690.0600000000001, 538.81},
Visible->True,
AuthoredSize->{690, 539},
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
Cell[1546, 37, 154, 3, 16, "Text"],
Cell[CellGroupData[{
Cell[1725, 44, 70, 0, 31, "Input"],
Cell[1798, 46, 8141, 155, 427, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature mup4M3r3AeC#MCgd#r@w42gi *)
