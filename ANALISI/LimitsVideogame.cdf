(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.0' *)

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
NotebookDataLength[     24199,        585]
NotebookOptionsPosition[     24372,        570]
NotebookOutlinePosition[     24902,        591]
CellTagsIndexPosition[     24859,        588]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Limits: the videogame", "Title"],

Cell["Prof. Gianluca Gorni", "Subsubtitle"],

Cell[TextData[{
 ButtonBox["Universit\[AGrave] di Udine",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://www.uniud.it/"], None}],
 "\n",
 ButtonBox["Corso di Laurea in Informatica",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://www.uniud.it/didattica/facolta/scienze/informatica-1"], None}],
 "\n",
 ButtonBox["http://www.dimi.uniud.it/gorni/Analisi1",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://www.dimi.uniud.it/gorni/Analisi1"], None}]
}], "Subsubtitle"],

Cell["\<\
Questo videogioco vuole illustrare la definizione di limite in Analisi \
Matematica.\
\>", "Text"],

Cell["Le regole del gioco sono spiegate a voce durante le lezioni.", "Text"],

Cell[BoxData[
 DynamicModuleBox[{$CellContext`foro$$, $CellContext`effe$$, \
$CellContext`y0$$ = 
  1, $CellContext`formatoNumeri$$, $CellContext`tabellone$$, \
$CellContext`tiro$$, $CellContext`lineeBase$$ = {
   Tooltip[
    Line[{{-1, 0}, {3, 0}}], "linea di tiro"], 
   Tooltip[
    Line[{{-1, 1}, {3, 1}}], "linea di fondo"], 
   Tooltip[{{
      PointSize[0.025], 
      Point[{1, 0}], 
      PointSize[0.016666666666666666`], 
      GrayLevel[1], 
      Point[{1, 0}]}, 
     Text[
     "\!\(TraditionalForm\`\*SubscriptBox[\(x\), \(0\)]\)", {1, 0}, {0, -2}]}, 
    Column[{"il dischetto", "del rigore"}, Center]], 
   Tooltip[{
     PointSize[0.025], 
     Point[{1, 1}], 
     Text["\!\(TraditionalForm\`\[ScriptL]\)", {1, 1}, {0, -2}]}, 
    Column[{"il bersaglio", "centro della porta"}, 
     Center]]}, $CellContext`lineaDelta$$, $CellContext`datiPartenza$$ = Text[
  
   Labeled[
    Column[{
      Tooltip[
      "\!\(TraditionalForm\`f(x) \[Equal] \*SuperscriptBox[\(x\), \(2\)]\)", 
       "la funzione data"], 
      Tooltip[
       DisplayForm[
        RowBox[{
         "\!\(TraditionalForm\`\*SubscriptBox[\(x\), \(0\)]\)", "\[Equal]", 
          1}]], "il dischetto del rigore"], 
      Tooltip[
       DisplayForm[
        RowBox[{"\[ScriptL]", "\[Equal]", 1}]], 
       "il bersaglio, il centro della porta"]}, Alignment -> "\[Equal]", 
     Background -> RGBColor[1, 1, 0], Frame -> True], "Assegnati:", Top], 
   Scaled[{1, 1}], {1, 1}], $CellContext`porta$$, $CellContext`rng$$ = {{-1.5,
   3.5}, {-0.5, 2.5}}, $CellContext`p$$ = {
  1.3, 0}, $CellContext`vinceDifensoreQ$$, $CellContext`vinceAttaccanteQ$$, \
$CellContext`trovaTiroFuori$$, $CellContext`tiroFuori$$}, 
  TagBox[
   StyleBox[
    DynamicModuleBox[{$CellContext`automaticoQ$$ = False, $CellContext`del$$ =
      1.5, $CellContext`eps$$ = 1., $CellContext`fase$$ = "Preliminare", 
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
     Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
     1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
        Hold[$CellContext`fase$$], "Preliminare", "fase di gioco:"}, {
       "Preliminare" -> Tooltip["Preliminare", 
          
          Column[{"si presentano bersaglio", "e dischetto del rigore,", 
            "e si fa pratica di tiro", 
            "con la funzione \!\(TraditionalForm\`f\)"}, Center]], 
        "Sceglie il difensore" -> Tooltip[
          Style["Sceglie il difensore", 
           RGBColor[1, 0, 0]], 
          
          Column[{"il difensore sceglie \!\(\*\nStyleBox[\"\[Epsilon]\",\n\
FontColor->RGBColor[1, 0, 0]]\)", "la semiampiezza della porta"}, Center]], 
        "Sceglie l'attaccante" -> Tooltip[
          Style["Sceglie l'attaccante", 
           RGBColor[0, 0, 1]], 
          
          Column[{"l'attaccante sceglie \!\(\*\nStyleBox[\"\[Delta]\",\n\
FontColor->RGBColor[0, 0, 1]]\)", "la semiampiezza della zona di tiro", 
            "basandosi sulla dimensione della porta"}, Center]], "Tiri" -> 
        Tooltip["Tiri", 
          
          Column[{"l'attaccante", "tira tutti i rigori possibili", 
            "dalla zona di tiro", "che ha scelto"}, Center]], "Vincitore" -> 
        Tooltip["Vincitore", 
          Column[{"si proclama il vincitore", "della partita"}, Center]]}}, {
       Hold[
        Spacer[20]], Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`eps$$], 1., 
        Tooltip[
         Row[{"scelta dal difensore: ", 
           Style[$CellContext`\[Epsilon], Large, 
            RGBColor[1, 0, 0]]}], 
         Column[{"epsilon", "semiampiezza della porta"}, Center]]}, 0, 1}, {{
        Hold[$CellContext`del$$], 1.5, 
        Tooltip[
         Row[{"scelta dall'attaccante: ", 
           Style[$CellContext`\[Delta], Large, 
            RGBColor[0, 0, 1]]}], 
         Column[{"delta", "semiampiezza della zona di tiro"}, Center]]}, 0, 
       2}, {{
        Hold[$CellContext`automaticoQ$$], False, "tiri automatici"}, {
       False, True}}}, Typeset`size$$ = {576., {179., 183.}}, 
     Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
     True, $CellContext`fase$26283$$ = False, $CellContext`eps$26284$$ = 
     0, $CellContext`del$26285$$ = 0, $CellContext`automaticoQ$26286$$ = 
     False}, 
     DynamicBox[Manipulate`ManipulateBoxes[
      1, StandardForm, 
       "Variables" :> {$CellContext`automaticoQ$$ = False, $CellContext`del$$ = 
         1.5, $CellContext`eps$$ = 1., $CellContext`fase$$ = "Preliminare"}, 
       "ControllerVariables" :> {
         Hold[$CellContext`fase$$, $CellContext`fase$26283$$, False], 
         Hold[$CellContext`eps$$, $CellContext`eps$26284$$, 0], 
         Hold[$CellContext`del$$, $CellContext`del$26285$$, 0], 
         Hold[$CellContext`automaticoQ$$, $CellContext`automaticoQ$26286$$, 
          False]}, 
       "OtherVariables" :> {
        Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
         Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
         Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
         Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> Deploy[
         Graphics[{
           Locator[
            If[$CellContext`automaticoQ$$, 
             Dynamic[$CellContext`p$$ = {
                Rescale[
                 Abs[Clock[{0, 1, 1/50}, 10] - 1/2], {0, 1/2}, 
                 If[
                  
                  MemberQ[{
                   "Sceglie l'attaccante", "Tiri", 
                    "Vincitore"}, $CellContext`fase$$], {
                  1 - $CellContext`del$$, 1 + $CellContext`del$$}, {
                  1 - 2, 1 + 2}]], 0}], 
             Dynamic[$CellContext`p$$, ($CellContext`p$$ = {
                If[
                 
                 MemberQ[{
                  "Preliminare", 
                   "Sceglie il difensore"}, $CellContext`fase$$], 
                 First[#], 
                 Clip[
                  First[#], {
                  1 - $CellContext`del$$, 1 + $CellContext`del$$}]], 0})& ]]], 
           
           Which[$CellContext`fase$$ === 
            "Preliminare", {$CellContext`datiPartenza$$, \
$CellContext`lineeBase$$, 
             $CellContext`tiro$$[$CellContext`p$$, $CellContext`del$$]}, \
$CellContext`fase$$ === "Sceglie il difensore", {
             Dynamic[
              $CellContext`tabellone$$[$CellContext`eps$$, \
$CellContext`fase$$, $CellContext`del$$, 
               Part[$CellContext`p$$, 1]]], 
             $CellContext`porta$$[$CellContext`eps$$], 
             ReplaceAll[$CellContext`lineeBase$$, Tooltip[
                Pattern[$CellContext`a, 
                 Blank[]], 
                
                BlankSequence[]] :> $CellContext`a], \
$CellContext`datiPartenza$$, 
             Dynamic[
              $CellContext`tiro$$[$CellContext`p$$, $CellContext`del$$]]}, \
$CellContext`fase$$ === "Vincitore", {$CellContext`datiPartenza$$, 
             $CellContext`lineaDelta$$[$CellContext`del$$], 
             $CellContext`porta$$[$CellContext`eps$$], 
             ReplaceAll[$CellContext`lineeBase$$, Tooltip[
                Pattern[$CellContext`a, 
                 Blank[]], 
                BlankSequence[]] :> $CellContext`a], 
             $CellContext`tiro$$[$CellContext`p$$, $CellContext`del$$], 
             $CellContext`tabellone$$[$CellContext`eps$$, \
$CellContext`fase$$, $CellContext`del$$, 
              Part[$CellContext`p$$, 1]], 
             If[
              $CellContext`vinceDifensoreQ$$[$CellContext`eps$$, \
$CellContext`del$$], 
              $CellContext`tiroFuori$$[
               $CellContext`trovaTiroFuori$$[$CellContext`eps$$, \
$CellContext`del$$]]]}, True, {$CellContext`datiPartenza$$, 
             $CellContext`lineaDelta$$[$CellContext`del$$], 
             $CellContext`porta$$[$CellContext`eps$$], 
             ReplaceAll[$CellContext`lineeBase$$, Tooltip[
                Pattern[$CellContext`a, 
                 Blank[]], 
                BlankSequence[]] :> $CellContext`a], 
             $CellContext`tiro$$[$CellContext`p$$, $CellContext`del$$], 
             $CellContext`tabellone$$[$CellContext`eps$$, \
$CellContext`fase$$, $CellContext`del$$, 
              Part[$CellContext`p$$, 1]]}]}, PlotRange -> $CellContext`rng$$, 
          Background -> RGBColor[
            Rational[65, 81], 1, 
            Rational[65, 81]], Frame -> {True, False, True, False}, 
          FrameTicks -> {Automatic, None, Automatic, None}, ImageSize -> 
          Large]], 
       "Specifications" :> {{{$CellContext`fase$$, "Preliminare", 
           "fase di gioco:"}, {"Preliminare" -> Tooltip["Preliminare", 
             
             Column[{"si presentano bersaglio", "e dischetto del rigore,", 
               "e si fa pratica di tiro", 
               "con la funzione \!\(TraditionalForm\`f\)"}, Center]], 
           "Sceglie il difensore" -> Tooltip[
             Style["Sceglie il difensore", 
              RGBColor[1, 0, 0]], 
             
             Column[{"il difensore sceglie \!\(\*\nStyleBox[\"\[Epsilon]\",\n\
FontColor->RGBColor[1, 0, 0]]\)", "la semiampiezza della porta"}, Center]], 
           "Sceglie l'attaccante" -> Tooltip[
             Style["Sceglie l'attaccante", 
              RGBColor[0, 0, 1]], 
             
             Column[{"l'attaccante sceglie \!\(\*\nStyleBox[\"\[Delta]\",\n\
FontColor->RGBColor[0, 0, 1]]\)", "la semiampiezza della zona di tiro", 
               "basandosi sulla dimensione della porta"}, Center]], "Tiri" -> 
           Tooltip["Tiri", 
             
             Column[{"l'attaccante", "tira tutti i rigori possibili", 
               "dalla zona di tiro", "che ha scelto"}, Center]], "Vincitore" -> 
           Tooltip["Vincitore", 
             Column[{"si proclama il vincitore", "della partita"}, Center]]}}, 
         Spacer[20], {{$CellContext`eps$$, 1., 
           Tooltip[
            Row[{"scelta dal difensore: ", 
              Style[$CellContext`\[Epsilon], Large, 
               RGBColor[1, 0, 0]]}], 
            Column[{"epsilon", "semiampiezza della porta"}, Center]]}, 0, 
          1}, {{$CellContext`del$$, 1.5, 
           Tooltip[
            Row[{"scelta dall'attaccante: ", 
              Style[$CellContext`\[Delta], Large, 
               RGBColor[0, 0, 1]]}], 
            Column[{"delta", "semiampiezza della zona di tiro"}, Center]]}, 0,
           2, ControlPlacement -> 
          Bottom}, {{$CellContext`automaticoQ$$, False, "tiri automatici"}, {
          False, True}, ControlPlacement -> Bottom}}, "Options" :> {}, 
       "DefaultOptions" :> {}],
      ImageSizeCache->{621., {270., 275.}},
      SingleEvaluation->True],
     Deinitialization:>None,
     DynamicModuleValues:>{},
     SynchronousInitialization->True,
     UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
     UnsavedVariables:>{Typeset`initDone$$},
     UntrackedVariables:>{Typeset`size$$}], "Manipulate",
    Deployed->True,
    StripOnInput->False],
   Manipulate`InterpretManipulate[1]],
  DynamicModuleValues:>{{DownValues[$CellContext`foro$$] = {HoldPattern[
         $CellContext`foro$$[
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]], 
          Optional[
           Pattern[$CellContext`r, 
            Blank[]], 0.05]]] :> {
         PointSize[$CellContext`r], 
         Point[{$CellContext`x, $CellContext`y}], 
         PointSize[2 ($CellContext`r/3)], White, 
         Point[{$CellContext`x, $CellContext`y}]}}}, {
    DownValues[$CellContext`effe$$] = {HoldPattern[
         $CellContext`effe$$[
          Pattern[$CellContext`x, 
           Blank[]]]] :> $CellContext`x^2}}, {
    DownValues[$CellContext`formatoNumeri$$] = {HoldPattern[
         $CellContext`formatoNumeri$$[
          Pattern[$CellContext`t, 
           Blank[]]]] :> NumberForm[
         N[$CellContext`t], {4, 3}, NumberPadding -> {"", "0"}]}}, {
    DownValues[$CellContext`tabellone$$] = {HoldPattern[
         $CellContext`tabellone$$[
          Pattern[$CellContext`e$, 
           Blank[]], 
          Pattern[$CellContext`fas$, 
           Blank[]], 
          Pattern[$CellContext`d$, 
           Blank[]], 
          Pattern[$CellContext`x$, 
           Blank[]]]] :> Text[
         Column[{
           Tooltip[
           Style[$CellContext`\[Epsilon], 
              Red] == $CellContext`formatoNumeri$$[$CellContext`e$], 
            "scelta dal difensore"], 
           If[
            
            MemberQ[{
             "Sceglie l'attaccante", "Tiri", "Vincitore"}, $CellContext`fas$], 
            Tooltip[
            Style[$CellContext`\[Delta], 
               Blue] == $CellContext`formatoNumeri$$[$CellContext`d$], 
             "scelta dall'attaccante"], 
            Apply[Sequence, {}]], 
           If[
            MemberQ[{"Tiri", "Vincitore"}, $CellContext`fas$], 
            Apply[Sequence, {
              Tooltip[
               DisplayForm[
                RowBox[{"x", "\[Equal]", 
                  $CellContext`formatoNumeri$$[$CellContext`x$]}]], 
               "posizione di tiro in questo istante"], 
              Tooltip[
               DisplayForm[
                RowBox[{"In porta?", 
                  If[
                  Abs[$CellContext`effe$$[$CellContext`x$] - \
$CellContext`y0$$] <= $CellContext`e$, 
                   Style["S\[IGrave]", Blue, FontFamily -> "Courier"], 
                   Style["No", Red]]}]], 
               
               Column[{"il tiro va  in porta", "in questo istante?"}, 
                Center]]}], 
            Apply[Sequence, {}]], 
           If[$CellContext`fas$ === "Vincitore", 
            If[
             $CellContext`vinceAttaccanteQ$$[$CellContext`e$, \
$CellContext`d$], 
             Tooltip[
              Style["Vince l'attaccante", Blue], 
              
              Column[{"tutti i tiri dell'attaccante", "sono in porta;", 
                "l'attaccante vince la partita"}, Center]], 
             Tooltip[
              Style["Vince il difensore", Red], 
              
              Column[{"l'attaccante manda almeno un tiro", "fuori porta;", 
                "il difensore vince la partita"}, Center]]], Nothing]}, 
          Background -> Yellow, Frame -> True], 
         Scaled[{0, 1}], {-1, 1}]}}, {
    DownValues[$CellContext`tiro$$] = {HoldPattern[
         $CellContext`tiro$$[
          Pattern[$CellContext`p$, 
           Blank[]], 
          Pattern[$CellContext`d$, 
           Blank[]]]] :> {
         Tooltip[
          Text["\!\(TraditionalForm\`x\)", $CellContext`p$, {0, 2.5}], 
          
          Column[{"posizione di tiro", "in questo istante.", 
            "Spostarla col mouse"}, Center]], 
         Tooltip[{
           Text["\!\(TraditionalForm\`f(x)\)", {
             $CellContext`effe$$[
              Part[$CellContext`p$, 1]], 1}, {1.5 If[
               TrueQ[$CellContext`effe$$[
                  Part[$CellContext`p$, 1]] <= Part[$CellContext`p$, 1]], 
               1, -1], 2}, Background -> Directive[
              RGBColor[
               Rational[65, 81], 1, 
               Rational[65, 81]], 
              Opacity[1]]], 
           Point[{
             $CellContext`effe$$[
              Part[$CellContext`p$, 1]], 1}]}, 
          Column[{"punto colpito dal tiro", "in questo istante"}, Center]], 
         Tooltip[
          Arrow[{$CellContext`p$, {
             $CellContext`effe$$[
              Part[$CellContext`p$, 1]], 1}}], 
          Column[{"traiettoria del tiro", "in questo istante"}, Center]]}}}, {
    DownValues[$CellContext`lineaDelta$$] = {HoldPattern[
         $CellContext`lineaDelta$$[
          Pattern[$CellContext`d$, 
           Blank[]]]] :> {Thick, {Blue, 
          Tooltip[
           Line[{{1 - $CellContext`d$, 0}, {1 + $CellContext`d$, 0}}], 
           
           Column[{"zona di tiro;", "dimensiona dall'attaccante", 
             "col cursore \!\(\*\nStyleBox[\"\[Delta]\",\n\
FontColor->RGBColor[0, 0, 1]]\)"}, Center]]}, 
         Tooltip[
          Text[
          "\!\(\*FormBox[\n RowBox[{SubscriptBox[\"x\", \"0\"], \"-\", \n  \
StyleBox[\"\[Delta]\",\nFontColor->RGBColor[0, 0, 1]]}],\n \
TraditionalForm]\)", {1 - $CellContext`d$, 0}, {1.2, 1.2}, {1, 1}], 
          Column[{
           "estremo sinistro della zona di tiro;", "mossa dall'attaccante", 
            "col cursore \!\(\*\nStyleBox[\"\[Delta]\",\n\
FontColor->RGBColor[0, 0, 1]]\)"}, Center]], 
         Tooltip[
          Text[
          "\!\(\*FormBox[\n RowBox[{SubscriptBox[\"x\", \"0\"], \"+\", \n  \
StyleBox[\"\[Delta]\",\nFontColor->RGBColor[0, 0, 1]]}],\n \
TraditionalForm]\)", {1 + $CellContext`d$, 0}, {-1.2, 1.2}, {1, -1}], 
          
          Column[{"estremo destro della zona di tiro;", 
            "mossa dall'attaccante", 
            "col cursore \!\(\*\nStyleBox[\"\[Delta]\",\n\
FontColor->RGBColor[0, 0, 1]]\)"}, Center]]}}}, {
    DownValues[$CellContext`porta$$] = {HoldPattern[
         $CellContext`porta$$[
          Pattern[$CellContext`e$, 
           Blank[]]]] :> {{
          GrayLevel[0.8], 
          Tooltip[
           
           Rectangle[{1 - $CellContext`e$, 1}, {
            1 + $CellContext`e$, 1 + 0.3}], 
           
           Column[{"la porta", "dimensionata dal difensore", 
             "col cursore \!\(\*\nStyleBox[\"\[Epsilon]\",\n\
FontColor->RGBColor[1, 0, 0]]\)"}, Center]]}, {Thick, 
          
          Line[{{$CellContext`y0$$ - $CellContext`e$, 
             1}, {$CellContext`y0$$ + $CellContext`e$, 1}}]}, 
         Line[{{1 - $CellContext`e$, 1}, {1 + $CellContext`e$, 1}, {
           1 + $CellContext`e$, 1 + 0.3}, {1 - $CellContext`e$, 1 + 0.3}, {
           1 - $CellContext`e$, 1}}], 
         Tooltip[
          Text[
          "\!\(\*FormBox[\n RowBox[{\"\[ScriptL]\", \"-\", \n  StyleBox[\"\
\[Epsilon]\",\nFontColor->RGBColor[1, 0, 0]]}],\n TraditionalForm]\)", \
{$CellContext`y0$$ - $CellContext`e$, 1}, {1.8, -1.}, {1, -1}], 
          
          Column[{"palo sinistro della porta;", "mossa dal difensore", 
            "col cursore \!\(\*\nStyleBox[\"\[Epsilon]\",\n\
FontColor->RGBColor[1, 0, 0]]\)"}, Center]], 
         Tooltip[
          Text[
          "\!\(\*FormBox[\n RowBox[{\"\[ScriptL]\", \"+\", \n  StyleBox[\"\
\[Epsilon]\",\nFontColor->RGBColor[1, 0, 0]]}],\n TraditionalForm]\)", \
{$CellContext`y0$$ + $CellContext`e$, 1}, {-1.8, -1.}, {1, 1}], 
          Column[{
           "palo destro della porta;", "mossa dal difensore", 
            "col cursore \!\(\*\nStyleBox[\"\[Epsilon]\",\n\
FontColor->RGBColor[1, 0, 0]]\)"}, Center]]}}}, {
    DownValues[$CellContext`vinceDifensoreQ$$] = {HoldPattern[
         $CellContext`vinceDifensoreQ$$[
          Pattern[$CellContext`e$, 
           Blank[]], 
          Pattern[$CellContext`d$, 
           Blank[]]]] :> 
       Module[{$CellContext`rdel$ = 
          Rationalize[$CellContext`d$, 0], $CellContext`reps$ = 
          Rationalize[$CellContext`e$, 0]}, 
         TrueQ[
          Reduce[
           Evaluate[
            
            Exists[$CellContext`t, -$CellContext`rdel$ <= $CellContext`t - 
              1 <= $CellContext`rdel$, 
             
             Not[-$CellContext`reps$ <= $CellContext`effe$$[$CellContext`t] - \
$CellContext`y0$$ <= $CellContext`reps$]]], Reals]]]}}, {
    DownValues[$CellContext`vinceAttaccanteQ$$] = {HoldPattern[
         $CellContext`vinceAttaccanteQ$$[
          Pattern[$CellContext`e$, 
           Blank[]], 
          Pattern[$CellContext`d$, 
           Blank[]]]] :> 
       Module[{$CellContext`rdel$ = 
          Rationalize[$CellContext`d$, 0], $CellContext`reps$ = 
          Rationalize[$CellContext`e$, 0], $CellContext`t$}, 
         Reduce[
          Evaluate[
           
           ForAll[$CellContext`t$, -$CellContext`rdel$ <= $CellContext`t$ - 
             1 <= $CellContext`rdel$, -$CellContext`reps$ <= \
$CellContext`effe$$[$CellContext`t$] - $CellContext`y0$$ <= \
$CellContext`reps$]], Reals]]}}, {
    DownValues[$CellContext`trovaTiroFuori$$] = {HoldPattern[
         $CellContext`trovaTiroFuori$$[
          Pattern[$CellContext`e$, 
           Blank[]], 
          Pattern[$CellContext`d$, 
           Blank[]]]] :> 
       Module[{$CellContext`rdel$ = 
          Rationalize[$CellContext`d$, 0], $CellContext`reps$ = 
          Rationalize[$CellContext`e$, 0], $CellContext`t$}, 
         Last[
          SortBy[
           ReplaceAll[$CellContext`t$, 
            FindInstance[
             And[-$CellContext`rdel$ <= $CellContext`t$ - 
               1 <= $CellContext`rdel$, 
              
              Not[-$CellContext`reps$ <= $CellContext`effe$$[$CellContext`t$] - \
$CellContext`y0$$ <= $CellContext`reps$]], $CellContext`t$, Reals, 10]], 
           Abs]]]}}, {DownValues[$CellContext`tiroFuori$$] = {HoldPattern[
         $CellContext`tiroFuori$$[
          Pattern[$CellContext`x$, 
           Blank[]]]] :> {Red, 
         Tooltip[
          Text["\!\(TraditionalForm\`x\)", {$CellContext`x$, 0}, {0, 2.5}], 
          Style[
           
           Column[{"posizione di un tiro", "che finisce fuori porta"}, 
            Center], Red]], 
         Tooltip[{
           Text["\!\(TraditionalForm\`f(x)\)", {
             $CellContext`effe$$[$CellContext`x$], 1}, {1.5 If[
               TrueQ[$CellContext`effe$$[$CellContext`x$] <= $CellContext`x$],
                1, -1], 2}, Background -> Directive[
              RGBColor[
               Rational[65, 81], 1, 
               Rational[65, 81]], 
              Opacity[1]]], 
           Point[{
             $CellContext`effe$$[$CellContext`x$], 1}]}, 
          Style[
           Column[{"punto colpito da un tiro", "fuori porta"}, Center], Red]], 
         Tooltip[
          Arrow[{{$CellContext`x$, 0}, {
             $CellContext`effe$$[$CellContext`x$], 1}}], 
          Style[
           Column[{"traiettoria di un tiro", "fuori porta"}, Center], 
           Red]]}}}}]], "Output"],

Cell["\<\
Questo \[EGrave] solo un prototipo di materiale didattico interattivo. Ci \
sarebbe ancora molto lavoro da fare.\
\>", "Text"],

Cell["Ultima modifica: 27 ottobre 2016", "Text"]
}, Open  ]]
},
WindowSize->{1104, 750},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
PrivateNotebookOptions->{"VersionedStylesheet"->{"Default.nb"[8.] -> False}},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (September \
21, 2016)",
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
Cell[1486, 35, 38, 0, 92, "Title"],
Cell[1527, 37, 43, 0, 29, "Subsubtitle"],
Cell[1573, 39, 495, 15, 69, "Subsubtitle"],
Cell[2071, 56, 108, 3, 30, "Text"],
Cell[2182, 61, 76, 0, 30, "Text"],
Cell[2261, 63, 21905, 497, 562, "Output"],
Cell[24169, 562, 136, 3, 30, "Text"],
Cell[24308, 567, 48, 0, 30, "Text"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature TupLXCZT9idscBgdWS3L2jfj *)
