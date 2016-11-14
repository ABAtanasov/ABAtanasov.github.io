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
NotebookDataLength[    105500,       2165]
NotebookOptionsPosition[    105725,       2148]
NotebookOutlinePosition[    106250,       2171]
CellTagsIndexPosition[    106207,       2168]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["SIR Model", "Title", "PluginEmbeddedContent"],

Cell["\<\
We will investigate the susceptible-infected-recovered model of diesease \
epidemics.

For simplicity, we suppose that infected individuals recover and then have \
immunity from the disease, or they die. In either case, recovered/deceased \
individuals are no longer susceptible, which is all that matters as far as \
the SIR model is concerned. We furthermore neglect the possibility of birth \
and vaccination during the
epidemic.

S is the population fraction of susceptible individuals, who have not yet \
been infected (red line), I is the population fraction of infected \
individuals, who currently have the disease and currently are infectious \
(blue line), Infected individuals recover or die at a rate \[Gamma]. The rate \
at which susceptible individuals are infected is \[Alpha]SI, plotted as the \
purple line. The purple circles show the number of cases of influenza onset \
over a period of ninety days, starting on September 1, 1918. These data were \
recorded on the basis of house-to-house canvassing in certain sections of \
Baltimore in Fall 1918 c.f.:  
\t
\tW. H. Frost and E. Sydenstricker. Influenza in Maryland. Preliminary \
statistics of certain localities. Public Health Records, \
34(11):491\[Dash]5048, 1919.
\t
This demonstration solves the nonlinear differential equations to obtain S \
and I as time evolves.\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Questions", "Section", "PluginEmbeddedContent"],

Cell["\<\
Play around with this module to get a feel for how things change as the \
parameters are manipulated.

What happens if we increase the duration of time over which the graph is \
plotted? What is the long-term behaviour of this epidemic?
Find a way to make it so that all susceptible individuals in the population \
dies off. That is: there will be neither susceptible nor infected individuals \
in the long-term. 
What parameters need to be adjusted to make this happen? Why do you think \
they had to be adjusted in this way? 

Re-adjust the data to fit the case of Baltimore. Is this fit accurate? What \
does that tell us about influenza, and are there any reasons for deviation \
from this model? \
\>", "Text", "PluginEmbeddedContent"],

Cell[BoxData["\[IndentingNewLine]"], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`i0$$ = 3., $CellContext`s0$$ = 
    7737, $CellContext`showdata$$ = True, $CellContext`totaltime$$ = 
    100, $CellContext`\[Alpha]$$ = 0.00004186, $CellContext`\[Gamma]$$ = 
    0.1284, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`totaltime$$], 100, 
       Style["Duration  ", FontSize -> 14, FontFamily -> "Helvetica"]}, 1, 
      1000, 100}, {{
       Hold[$CellContext`\[Alpha]$$], 0.00004186, 
       Style[
       "\[Alpha]             ", FontSize -> 14, FontFamily -> "Helvetica"]}, 
      1.*^-6, 0.0001, 0.00001}, {{
       Hold[$CellContext`\[Gamma]$$], 0.1284, 
       Style[
       "\[Gamma]              ", FontSize -> 14, FontFamily -> "Helvetica"]}, 
      0.001, 2, 0.05}, {{
       Hold[$CellContext`s0$$], 7737, 
       Style[
       "Initially Susceptible ", FontSize -> 14, FontFamily -> "Helvetica"]}, 
      100, 20000, 10}, {{
       Hold[$CellContext`i0$$], 3., 
       Style[
       "Initially Infected       ", FontSize -> 14, FontFamily -> 
        "Helvetica"]}, 0, 100, 10}, {{
       Hold[$CellContext`showdata$$], True, 
       Style[
       "Toggle data            ", FontSize -> 14, FontFamily -> 
        "Helvetica"]}, {False, True}}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Dynamic[
           $CellContext`style[$CellContext`totaltime$$]], 
          Spacer[10]}, {
          Manipulate`Place[2], 
          Dynamic[
           $CellContext`style[
            ScientificForm[$CellContext`\[Alpha]$$]]]}, {
          Manipulate`Place[3], 
          Dynamic[
           $CellContext`style[$CellContext`\[Gamma]$$]]}, {
          Manipulate`Place[4], 
          Dynamic[
           $CellContext`style[$CellContext`s0$$]]}, {
          Manipulate`Place[5], 
          Dynamic[
           $CellContext`style[$CellContext`i0$$]]}, {
          Manipulate`Place[6]}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    500., {180.634033203125, 186.365966796875}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`totaltime$684036$$ = 
    0, $CellContext`\[Alpha]$684037$$ = 0, $CellContext`\[Gamma]$684038$$ = 
    0, $CellContext`s0$684039$$ = 0, $CellContext`i0$684040$$ = 
    0, $CellContext`showdata$684041$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`i0$$ = 3., $CellContext`s0$$ = 
        7737, $CellContext`showdata$$ = True, $CellContext`totaltime$$ = 
        100, $CellContext`\[Alpha]$$ = 0.00004186, $CellContext`\[Gamma]$$ = 
        0.1284}, "ControllerVariables" :> {
        Hold[$CellContext`totaltime$$, $CellContext`totaltime$684036$$, 0], 
        Hold[$CellContext`\[Alpha]$$, $CellContext`\[Alpha]$684037$$, 0], 
        Hold[$CellContext`\[Gamma]$$, $CellContext`\[Gamma]$684038$$, 0], 
        Hold[$CellContext`s0$$, $CellContext`s0$684039$$, 0], 
        Hold[$CellContext`i0$$, $CellContext`i0$684040$$, 0], 
        Hold[$CellContext`showdata$$, $CellContext`showdata$684041$$, False]},
       "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`s$, $CellContext`i$}, $CellContext`p = 
         NDSolve[{
           Derivative[
             1][$CellContext`i$][$CellContext`t] == $CellContext`\[Alpha]$$ \
$CellContext`s$[$CellContext`t] $CellContext`i$[$CellContext`t] - \
$CellContext`\[Gamma]$$ $CellContext`i$[$CellContext`t], 
            Derivative[
             1][$CellContext`s$][$CellContext`t] == \
(-$CellContext`\[Alpha]$$) $CellContext`s$[$CellContext`t] \
$CellContext`i$[$CellContext`t], 
            Derivative[
             1][$CellContext`r][$CellContext`t] == $CellContext`\[Gamma]$$ \
$CellContext`i$[$CellContext`t], $CellContext`s$[
             0] == $CellContext`s0$$, $CellContext`i$[
             0] == $CellContext`i0$$, $CellContext`r[
             0] == ($CellContext`n0 - $CellContext`s0$$ - $CellContext`i0$$) 
             0.}, {$CellContext`i$, $CellContext`s$, $CellContext`r}, \
{$CellContext`t, 0, $CellContext`totaltime$$}]; $CellContext`lines = 
         LogPlot[{
            Evaluate[
             ReplaceAll[
              $CellContext`s$[$CellContext`t], $CellContext`p]], 
            Evaluate[
             ReplaceAll[
              $CellContext`i$[$CellContext`t], $CellContext`p]], \
$CellContext`\[Alpha]$$ Evaluate[
              ReplaceAll[
               $CellContext`s$[$CellContext`t], $CellContext`p]] Evaluate[
              ReplaceAll[
               $CellContext`i$[$CellContext`t], $CellContext`p]]}, \
{$CellContext`t, 0, $CellContext`totaltime$$}, 
           PlotRange -> {All, {1, Automatic}}, 
           PlotStyle -> {{Thick, Red}, {Thick, Blue}, {Thick, Purple}, {
             Thick, Orange}}, LabelStyle -> {
             Directive[Medium], FontFamily -> "Helvetica", FontSize -> 14}, 
           Frame -> True, FrameLabel -> {
             Style["time (days)", "AR"], 
             Style["S, I, \[Alpha]SI", "AR", Italic]}, FrameTicks -> 
           Automatic, ImageSize -> {500, 300}]; $CellContext`datagraphics = 
         If[$CellContext`showdata$$, 
           ListLogPlot[$CellContext`Baltimore2, PlotMarkers -> {{
               Graphics[{Purple, 
                 Disk[]}], 0.03}}, PlotRange -> {{0, 100}, {1, 3000}}, 
            PlotRangeClipping -> False, 
            PlotStyle -> {{Purple}, {Orange}, {Thick, Orange}, {
              Thick, Purple}}, LabelStyle -> {
              Directive[Medium], FontFamily -> "Helvetica", FontSize -> 14}, 
            Frame -> True, FrameLabel -> {
              Style["Time (days)", "AR"], 
              Style["S,I,R", "AR"]}, FrameTicks -> Automatic, 
            ImageSize -> {500, 300}], {}]; Column[{
           Show[$CellContext`lines, $CellContext`datagraphics], 
           Grid[{{
              Style["S", "Helvetica", Italic], 
              Graphics[{Red, 
                Line[{{0, 0}, {1, 0}}]}, ImageSize -> 10], 
              Style["susceptible individuals", "Helvetica"]}, {
              Style["I", "AR", Italic], 
              Graphics[{Blue, 
                Line[{{0, 0}, {1, 0}}]}, ImageSize -> 10], 
              Style["infected individuals", "Helvetica"]}, {
              Style["\[Alpha]SI", "Helvetica", Italic], 
              Graphics[{Purple, 
                Line[{{0, 0}, {1, 0}}]}, ImageSize -> 10], 
              Style["rate of infection per day", "Helvetica"]}}]}, Alignment -> 
          Center]], "Specifications" :> {{{$CellContext`totaltime$$, 100, 
          Style["Duration  ", FontSize -> 14, FontFamily -> "Helvetica"]}, 1, 
         1000, 100, ImageSize -> Smaller, ControlPlacement -> 
         1}, {{$CellContext`\[Alpha]$$, 0.00004186, 
          Style[
          "\[Alpha]             ", FontSize -> 14, FontFamily -> 
           "Helvetica"]}, 1.*^-6, 0.0001, 0.00001, ImageSize -> Smaller, 
         ControlPlacement -> 2}, {{$CellContext`\[Gamma]$$, 0.1284, 
          Style[
          "\[Gamma]              ", FontSize -> 14, FontFamily -> 
           "Helvetica"]}, 0.001, 2, 0.05, ImageSize -> Smaller, 
         ControlPlacement -> 3}, {{$CellContext`s0$$, 7737, 
          Style[
          "Initially Susceptible ", FontSize -> 14, FontFamily -> 
           "Helvetica"]}, 100, 20000, 10, ImageSize -> 140, ControlPlacement -> 
         4}, {{$CellContext`i0$$, 3., 
          Style[
          "Initially Infected       ", FontSize -> 14, FontFamily -> 
           "Helvetica"]}, 0, 100, 10, ImageSize -> 140, ControlPlacement -> 
         5}, {{$CellContext`showdata$$, True, 
          Style[
          "Toggle data            ", FontSize -> 14, FontFamily -> 
           "Helvetica"]}, {False, True}, ControlPlacement -> 6}, 
        Grid[{{
           Manipulate`Place[1], 
           Dynamic[
            $CellContext`style[$CellContext`totaltime$$]], 
           Spacer[10]}, {
           Manipulate`Place[2], 
           Dynamic[
            $CellContext`style[
             ScientificForm[$CellContext`\[Alpha]$$]]]}, {
           Manipulate`Place[3], 
           Dynamic[
            $CellContext`style[$CellContext`\[Gamma]$$]]}, {
           Manipulate`Place[4], 
           Dynamic[
            $CellContext`style[$CellContext`s0$$]]}, {
           Manipulate`Place[5], 
           Dynamic[
            $CellContext`style[$CellContext`i0$$]]}, {
           Manipulate`Place[6]}}, Alignment -> Left]}, 
      "Options" :> {
       ControlPlacement -> Left, 
        TrackedSymbols :> {$CellContext`totaltime$$, $CellContext`\[Alpha]$$, \
$CellContext`\[Gamma]$$, $CellContext`s0$$, $CellContext`i0$$, \
$CellContext`showdata$$}, SynchronousUpdating -> True}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{926., {210., 215.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`p = {{$CellContext`i$683545 -> 
          InterpolatingFunction[{{0., 401.}}, {
            5, 7, 1, {224}, {4}, 0, 0, 0, 0, Automatic, {}, {}, 
             False}, CompressedData["
1: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
gH8BMJcpOw==
            "], {Developer`PackedArrayForm, CompressedData["
1:eJwl0gFHnQEAQNGvJEmSJElSSZIkSZIkSZIkT5IkeZIkLUmSJEmSJEmSJEmS
JEmSJJmZmUmSmUmbmZmZSWZmppMu5x/czPCLUF9EEASfguciiSKaGGKJI54E
EkkimRRSSSOdDLLIJodc8singEKKKKaEUsoop4JKqqimhlrqqKeBRkI00UwL
rbTRTgdhOumimx566aOfAQYZYpgRRhljnAkmmWKaGWaZY54FFllimRVWWWOd
DTbZYpsddtljnwMOOeKYE04545wLXvKK17zhLe+45IprbnjPBz5yyx2f+cJX
vvGdH/zkF/c88Js//OUf/wmMEEkU0cQQSxzxJJBIEsmkkEoa6WSQRTY55JJH
PgUUUkQxJZRSRjkVVFJFNTXUUkc9DTQSoolmWmiljXY6CNNJF9300MvT5P0M
MMgQw4wwyhjjTDDJFNPMMMsc8yywyBLLrLDKGutssMkW2+ywyx77HHDIEcec
cMoZ5zwC9iZm1g==
             "], CompressedData["
1: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
             "]}, {
            Automatic}], $CellContext`s$683545 -> 
          InterpolatingFunction[{{0., 401.}}, {
            5, 7, 1, {224}, {4}, 0, 0, 0, 0, Automatic, {}, {}, 
             False}, CompressedData["
1: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
gH8BMJcpOw==
            "], {Developer`PackedArrayForm, CompressedData["
1:eJwl0gFHnQEAQNGvJEmSJElSSZIkSZIkSZIkT5IkeZIkLUmSJEmSJEmSJEmS
JEmSJJmZmUmSmUmbmZmZSWZmppMu5x/czPCLUF9EEASfguciiSKaGGKJI54E
EkkimRRSSSOdDLLIJodc8singEKKKKaEUsoop4JKqqimhlrqqKeBRkI00UwL
rbTRTgdhOumimx566aOfAQYZYpgRRhljnAkmmWKaGWaZY54FFllimRVWWWOd
DTbZYpsddtljnwMOOeKYE04545wLXvKK17zhLe+45IprbnjPBz5yyx2f+cJX
vvGdH/zkF/c88Js//OUf/wmMEEkU0cQQSxzxJJBIEsmkkEoa6WSQRTY55JJH
PgUUUkQxJZRSRjkVVFJFNTXUUkc9DTQSoolmWmiljXY6CNNJF9300MvT5P0M
MMgQw4wwyhjjTDDJFNPMMMsc8yywyBLLrLDKGutssMkW2+ywyx77HHDIEcec
cMoZ5zwC9iZm1g==
             "], CompressedData["
1:eJwl0Hk0lWsUB+AjISHCDUlChjJkVjK8hpTbzdSRscxknhsvlTJ8KGMqkRCZ
Utwow/ne92TMlCSJhMwhDhKZ7ne0/9hrPeu399prbRFHXzMXBhKJhOiNXkdw
4EoNYwzkm4GcDFHDG4dxMMXz+fVe/hno6cH5lm5z8W/+TYQz5bqvrxC+cCp2
8o7SDDS0pin/Iqw+HO7iYTQD499YjMwRbnO5OW/rPgPLTt6YGSa8wcif/BjN
wDm+wY4uwuFfaXs92Weh4yJ7XCPdQoy6pCOzMELhvlgl4b9K45l2us5CmT28
nWmEg3u8GwqoszD1xqeBUML9XQc09YRp0NfW1MCenmu0Xh0JpcF1jT6SDuEC
zZudaQM02Gv5hl2E8KCj6qcg/TmooG0c3aiGgyJ8enHdch5avuRo8SD8CcVv
6QlZgLkGc2EshKdl/Q1X/vsJe7YZ2zxSJebDNCxdVxdh91DsqhzhiN8xHbKW
S1D12bdtFSo4cNrF83dQ4zIMva3o9VAZB7RaFv5femtQ8MYVmxwlHDxd5iIP
ipCQ3+Ax3hRFHFyMKnT41ciAvPYsM3oqEP96y6au8pARzcifMReRx8Ei3yH/
X2lMaP7Z8ESZHHEvNU+a9QMLOuTw0kxcFgc2vF9zi3W3o9a//Ro9pXEQ5lmU
+ILGjq6OZn1blcIBf8lLe76zXKiNizdNQwIHzzfSMvdc50YmipMe+8RwcG+g
Yv/oBC+Se5/ikyaMg2HRFCmvbD6ktUXIIFsQByuid2qqy3cj5pq+QXE+HJSV
cbcIHNqLjBf9THi4cfBl5UVQLLsIevzGMMKSHQcJ7TztjjpiiHq59MHZrTgg
X7jcqmwmgczkeWlCKxRQam8QxNZ3AL3axaTlNksBXZoK8l/mZZHKsfyejSEK
UPPKHAk0V0D7/JX7cz5SwI5D5TyB7MooqWuf1I46CpCyPZuRLK2GdMPDTIdK
KACOiXZ0I3XUhgUU1z6kgDP85MCUXi3kZSI2ZneLAjbkaU79yTrobmzzgyp3
CkDy7Jr1W/RRuaSIqM9JCnj+uOVFLW6AWKW2OjMeoICBvOTbxu2GiN22/+kq
AwUETuec6NU6hRadnBvaP1aDgzbmeq1RJiitYlfdVHY1aPFbIyc/NUNxZUVT
Lz2rQXZ6OUvcOhll7RdOj5CpBoHkSOP6OAukw7HWVzlSBd5UZt1QtLVGi3Fh
/fkpVUCz9Eahk9NZROPKCH2uVQUyhoWcEkztEd/GkR75vkpw9uShqCg2RxQf
Fb2Q5V8JJn2UCyS+OKGP8Vk6iSsVQJ+hoiwZd0GuvzuHCq5UgPAdnodDi9yQ
U7SJAvXHa3Cd3TiT85E76rg9++uzxWsgVb9+iCvaE5ErczoUyl8BpfbFgj2u
3kjkqnqb7vZXYOuH35JMkr6IlG3woIFcDphr3Nhz7f1QPbNuUlVKGXCWtPze
z+uPik+V61m8fwlyxzsddxb6I8tkBW5W5pcg6xW72MTeAOTOqXLZQ/U/8PNI
5F+y3gFoZEfvaUXnUqBZ7tJPSwpAIu/JWuIJJcC1IduuIjEAOaUnazDBF6Be
UyU7yCMAcYo19TD2Pwey6cMJ7kIB6NddqxnyiWKQ7zN2kvTcH2G8l3Rrq4tA
cvgC+zUxf2Si+frUC61CsKU9cK76mh+aXTIQYG7PB06ZEZJ5Cb7If1w6Uisg
D/QWPzN7yeKDCkcpQQ4ST0FiotacoacXCrCi3eCYzgFxDVfa1es80ENPB4mb
9U/AgUlGqp6QOxI31qeWlGYDxjG1xenLbuhxc87FYyVZYLXQ6nLUgAuqO5A/
/ZKaCYZ+5mormzujRqM5SaOhx+C0zajcWo8jqvwWG7BlIQP0+u79Oq3ngCZl
s5akDR+BAp6/uATi7FCTReM7m5o0UCdEFZVstUXpy2TvVruH4DwDXGnRsUbb
EtzjGwRTATJeWbs7aYF2N0g9z1+4Dxh1ImoUGs3RZdYs1p9j98APQdUWaudp
RNVpVzebTwE240Vqu3aYISVuL6Fk3hSgUoy/6fUzQa92p3pzct8Fz+REkZzE
KfR575LRO5lkgP0tYzLea4j2Fb2MtXJIAi7d740GfhqgSP9qvrSiRJBkla8n
fV4fscc5XhhiSwRxQWQ3NildlP1eYqz93wRw4ub1sBlpgFIzrJtM1uLBCotv
emOXBpo6xpSXEBMPWvpa51cpR1BGiN7aing8eFciUxVGUkPO4fM8DbfigKtT
5CE9C2X0XNQsILLzDggtkcw4ukURhSoYbXc7fAdYFFSXWE4dQufzftbMP7sN
gsQ7rAfNZFAbr3cbh9JtMHyatj9C8gBiUHJd6K2LBd8cWHy4bSXQRnFjEdU5
FsSWsUwbDYuh3jccuWd2xII1x39LyspE0HR2ebIdNQb0u/7Ud7ojjBKwFqth
1xhgVa3wjINNEFWO5DUYC8QA/o47ciuKfGhBkvS8sisaaHtfULWa5EETFgtZ
WHo0ULZi5fkitBNVpzCdsveKBsvZmckffDmQ4xMyF59uNNDtc5z4epoVLakP
RZQKRYPdZifFXrQyoRFfUojtOgYq8baqow1bUFqorMi5IQx8qVE+NShLQvKz
w3KCLRio+/RY4L+hFTgQMzbC8RoDs3WL70LYluDzLsn8mlwMqNjNdZ2pXoCX
qGxyUfcwcKyQT0bqAw1WrabW+EZjYNWgfa029wc0z80Qkr2Ggbs23YLtNt+h
a/LYRkgwBvYdzXubWzgKl5bqMw54YyA8SFFA5/oQLDRL1d9wwYC733xOY/0A
XLjPK/TRDgPChby5Gl+/QCpg04m0xsCJPu3ro13dMDG/tnvRHAMhpUs+Q3Yf
oUA7izOrGQYuXR3/POrcAQcdd+3JMyLuP3jyiC3/HYSrYV7wJAY+TwxLPtBu
hmt2Ide0DDGgbhq+3hDYAIM2Snp2HcdAS06aXdShWii702S7xjEMALiPd8SO
CmW5z6dk6mEg0XbZsGOIAj8J74oEuhiwfsO0Y6GsAs7oG3Vy6WCg973VUoNQ
OfxiIJnCBjDQnizaRmb+DzK0nP1yUBsDbipRF5POvoDzwnEx7loYCA12kWeV
KoK8S9baNZoYeGBLSS44nAe5dlbKKxOuuuicJtL1BKa2zgpXaGAAaVIfV05l
wv6jD3WMCUdm/VW77dMjOOvsKLdwFANlB7ipnyNT4ey73505hM8Edtl2d6RA
s24BH0fCI4/cQy9kJcEJdsEAKcJFHDGMB4fj4ew4f/yiOgZ2m3LrMHDdhuRq
/dxmwu7fj38JJ2Ewc8mkKpeeV28wGIaFQ2+PhqUIwtFR0R7r18PgxD41DnfC
DoJxLLGW1yBjeWiZMeG3YbSRr7FX4M3B01rqhF3XxsKZQy5AiX96OaUIpzss
+R5jD4Ta/cH5/IRzUd5ufVE/+C1C8REb4bxadqW3ZE+IH2lOIBHeFiyr6yDh
Bss5+FV/HcHAKx6ujqqHTjDDNPv9NGGKRvpcPYc95GfjEBklHM+2anHb0BqW
D5p+7Cfstd578Gm4OTTVoT7rIWy541bB8CNTWJ/vHNxFOJus5HKu5x+of7uf
9IGwqseNi+4Zx+GThBKZdsIPYu6/krHQg42Tb3tbCYfL7vQyKdSG/vnnFpsJ
f69itiudPgJ7HGnnmwj/uK926Yq6CkxquSP2lnCb0WGTcw4K8EedpEAjff8E
xpwfLAObldi0GwjLn+d8tPqPJGTYfym2nnBdzVW3ch4xWNyj97uOcFOh2MSg
hjDcqhQfRndKDrA1TBKAvuptOzdzaLDcqMkLGW/Gv64lHJKO3eJm4oJewTP+
dH/UmieF2rDC056s6nSf/9x3Nn3nVig/0sxB9w2eqJDDtRt4vHfj9xrCoQk+
H6T2L+Pvnbjf0a0y+GChc2Qel85494puZ7n9UHz9B36BszSH7vtOma8ExcZx
udMp9+gu8IrpOdnyDVe//iCW7n+T06cyj/fhNgPbb9Gdb0dVTW3twi+124fQ
rR4p60R+8x5nFZW/RPf42Zq3tvnNOLeVdCDdVzPmr1ziqsWPh0b60q152pFS
LEjBy+KGvOj+IXehoE2oDI9VXvbYdOuUQmVWMX4l4q473frz0lnwcC6+PTLp
PN16t5/8urX3MR5xj+pGt4aH/ddxoxS8VVN+08+Wy+S/9tzBiyjNrnSHxL7G
3cjhuKF2xKazyLPY5K0QnCR+ZtONeN0PX+8g/MSy3KZHy/Uz95M8cB/OXZve
yhbRszPeHj9+kHnTtN9N5svS5jgvw6oL3WEyd6sTGU7iM5E/N73PcaazQE0H
b6mY3bSYoLYyz7wS7jc7veluSunDpjhJfOLk1KaFNIL7Nc8J4nHWk5te2G21
bDSxA//a9H3T2YuuGfftSPjn0D/e7kLONTWkUYzN/9hTMu913O5hyojGH0tt
E+Hn5uqmXJT748O/RfTGepopchJ/LBTQl/86HFIKdv8xbfWfmDSBi5qygn+c
biCeva5+lPI/0jsHJw==
             "]}, {Automatic}], $CellContext`r -> 
          InterpolatingFunction[{{0., 401.}}, {
            5, 7, 1, {224}, {4}, 0, 0, 0, 0, Automatic, {}, {}, 
             False}, CompressedData["
1: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
gH8BMJcpOw==
            "], {Developer`PackedArrayForm, CompressedData["
1:eJwl0gFHnQEAQNGvJEmSJElSSZIkSZIkSZIkT5IkeZIkLUmSJEmSJEmSJEmS
JEmSJJmZmUmSmUmbmZmZSWZmppMu5x/czPCLUF9EEASfguciiSKaGGKJI54E
EkkimRRSSSOdDLLIJodc8singEKKKKaEUsoop4JKqqimhlrqqKeBRkI00UwL
rbTRTgdhOumimx566aOfAQYZYpgRRhljnAkmmWKaGWaZY54FFllimRVWWWOd
DTbZYpsddtljnwMOOeKYE04545wLXvKK17zhLe+45IprbnjPBz5yyx2f+cJX
vvGdH/zkF/c88Js//OUf/wmMEEkU0cQQSxzxJJBIEsmkkEoa6WSQRTY55JJH
PgUUUkQxJZRSRjkVVFJFNTXUUkc9DTQSoolmWmiljXY6CNNJF9300MvT5P0M
MMgQw4wwyhjjTDDJFNPMMMsc8yywyBLLrLDKGutssMkW2+ywyx77HHDIEcec
cMoZ5zwC9iZm1g==
             "], CompressedData["
1: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
ihn+zKTk51miKDIea6J4fLzZ+L6UGWKKkO+nuqDi6UjLDSPULP/ifDPFzl98
GY4z66HVH+YvqT63zKWWIX4aZdFK7nlN8dlws0BPEQ2kQ5tlRbX7mK3hQJka
Oul8JZnqXwq8hc16JxCTK/1bqnnSlnemnjyOhAbc56hWNRVwGPCVRSYHF7jf
UNxSstTezCOJLDQiZKk2Kikh5uySQLMNkZpU/1oe5LgoI4zA4KAZ1Q5n8UTF
b/uQ0YihI9VNdePaTKO7kZulrTfVswv0Ulp+7GhIfCmA6jc7t27RTzOi9tKS
UKpphzYSUwZpkRX5WzjVA7o+q+Vda5i0+nwk1c7BvRYZjxaxu/eFYqnuKDrH
ODH0G7tZk3qL6hs2fCMSOhNY29qfO1Tvyctlj+P8jpGyniZQrV3KUjNTOIgd
KZlLpLor+B1y4+zBBFIH7273NyULcfztWHtUZBLVu6flaeUEm7Ecrq1tf1w1
E1PMrcMUW5ySt/+PLV1RO1aJ4T4UbVtHr/dlveFjjOZu77aZmhLktDTxGJa8
vG1SmefMGEs25orjTKH6LP4d+4B7ChbAKL7tE1zxa3LEWOzzoMy29RaMG+f+
uY6Veihu25SbI2ZQMABTUj257QMHsuPrijwxC0O1bd+7+5+MnI0Dhk9H296t
rI9lz5tgoROwbdXS2+K7nU5jJwnq245IC6F/s6WCfd6vse3r4ndzgi7IYEKe
fx3sfb+xX0AEU4n/6/e0GosLuF3YQu5fX5O8LiTCtwOLL/vrtaS56enBP2oe
xL/WnTFgVQicUDtf9df4yhZrzrnPap0v/jpN2+Ni+2xabdL/nb6xIqE3ZKX2
P6YIkzk=
             "]}, {Automatic}]}}, 
       Attributes[$CellContext`i$683545] = {Temporary}, 
       Attributes[$CellContext`s$683545] = {Temporary}, 
       Attributes[Derivative] = {
        NHoldAll, ReadProtected}, $CellContext`\[Alpha]$$ = 
       0.00004186, $CellContext`\[Gamma]$$ = 0.1284, $CellContext`s0$$ = 
       7737, $CellContext`i0$$ = 3., $CellContext`totaltime$$ = 
       100, $CellContext`lines = Graphics[{{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Large], 
              RGBColor[1, 0, 0]], 
             Line[CompressedData["
1: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
              "]]}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Large], 
              RGBColor[0, 0, 1]], 
             Line[CompressedData["
1:eJwtlHk01WsXx02VZAjHfH4nQ3MynpDhnO8ZCck85oYiU4ioRHqJpMiUSxNS
upfbNVa6FVJcJBUazEMqFEKGlLznXet91nrWsz7/7Gd/9/rur4pXsK23AB8f
Xxbv/u91iPM5nbFlkPb3XZnNXzKm6IuqOb8SomroGgk3q/bPTdE9JC2cmVEv
6FdMiLwu52l6hvD6FcpR/fTuRnmvBmKGrn46tVs8apK+osJI7+Ktb/Tvjxu4
K6OW6WtjLVVEH8zT+wc8f/JHSYDaHOSnN7hEtw3RfLt8Yh30d51btCetwPG+
ZP7og1qoZEww3VQlgQi5UbczWugs+juk0FASwuL5Lw1vaWFTRcm5cVtJZJlU
5i581AKT8vREcJwkyq90mRzx0cb9O9zntGFJjLluigzw1kGemmz49A0p7H1b
O+2ynwrLenO/RhUS1ILNuwziqGgtmQp22knC2MqOx3IFVPil71DtsybhmN6n
1NdDVBgJLhe+iiHh4kUxTRuvHSgV7+2x6CWh1c41wMxTD8x8OYHfsmSAlzPv
9fYZIMHQpIC7LAtqxPua8JMG2PBryGuMJIdN5PbLlVcNoKek63RyqxzEfcvt
dHoM4HHzSHK4gxy6l0OebHfZiRvBMjnZRXKI0Jy4vt7OEMpvhLy9beRxO2XE
U8rUGCXS1MAzKQrIo74zsfExRnvZ3t7YfAVkdv2rkBpvjAcxd856VSogcuOt
V2JPjZEoO7f+eacCzKq9GasZJnAJsmQx1RQxPD6kzGdEg//56GyLUkW8y2j7
SXOlIY3fYavTY0U821n3Lvo4DU+3x83T2xRRHp+f+uMeDV7z40W3ZhQRQ3jw
zVPpeMAyUX1KVUJy4cRkhBxg+z3Dv61ECaLL6138NgPZSXYKj2qUkOTkVue2
EwhmqesffaGEROHGTLgB9N5PDU4TSoj1z98pkgvYvJ7ZV72FDL4nb6//LAH6
a1dNyxmQEaMkLjpZCyxQN54w4ZIR1RLZ1z4EkL5sWfPZk4wIDfu4qxsZeMbR
fVSfRca3hKQvF/QZ4P90WTG8gIyw/lqHWDMGZk/PPRwvISMkdfvmg/4MIOxZ
1c5GMgKmVz7X+psBoefP+nbMkTFmbqKnVsMA0/WP9M38BHwLwnJlXjLQXNTa
NLSGgI/9wOHFKQYUQhMot5UJeNy9L/t0BxP8flVJWaYE+sS/xtzlMiFXby1W
Z03A/eDG0T+cmLDRnXaudCHgKp/xIPk4E7kV9S7j/gQ6Q5rWn0piooYDMWoY
Aeem5eTQy0zsG/VIZJwg4BAZ6OH0iIlRkpNGWRKBjrbrTbtamchrO5EmnU7A
dlunjnE/E+pNfyqZ5BCw7uGsUOFn4R/9wYkPhQTMaeuKxtgsDF7pOZxRQ6Ax
y0G614EF3/574zr1BEwnz0W98GEhyDR26FIzAXbeglVlIgu/fv1uXd9B4MmC
RlVhDgvO8aeZiZ0EmDbeKjlFLJS4mV0n9RGgC7TNRLew8FEjYy7pI4FqV2H3
kF4W/hzNvBw+RsC4gtbgNcFCpsSOxa0TBB6sCdd0WGZBlmTtWDxFwPBAcbbp
WjZoszSB+W8Eqh4O8huqsLEnbdRXfIGAvox8gLoOG9rLppNTiwSoDadNJO3Z
aJSJrKfwUZDu46s8tJ+N5NhWfZYABZMrLQUrwtg4xc1/aCREgeUtzY9xcWyM
jaaVCa+koMhUusk+g41vNvSgolUUrBqZK95QwIa79yG2ymoKDiR2pcyVs9F8
0vLUIREK6jZXH/63jo2gb3+EX1hDwbqmfPvsNjbIbaVnz4hSEOUXr+83xMb5
cCuKoxgFXav9FA2n2fBQkE/9wWP9IsslEQEOQu3C9Y6JU5BprjXQLclBpU7F
gRYeT49JP/lLhYOSZNHIBR7vOTd/M1qbA4/hr30/efzXtu5EKwYHmYNn5jt5
LNJSHbDOhoPVF4+ppfLYN/C61VcPDp7xiVev43G9aIL24xAOoo90K5/l/a96
24+UfooD0bDZshZev6d27573SuXgaPqrzjGent5xrS7dPA4m1qktvefpNUwh
PRIq5eD+f4Siq3jzyNZYyH3NM2dPmOI9X2EKZlu7YwtfcKAjpSYyy5unbXCN
99F+Di7OCvW5r6CgVKLAzGySA8Z0aE6BIAVipQnbFJY5sJCyzmvgp8Df2l98
TJyL2ottdv8u8/z4dffUPxQuvK48kSpcIrAhTbvjnAYXxoyvtP0/CAy8WsjZ
bsXF013eRyLnCNBCe6J+uXMRUXiN9XqGwGWp2n0vDnGhGistupbnJ0e7MxsO
J3Nh4Oe6atNnAhUz/sLMq7x6D68tCY4QWJtp9VnqNhfqJ34E1w0TeNYhU1bZ
wkWjsQ/nQy+BzeHfM+J7uMjK/X7AvItAgkxvhOMXLs4GLEWmvyEAxxvGC2tM
EVuRsNTSSuDuW51GIwtTSHffCpx9RIB0TLZY1M0U7K1cq6j7BA7LLyb3+pui
dvHqz5FKAuouj+1ikkwR5/+XSngxgfyuPf11Taag0lP4vX4ncL43cG6XmRna
xVYlvOHlQ5DghY5DLmbQrXJe63mAt99bysrT/M2Qyo4abnMnIBM+G9R53gx7
QqeeH+LlzTXRk598X5lB+9C2siQqgVKjC+/OuO5CZ4Lfi9sLZLzOKfunPtAc
L0fsHOpCyaiqac8ejTaHxYh96Bs/Mi59mI0Qu2COMDuFw90eZPymbajrUGYO
ozvblqusyBhprCsenjWH5nDaUiMvrxfn268Ixlhge0p7VkCvEiiOcycZaZYo
HGe8FzVWgmychZPMdUtwF2XzX2krQaI0T3O03BI3dU9HJ29SAp+IxUBqhyUa
Zg22fpZSwtCjXMaA3G447fU/yhhVxM0Nu4Riru3GbevFt0cyFaE+e/nsw2Ir
SBht+XjngwKIZuVmpf3WiB5U7fE8Jg9B72ARHxdb0GsCvQeKZZBQmlIuEWmP
iEvNZ18nSmFo3jE1McIRgl9vSLgoS0BA9VQln58zopzzRLNZq1Hz8zjexbti
5uqNjQeHBODQThaIObkXEm3PO6vffacnuqZui8//DemSf4bldYzS4VW+m+Pu
AerAya02987RA1mGtE5PD/D9//wXBDkOvA==
              "]]}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Large], 
              RGBColor[0.5, 0, 0.5]], 
             Line[CompressedData["
1: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
              
              "]]}}}, {}}, {Ticks -> {Automatic, 
            Charting`ScaledTicks[{Log, Exp}]}, GridLines -> {None, None}, 
          FrameTicks -> {{
             Charting`ScaledTicks[{Log, Exp}], 
             Charting`ScaledFrameTicks[{Log, Exp}]}, {Automatic, Automatic}}, 
          AxesOrigin -> {8.183673469387755*^-6, 0.}, 
          PlotRange -> {{8.183673469387755*^-6, 400.99999181632654`}, {0., 
           9.401457758197832}}, DisplayFunction -> Identity, 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None}, 
          DisplayFunction -> Identity, DisplayFunction -> Identity, 
          PlotRangePadding -> {{
             Scaled[0.02], 
             Scaled[0.02]}, {0, 
             Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
          DisplayFunction -> Identity, 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None, 
            "ClippingRange" -> {{{8.183673469387755*^-6, 
             400.99999181632654`}, {-36.74810920137813, 
             8.953769293521745}}, {{8.183673469387755*^-6, 
             400.99999181632654`}, {0., 8.953769293521745}}}}, 
          DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
          Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0, 0}, 
          CoordinatesToolOptions -> {"DisplayFunction" -> ({
              Part[#, 1], 
              Exp[
               Part[#, 2]]}& ), "CopiedValueFunction" -> ({
              Part[#, 1], 
              Exp[
               Part[#, 2]]}& )}, DisplayFunction :> Identity, 
          Frame -> {{True, True}, {True, True}}, FrameLabel -> {{
             Style["S, I, \[Alpha]SI", "AR", Italic], None}, {
             Style["time (days)", "AR"], None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], ImageSize -> {500, 300}, LabelStyle -> {
            Directive[Medium], FontFamily -> "Helvetica", FontSize -> 14}, 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None}, 
          PlotRange -> {All, {0., 8.953769293521745}}, PlotRangeClipping -> 
          True, PlotRangePadding -> {{Automatic, Automatic}, {Automatic, 
             Scaled[0.02]}}, 
          Ticks -> {Automatic, Automatic}}], $CellContext`datagraphics = 
       Graphics[{{{}, {{{
              Directive[
               PointSize[0.011000000000000001`], 
               AbsoluteThickness[1.6], 
               RGBColor[0.5, 0, 0.5], 
               AbsolutePointSize[6]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {1., 2.0794415416798357`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {2., 0.}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {3., 1.9459101490553132`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {4., 2.8903717578961645`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {5., 1.0986122886681098`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {6., 1.6094379124341003`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {7., 2.4849066497880004`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {8., 2.1972245773362196`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {9., 0.6931471805599453}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {10., 2.833213344056216}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {11., 1.3862943611198906`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {12., 3.044522437723423}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {13., 1.3862943611198906`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {14., 2.3978952727983707`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {15., 3.6109179126442243`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {16., 2.833213344056216}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {17., 3.7612001156935624`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {18., 3.044522437723423}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {19., 2.8903717578961645`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {20., 3.6635616461296463`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {21., 3.6888794541139363`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {22., 4.477336814478207}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {23., 4.248495242049359}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {24., 3.713572066704308}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {25., 4.465908118654584}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {26., 4.127134385045092}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {27., 4.672828834461906}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {28., 6.175867270105761}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {29., 5.41610040220442}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {30., 5.683579767338681}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {31., 5.541263545158426}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {32., 5.820082930352362}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {33., 5.560681631015528}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {34., 5.886104031450156}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {35., 5.7899601708972535`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {36., 5.429345628954441}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {37., 6.093569770045136}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {38., 5.225746673713202}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {39., 5.575949103146316}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {40., 5.099866427824199}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {41., 5.3230099791384085`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {42., 6.4425401664681985`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {43., 5.204006687076795}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {44., 4.875197323201151}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {45., 5.147494476813453}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {46., 4.605170185988092}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {47., 5.081404364984463}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {48., 4.718498871295094}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {49., 4.499809670330265}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {50., 4.382026634673881}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {51., 4.31748811353631}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {52., 4.90527477843843}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {53., 4.04305126783455}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {54., 3.912023005428146}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {55., 4.418840607796598}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {56., 4.007333185232471}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {57., 4.290459441148391}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {58., 3.5263605246161616`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {59., 4.0943445622221}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {60., 3.713572066704308}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {61., 3.367295829986474}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {62., 3.091042453358316}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {63., 2.6390573296152584`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {64., 3.1780538303479458`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {65., 2.5649493574615367`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {66., 2.6390573296152584`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {67., 2.302585092994046}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {68., 2.9444389791664403`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {69., 1.6094379124341003`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {70., 1.6094379124341003`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {71., 2.1972245773362196`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {72., 2.302585092994046}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {73., 2.833213344056216}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {74., 2.302585092994046}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {75., 2.302585092994046}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {76., 2.4849066497880004`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {77., 1.9459101490553132`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {78., 2.302585092994046}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {79., 1.0986122886681098`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {80., 0.6931471805599453}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {81., 1.3862943611198906`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {82., 1.6094379124341003`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {83., 2.302585092994046}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {84., 1.6094379124341003`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {85., 1.791759469228055}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {86., 1.0986122886681098`}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {87., 1.791759469228055}, Automatic, 
               Scaled[{0.03, 0.03}]], 
              Inset[
               Graphics[{
                 Directive[
                  PointSize[0.011000000000000001`], 
                  AbsoluteThickness[1.6], 
                  RGBColor[0.5, 0, 0.5], 
                  AbsolutePointSize[6]], 
                 RGBColor[0.5, 0, 0.5], 
                 Disk[{0, 0}]}], {88., 0.}, Automatic, 
               Scaled[{0.03, 0.03}]]}, {}}}, {}}}, {
         DisplayFunction -> Identity, GridLines -> {None, None}, 
          DisplayFunction -> Identity, DisplayFunction -> Identity, 
          DisplayFunction -> Identity, PlotRangePadding -> {{0, 0}, {0, 0}}, 
          AxesOrigin -> {0, 0.04003183783825123}, 
          PlotRange -> {{0, 100}, {0, 
             Log[3000]}}, PlotRangeClipping -> False, ImagePadding -> All, 
          DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
          Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0, 0.04003183783825123}, DisplayFunction :> Identity,
           Frame -> {{True, True}, {True, True}}, FrameLabel -> {{
             Style["S,I,R", "AR"], None}, {
             Style["Time (days)", "AR"], None}}, 
          FrameTicks -> {{{{0., 1, {0.01, 0.}, {
                AbsoluteThickness[0.1]}}, {
              1.6094379124341003`, 5, {0.01, 0.}, {
                AbsoluteThickness[0.1]}}, {2.302585092994046, 10, {0.01, 0.}, {
                AbsoluteThickness[0.1]}}, {3.912023005428146, 50, {0.01, 0.}, {
                AbsoluteThickness[0.1]}}, {
              4.605170185988092, 100, {0.01, 0.}, {
                AbsoluteThickness[0.1]}}, {
              6.214608098422191, 500, {0.01, 0.}, {
                AbsoluteThickness[0.1]}}, {
              6.907755278982137, 1000, {0.01, 0.}, {
                AbsoluteThickness[0.1]}}, {-0.6931471805599453, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {-0.5108256237659907, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {-0.35667494393873245`, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {-0.2231435513142097, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {-0.10536051565782628`, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {0.6931471805599453, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {1.0986122886681098`, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {1.3862943611198906`, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {1.791759469228055, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {1.9459101490553132`, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {2.0794415416798357`, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {2.1972245773362196`, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {2.995732273553991, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {3.4011973816621555`, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {3.6888794541139363`, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {4.0943445622221, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {4.248495242049359, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {4.382026634673881, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {4.499809670330265, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {5.298317366548036, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {5.703782474656201, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {5.991464547107982, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {6.396929655216146, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {6.551080335043404, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {6.684611727667927, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {6.802394763324311, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {7.600902459542082, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {8.006367567650246, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {8.294049640102028, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {8.517193191416238, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {8.699514748210191, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {8.85366542803745, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {8.987196820661973, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {9.104979856318357, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {9.210340371976184, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {9.903487552536127, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {10.308952660644293`, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {10.596634733096073`, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}, {10.819778284410283`, 
               Spacer[{0, 0}], {0.005, 0.}, {
                AbsoluteThickness[0.1]}}}, Automatic}, {
            Automatic, Automatic}}, GridLines -> {None, None}, GridLinesStyle -> 
          Directive[
            GrayLevel[0.5, 0.4]], ImageSize -> {500, 300}, LabelStyle -> {
            Directive[Medium], FontFamily -> "Helvetica", FontSize -> 14}, 
          Method -> {"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
                (Part[{{Identity, Identity}, {Log, Exp}}, 1, 2][#]& )[
                 Part[#, 1]], 
                (Part[{{Identity, Identity}, {Log, Exp}}, 2, 2][#]& )[
                 Part[#, 2]]}& ), "CopiedValueFunction" -> ({
                (Part[{{Identity, Identity}, {Log, Exp}}, 1, 2][#]& )[
                 Part[#, 1]], 
                (Part[{{Identity, Identity}, {Log, Exp}}, 2, 2][#]& )[
                 Part[#, 2]]}& )}}, PlotRange -> {{0, 100}, {0, 
             Log[3000]}}, PlotRangePadding -> {{0, 0}, {0, 0}}, 
          Ticks -> {Automatic, {{0., 1, {0.01, 0.}, {
               AbsoluteThickness[0.1]}}, {1.6094379124341003`, 5, {0.01, 0.}, {
               AbsoluteThickness[0.1]}}, {
             2.302585092994046, 10, {0.01, 0.}, {
               AbsoluteThickness[0.1]}}, {
             3.912023005428146, 50, {0.01, 0.}, {
               AbsoluteThickness[0.1]}}, {4.605170185988092, 100, {0.01, 0.}, {
               AbsoluteThickness[0.1]}}, {6.214608098422191, 500, {0.01, 0.}, {
               AbsoluteThickness[0.1]}}, {
             6.907755278982137, 1000, {0.01, 0.}, {
               AbsoluteThickness[0.1]}}, {-0.6931471805599453, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {-0.5108256237659907, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {-0.35667494393873245`, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {-0.2231435513142097, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {-0.10536051565782628`, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {0.6931471805599453, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {1.0986122886681098`, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {1.3862943611198906`, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {1.791759469228055, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {1.9459101490553132`, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {2.0794415416798357`, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {2.1972245773362196`, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {2.995732273553991, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {3.4011973816621555`, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {3.6888794541139363`, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {4.0943445622221, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {4.248495242049359, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {4.382026634673881, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {4.499809670330265, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {5.298317366548036, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {5.703782474656201, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {5.991464547107982, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {6.396929655216146, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {6.551080335043404, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {6.684611727667927, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {6.802394763324311, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {7.600902459542082, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {8.006367567650246, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {8.294049640102028, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {8.517193191416238, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {8.699514748210191, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {8.85366542803745, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {8.987196820661973, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {9.104979856318357, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {9.210340371976184, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {9.903487552536127, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {10.308952660644293`, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {10.596634733096073`, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}, {10.819778284410283`, 
              Spacer[{0, 0}], {0.005, 0.}, {
               AbsoluteThickness[0.1]}}}}}], $CellContext`showdata$$ = 
       True, $CellContext`Baltimore2 = CompressedData["
1:eJxN0sdOwkEQx/EFG1bsvYAFe+8NrCBiA1SMR+PBxEQ9+AYefA4Tj5496DP4
ECa+h34n+zt4+GR29r8Ls7sTvbrP3QWdcxewGEDo37gIZShGPUo0V6qxfavS
nnKxvRWoQ6X22pomVCuv0bcwBlCr9WZU/2XrGzRuxKDmhtCsmluQRCuG0YYC
2hFHB27RiW8O1GUR3YiR9xB/EUGWPGr1EXuJN8Q+YorYT/xRrZ/kMeKHagoF
fE2vquELI3gM+rO8YwxPGMcbJnCNSbxgCg+YxiVmcIJZZDCHZ8xjGQtas4g8
ljS2b2msOH+GVayJ1bbu/B3EdYcJvcWG7nBTb7Sl+W295Y7eYlfvnlRM6c33
tC6tN9xXnlE8UA8cOt8zR5o/dr6f7KzWN1nn+yOn389r3anyM+d771z7Csqt
F6xf/wA3biRm
        "], $CellContext`style[
         Pattern[$CellContext`x, 
          Blank[]]] := 
       Style[$CellContext`x, FontSize -> 14, FontFamily -> "Helvetica"]}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Input", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1067.5, 949.81},
Visible->True,
AuthoredSize->{1068, 950},
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
Cell[1486, 35, 51, 0, 52, "Title"],
Cell[1540, 37, 1391, 27, 264, "Text"],
Cell[CellGroupData[{
Cell[2956, 68, 53, 0, 38, "Section"],
Cell[3012, 70, 750, 15, 130, "Text"],
Cell[3765, 87, 70, 0, 31, "Input"],
Cell[3838, 89, 101859, 2055, 427, "Input"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Av0Sooain5gUBBK6XUsL#3YT *)
