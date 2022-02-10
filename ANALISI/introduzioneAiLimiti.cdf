(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.3' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[    141517,       3697]
NotebookOptionsPosition[    126518,       3408]
NotebookOutlinePosition[    129809,       3474]
CellTagsIndexPosition[    129729,       3469]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"23fdd1ca-c9bf-456e-bdfb-bb610f0c99ce"],

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", "\[IndentingNewLine]"}]], "Input",ExpressionUU\
ID->"6610ccc5-ba69-49e2-8f45-aa4159f1e6ab"],

Cell[CellGroupData[{

Cell["Esempi introduttivi al concetto di limite", "Title",
 TextAlignment->Center,ExpressionUUID->"5932a339-9980-45ee-8c8e-a9b7308ac38a"],

Cell["\<\
Gianluca Gorni
21 dicembre 2018\
\>", "Text",
 TextAlignment->Center,ExpressionUUID->"470e6039-1ae1-479c-940d-13284f89ca2e"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"b9c7ee0c-4619-41fe-96a0-3de0f517164c"],

Cell[CellGroupData[{

Cell[TextData[{
 "La successione ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["a", "n"], ":=", "n"}], TraditionalForm]],ExpressionUUID->
  "d459d395-cbc8-4d67-ba7e-938e86a16294"]
}], "Section",ExpressionUUID->"70ed2ee6-2672-4528-823d-264e19786cc8"],

Cell[TextData[{
 "Premere sul pulsante Play \[FilledRightTriangle] per far partire l\
\[CloseCurlyQuote]animazione della successione ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["a", "n"], ":=", "n"}], TraditionalForm]],ExpressionUUID->
  "4f2f22a0-7089-487d-bcce-198620dc2363"]
}], "Text",
 CellOpen->False,ExpressionUUID->"af18e69f-c7b4-494c-a954-6086f2112720"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Style", "[", 
    RowBox[{"n", ",", "200"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"n", ",", "0", ",", "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<PlayPauseButton\>\"", ",", "\"\<ResetButton\>\""}], 
       "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "10"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]], "Input",Express\
ionUUID->"ae76bb4e-eaf7-4941-b732-13656b591195"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`n$$ = 0, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{
        Hold[$CellContext`n$$], 0, 
        DirectedInfinity[1], 1}}, Typeset`size$$ = {100., {2., 135.}}, 
      Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
      True, $CellContext`n$5672$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, "Variables" :> {$CellContext`n$$ = 0}, 
        "ControllerVariables" :> {
          Hold[$CellContext`n$$, $CellContext`n$5672$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> 
        Style[$CellContext`n$$, 200], 
        "Specifications" :> {{$CellContext`n$$, 0, 
           DirectedInfinity[1], 1, 
           AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
           AnimationRate -> 10, AnimationRunning -> False, 
           AppearanceElements -> {
            "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
             "DirectionButton"}}}, 
        "Options" :> {
         ControlType -> Animator, AppearanceElements -> None, 
          DefaultBaseStyle -> "Animate", DefaultLabelStyle -> "AnimateLabel", 
          SynchronousUpdating -> True, ShrinkingDelay -> 10.}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{151., {135., 147.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Animate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",ExpressionU\
UID->"78caf372-3222-4915-a0ba-7935275ebee8"]
}, {2}]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"caced0cc-5451-43c4-abee-2c1093f64a0d"],

Cell[CellGroupData[{

Cell[TextData[{
 "La successione ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["a", "n"], ":=", 
    SuperscriptBox["n", "2"]}], TraditionalForm]],ExpressionUUID->
  "7fa43111-7129-4230-bc70-2315596f56f7"]
}], "Section",ExpressionUUID->"7fae3ada-b9ea-4136-a70d-607809727632"],

Cell["La successione dei quadrati:", "Text",ExpressionUUID->"6cbbc2a9-239c-4591-a51b-33d06b5e71ca"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Style", "[", 
    RowBox[{
     SuperscriptBox["n", "2"], ",", "200"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "n", ",", "0", ",", "\"\<\!\(\*SuperscriptBox[\(n\), \(2\)]\)\>\""}], 
      "}"}], ",", "0", ",", "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<PlayPauseButton\>\"", ",", "\"\<ResetButton\>\""}], 
       "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "10"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]], "Input",Express\
ionUUID->"0d95080a-8406-441c-a990-9dd8a93ec6c1"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`n$$ = 0, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`n$$], 0, "\!\(\*SuperscriptBox[\(n\), \(2\)]\)"}, 
        0, 
        DirectedInfinity[1], 1}}, Typeset`size$$ = {100., {2., 135.}}, 
      Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
      True, $CellContext`n$5764$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, "Variables" :> {$CellContext`n$$ = 0}, 
        "ControllerVariables" :> {
          Hold[$CellContext`n$$, $CellContext`n$5764$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> 
        Style[$CellContext`n$$^2, 200], 
        "Specifications" :> {{{$CellContext`n$$, 0, 
            "\!\(\*SuperscriptBox[\(n\), \(2\)]\)"}, 0, 
           DirectedInfinity[1], 1, 
           AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
           AnimationRate -> 10, AnimationRunning -> False, 
           AppearanceElements -> {
            "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
             "DirectionButton"}}}, 
        "Options" :> {
         ControlType -> Animator, AppearanceElements -> None, 
          DefaultBaseStyle -> "Animate", DefaultLabelStyle -> "AnimateLabel", 
          SynchronousUpdating -> True, ShrinkingDelay -> 10.}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{145., {131., 138.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Animate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",
 FontSize->14,ExpressionUUID->"08397908-39cc-4403-9849-ff644602f498"]
}, {2}]],

Cell[TextData[{
 "Si nota che il numero di cifre di ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["n", "2"], TraditionalForm]],ExpressionUUID->
  "3c7b3cb1-d6af-46c1-b3af-73ae8f514f51"],
 " aumenta vistosamente."
}], "Text",ExpressionUUID->"3cd3b44a-aa88-4cb4-8ccb-aaaa190ade88"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"5129e27c-d561-4b2a-b929-601a6aa5cfb2"],

Cell[CellGroupData[{

Cell[TextData[{
 "La successione ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["a", "n"], ":=", 
    SuperscriptBox["2", "n"]}], TraditionalForm]],ExpressionUUID->
  "bf8d031e-6c3e-4c5b-9eeb-26cf4b4b73e2"]
}], "Section",ExpressionUUID->"a8b2b1d7-be47-4105-9869-af358121622b"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Style", "[", 
    RowBox[{
     SuperscriptBox["2", "n"], ",", "30"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "n", ",", "0", ",", "\"\<\!\(\*SuperscriptBox[\(2\), \(n\)]\)\>\""}], 
      "}"}], ",", "0", ",", "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<PlayPauseButton\>\"", ",", "\"\<ResetButton\>\""}], 
       "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "10"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]], "Input",Express\
ionUUID->"37236f09-b57c-4962-a587-056c36896dd2"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`n$$ = 0, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`n$$], 0, "\!\(\*SuperscriptBox[\(2\), \(n\)]\)"}, 
        0, 
        DirectedInfinity[1], 1}}, Typeset`size$$ = {15., {0., 20.}}, 
      Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
      True, $CellContext`n$6021$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, "Variables" :> {$CellContext`n$$ = 0}, 
        "ControllerVariables" :> {
          Hold[$CellContext`n$$, $CellContext`n$6021$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> 
        Style[2^$CellContext`n$$, 30], 
        "Specifications" :> {{{$CellContext`n$$, 0, 
            "\!\(\*SuperscriptBox[\(2\), \(n\)]\)"}, 0, 
           DirectedInfinity[1], 1, 
           AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
           AnimationRate -> 10, AnimationRunning -> False, 
           AppearanceElements -> {
            "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
             "DirectionButton"}}}, 
        "Options" :> {
         ControlType -> Animator, AppearanceElements -> None, 
          DefaultBaseStyle -> "Animate", DefaultLabelStyle -> "AnimateLabel", 
          SynchronousUpdating -> True, ShrinkingDelay -> 10.}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{88., {50., 62.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Animate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",ExpressionU\
UID->"d018dfdb-32af-4f25-ba11-fb29ede478f3"]
}, {2}]],

Cell[TextData[{
 "Si nota che il numero di cifre di ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["2", "n"], TraditionalForm]],ExpressionUUID->
  "eda8fd99-8bd6-4fc9-b349-ce2572689b67"],
 " aumenta vistosamente."
}], "Text",ExpressionUUID->"42c7efb0-151e-4d04-b355-291114a0a987"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"4d46365b-d4e1-409f-aa8f-a36151ebbca0"],

Cell[CellGroupData[{

Cell[TextData[{
 "La successione ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["a", "n"], ":=", 
    SqrtBox["n"]}], TraditionalForm]],ExpressionUUID->
  "c0459dc3-13af-4be1-959e-faa6a253f051"]
}], "Section",ExpressionUUID->"b20a995b-806b-4517-a194-ebc14e7b8b63"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Style", "[", 
    RowBox[{
     RowBox[{"N", "@", 
      SqrtBox["n"]}], ",", "200"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "0", ",", "\"\<\!\(\*SqrtBox[\(n\)]\)\>\""}], "}"}], 
     ",", "0", ",", "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<PlayPauseButton\>\"", ",", "\"\<ResetButton\>\""}], 
       "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "10"}]}], "]"}]], "Input",ExpressionUUI\
D->"0a99b942-770c-4e03-a975-97e67685aa32"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`n$$ = 0, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`n$$], 0, "\!\(\*SqrtBox[\(n\)]\)"}, 0, 
        DirectedInfinity[1], 1}}, Typeset`size$$ = {150., {3., 135.}}, 
      Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
      True, $CellContext`n$6397$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, "Variables" :> {$CellContext`n$$ = 0}, 
        "ControllerVariables" :> {
          Hold[$CellContext`n$$, $CellContext`n$6397$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> Style[
          N[$CellContext`n$$^Rational[1, 2]], 200], 
        "Specifications" :> {{{$CellContext`n$$, 0, "\!\(\*SqrtBox[\(n\)]\)"},
            0, 
           DirectedInfinity[1], 1, 
           AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
           AnimationRunning -> False, AnimationRate -> 10, 
           AppearanceElements -> {
            "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
             "DirectionButton"}}}, 
        "Options" :> {
         ControlType -> Animator, AppearanceElements -> None, 
          DefaultBaseStyle -> "Animate", DefaultLabelStyle -> "AnimateLabel", 
          SynchronousUpdating -> True, ShrinkingDelay -> 10.}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{201., {135., 147.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Animate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",ExpressionU\
UID->"3f7b51a0-0d82-4386-b3fa-2525b29c873e"]
}, {2}]],

Cell[TextData[{
 "Si nota che ",
 Cell[BoxData[
  FormBox[
   SqrtBox["n"], TraditionalForm]],ExpressionUUID->
  "4a71b219-2d8a-4125-a8fd-ec420dff7783"],
 " aumenta ma in modo via via pi\[UGrave] lento."
}], "Text",ExpressionUUID->"ced4d162-912d-4cb5-a211-46edca6a1c5e"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"37dda24b-7cd9-4834-be9e-ab64a94febb2"],

Cell[CellGroupData[{

Cell[TextData[{
 "La successione ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["a", "n"], ":=", 
    RowBox[{"1", "/", "n"}]}], TraditionalForm]],ExpressionUUID->
  "5e93959a-d4e2-4666-9a9f-1d02ce93b3f4"]
}], "Section",ExpressionUUID->"eac76b84-1477-4c97-96ed-5cb8f9cdd53c"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Style", "[", 
    RowBox[{
     RowBox[{"NumberForm", "[", 
      RowBox[{
       RowBox[{"N", "[", 
        RowBox[{
         RowBox[{"1", "/", "n"}], ",", "20"}], "]"}], ",", "20"}], "]"}], ",",
      "70"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "n", ",", "1", ",", "\"\<\!\(\*FractionBox[\(1\), \(n\)]\)\>\""}], 
      "}"}], ",", "1", ",", "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<PlayPauseButton\>\"", ",", "\"\<ResetButton\>\""}], 
       "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "100"}]}], "]"}]], "Input",ExpressionUU\
ID->"e38b859e-cfbf-4b61-8a61-77875bff4e4c"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`n$$ = 1, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`n$$], 1, "\!\(\*FractionBox[\(1\), \(n\)]\)"}, 1, 
        DirectedInfinity[1], 1}}, Typeset`size$$ = {
      579.291015625, {73., 47.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
      Typeset`skipInitDone$$ = True, $CellContext`n$6593$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, "Variables" :> {$CellContext`n$$ = 1}, 
        "ControllerVariables" :> {
          Hold[$CellContext`n$$, $CellContext`n$6593$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> Style[
          NumberForm[
           N[1/$CellContext`n$$, 20], 20], 70], 
        "Specifications" :> {{{$CellContext`n$$, 1, 
            "\!\(\*FractionBox[\(1\), \(n\)]\)"}, 1, 
           DirectedInfinity[1], 1, 
           AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
           AnimationRunning -> False, AnimationRate -> 100, 
           AppearanceElements -> {
            "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
             "DirectionButton"}}}, 
        "Options" :> {
         ControlType -> Animator, AppearanceElements -> None, 
          DefaultBaseStyle -> "Animate", DefaultLabelStyle -> "AnimateLabel", 
          SynchronousUpdating -> True, ShrinkingDelay -> 10.}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{769., {98., 110.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Animate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",ExpressionU\
UID->"e7851f17-d2b1-4f59-960a-a477f3f49772"]
}, {2}]],

Cell[TextData[{
 "Le cifre decimali di ",
 Cell[BoxData[
  FormBox[
   RowBox[{"1", "/", "n"}], TraditionalForm]],ExpressionUUID->
  "cfb709d1-4354-4c3e-880c-d9c04d816304"],
 " si stabilizzano via via sulla sequenza ",
 Cell[BoxData[
  FormBox["0.0000000000000000000", TraditionalForm]],ExpressionUUID->
  "e16f6a68-a3d3-4d9d-a780-32a4f4e88494"],
 ", anche se a velocit\[AGrave] calante."
}], "Text",ExpressionUUID->"6e6deac4-d211-4006-848e-8af65a24a7c8"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"a04f3c01-76ad-4abd-bc43-006e2428455a"],

Cell[CellGroupData[{

Cell[TextData[{
 "La successione ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["a", "n"], ":=", 
    RowBox[{"n", "/", 
     RowBox[{"(", 
      RowBox[{"n", "+", "1"}], ")"}]}]}], TraditionalForm]],ExpressionUUID->
  "b03a3929-c667-492f-a7f7-36a15ad1409e"]
}], "Section",ExpressionUUID->"4df671b4-d01c-49e8-b593-eec3549ebe05"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Style", "[", 
    RowBox[{
     RowBox[{"NumberForm", "[", 
      RowBox[{
       RowBox[{"N", "[", 
        RowBox[{
         RowBox[{"n", "/", 
          RowBox[{"(", 
           RowBox[{"n", "+", "1"}], ")"}]}], ",", "20"}], "]"}], ",", "20"}], 
      "]"}], ",", "70"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "n", ",", "0", ",", "\"\<\!\(\*FractionBox[\(n\), \(n + 1\)]\)\>\""}], 
      "}"}], ",", "0", ",", "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<PlayPauseButton\>\"", ",", "\"\<ResetButton\>\""}], 
       "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "100"}]}], "]"}]], "Input",ExpressionUU\
ID->"8394ee1a-d63e-4ebf-9910-4c79311a947b"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`n$$ = 0, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`n$$], 0, "\!\(\*FractionBox[\(n\), \(n + 1\)]\)"}, 
        0, 
        DirectedInfinity[1], 1}}, Typeset`size$$ = {35., {1., 47.}}, 
      Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
      True, $CellContext`n$6633$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, "Variables" :> {$CellContext`n$$ = 0}, 
        "ControllerVariables" :> {
          Hold[$CellContext`n$$, $CellContext`n$6633$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> Style[
          NumberForm[
           N[$CellContext`n$$/($CellContext`n$$ + 1), 20], 20], 70], 
        "Specifications" :> {{{$CellContext`n$$, 0, 
            "\!\(\*FractionBox[\(n\), \(n + 1\)]\)"}, 0, 
           DirectedInfinity[1], 1, 
           AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
           AnimationRunning -> False, AnimationRate -> 100, 
           AppearanceElements -> {
            "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
             "DirectionButton"}}}, 
        "Options" :> {
         ControlType -> Animator, AppearanceElements -> None, 
          DefaultBaseStyle -> "Animate", DefaultLabelStyle -> "AnimateLabel", 
          SynchronousUpdating -> True, ShrinkingDelay -> 10.}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{94., {70., 82.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Animate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",ExpressionU\
UID->"8976a24c-ccc6-438b-adc9-3c72af89bb9c"]
}, {2}]],

Cell[TextData[{
 "Le cifre decimali di ",
 Cell[BoxData[
  FormBox[
   RowBox[{"n", "/", 
    RowBox[{"(", 
     RowBox[{"n", "+", "1"}], ")"}]}], TraditionalForm]],ExpressionUUID->
  "34791fb7-1e68-493c-8baf-ffd29b14787b"],
 " si stabilizzano via via sulla sequenza ",
 Cell[BoxData[
  FormBox["0.9999999999999999999", TraditionalForm]],ExpressionUUID->
  "f5a4dce6-c91d-471f-9784-3f32b7c2c39f"],
 ", anche se a velocit\[AGrave] calante."
}], "Text",ExpressionUUID->"b842dbe7-476f-40f1-a769-11dbb7b5c439"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"8bb2e9d3-92a8-4198-8b13-03188b87c5b9"],

Cell[CellGroupData[{

Cell[TextData[{
 "La successione ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["a", "n"], " ", ":=", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"1", " ", "+", " ", 
       FractionBox["1", "n"]}], ")"}], "n"]}], TraditionalForm]],
  ExpressionUUID->"ed3bb5db-af57-48cc-a109-8ac3c28f8744"]
}], "Section",ExpressionUUID->"dfbafc47-bf1d-4b06-83f3-1cc138875151"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<n\>\"", ",", "\"\<=\>\"", ",", "n"}], "}"}], "]"}]}], 
       ",", 
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(TraditionalForm\`\*SuperscriptBox[\((1 + \*FractionBox[\(1\
\), \(n\)])\), \(n\)]\)\>\"", ",", "\"\<=\>\"", ",", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"N", "[", 
              RowBox[{
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  FractionBox["1", "n"]}], ")"}], "n"], ",", "20"}], "]"}], 
             ",", "20"}], "]"}]}], "}"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "1", ",", 
       RowBox[{
       "DisplayForm", "@", 
        "\"\<\!\(TraditionalForm\`\*SuperscriptBox[\((1 + \
\*FractionBox[\(1\), \(n\)])\), \(n\)]\)\>\""}]}], "}"}], ",", "1", ",", 
     "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<PlayPauseButton\>\"", ",", "\"\<ResetButton\>\""}], 
       "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "100"}]}], "]"}]], "Input",ExpressionUU\
ID->"4f1a261c-5671-4891-9ba8-b9137e5673db"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`n$$ = 1, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`n$$], 1, 
         DisplayForm[
         "\!\(TraditionalForm\`\*SuperscriptBox[\((1 + \*FractionBox[\(1\), \
\(n\)])\), \(n\)]\)"]}, 1, 
        DirectedInfinity[1], 1}}, Typeset`size$$ = {
      539., {38.002197265625, 55.997802734375}}, Typeset`update$$ = 0, 
      Typeset`initDone$$, Typeset`skipInitDone$$ = 
      True, $CellContext`n$7419$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, "Variables" :> {$CellContext`n$$ = 1}, 
        "ControllerVariables" :> {
          Hold[$CellContext`n$$, $CellContext`n$7419$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> Column[{
           DisplayForm[
            RowBox[{"n", "=", $CellContext`n$$}]], 
           DisplayForm[
            
            RowBox[{"\!\(TraditionalForm\`\*SuperscriptBox[\((1 + \
\*FractionBox[\(1\), \(n\)])\), \(n\)]\)", "=", 
              NumberForm[
               N[(1 + 1/$CellContext`n$$)^$CellContext`n$$, 20], 20]}]]}, 
          Alignment -> "="], "Specifications" :> {{{$CellContext`n$$, 1, 
            DisplayForm[
            "\!\(TraditionalForm\`\*SuperscriptBox[\((1 + \
\*FractionBox[\(1\), \(n\)])\), \(n\)]\)"]}, 1, 
           DirectedInfinity[1], 1, 
           AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
           AnimationRunning -> False, AnimationRate -> 100, 
           AppearanceElements -> {
            "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
             "DirectionButton"}}}, 
        "Options" :> {
         ControlType -> Animator, AppearanceElements -> None, 
          DefaultBaseStyle -> "Animate", DefaultLabelStyle -> "AnimateLabel", 
          SynchronousUpdating -> True, ShrinkingDelay -> 10.}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{600., {91., 109.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Animate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",
 FontSize->36,ExpressionUUID->"a5830bfd-1861-4bee-8db9-69ac943529ba"]
}, {2}]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"851a9cf7-4e71-41d9-9cac-14b5aa121db4"],

Cell[CellGroupData[{

Cell[TextData[{
 "La successione ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["b", "n"], " ", ":=", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"1", " ", "+", " ", 
       FractionBox["1", "n"]}], ")"}], 
     RowBox[{"n", "+", "1"}]]}], TraditionalForm]],ExpressionUUID->
  "316db343-87ac-4868-b2c5-b6e84dc827df"]
}], "Section",ExpressionUUID->"84dc626a-f20d-4ee4-8aec-e109f5364fca"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<n\>\"", ",", "\"\<=\>\"", ",", "n"}], "}"}], "]"}]}], 
       ",", 
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(TraditionalForm\`\*SuperscriptBox[\((1 + \*FractionBox[\(1\
\), \(n\)])\), \(n + 1\)]\)\>\"", ",", "\"\<=\>\"", ",", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"N", "[", 
              RowBox[{
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  FractionBox["1", "n"]}], ")"}], 
                RowBox[{"n", "+", "1"}]], ",", "20"}], "]"}], ",", "20"}], 
            "]"}]}], "}"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "1", ",", 
       RowBox[{
       "DisplayForm", "@", 
        "\"\<\!\(TraditionalForm\`\*SuperscriptBox[\((1 + \
\*FractionBox[\(1\), \(n\)])\), \(n + 1\)]\)\>\""}]}], "}"}], ",", "1", ",", 
     "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<PlayPauseButton\>\"", ",", "\"\<ResetButton\>\""}], 
       "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "100"}]}], "]"}]], "Input",ExpressionUU\
ID->"6b3a033c-c986-4d46-91a0-dc8088489631"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`n$$ = 1, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`n$$], 1, 
         DisplayForm[
         "\!\(TraditionalForm\`\*SuperscriptBox[\((1 + \*FractionBox[\(1\), \
\(n\)])\), \(n + 1\)]\)"]}, 1, 
        DirectedInfinity[1], 1}}, Typeset`size$$ = {
      578., {40.502197265625, 58.497802734375}}, Typeset`update$$ = 0, 
      Typeset`initDone$$, Typeset`skipInitDone$$ = 
      True, $CellContext`n$8428$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, "Variables" :> {$CellContext`n$$ = 1}, 
        "ControllerVariables" :> {
          Hold[$CellContext`n$$, $CellContext`n$8428$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> Column[{
           DisplayForm[
            RowBox[{"n", "=", $CellContext`n$$}]], 
           DisplayForm[
            
            RowBox[{"\!\(TraditionalForm\`\*SuperscriptBox[\((1 + \
\*FractionBox[\(1\), \(n\)])\), \(n + 1\)]\)", "=", 
              NumberForm[
               N[(1 + 1/$CellContext`n$$)^($CellContext`n$$ + 1), 20], 
               20]}]]}, Alignment -> "="], 
        "Specifications" :> {{{$CellContext`n$$, 1, 
            DisplayForm[
            "\!\(TraditionalForm\`\*SuperscriptBox[\((1 + \
\*FractionBox[\(1\), \(n\)])\), \(n + 1\)]\)"]}, 1, 
           DirectedInfinity[1], 1, 
           AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
           AnimationRunning -> False, AnimationRate -> 100, 
           AppearanceElements -> {
            "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
             "DirectionButton"}}}, 
        "Options" :> {
         ControlType -> Animator, AppearanceElements -> None, 
          DefaultBaseStyle -> "Animate", DefaultLabelStyle -> "AnimateLabel", 
          SynchronousUpdating -> True, ShrinkingDelay -> 10.}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{639., {93., 111.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Animate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",
 FontSize->36,ExpressionUUID->"fefa05f4-c1b4-4fd7-bb34-4811bcc3c987"]
}, {2}]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"8e71551a-057a-4dcf-8c00-f978dc3fa569"],

Cell[CellGroupData[{

Cell[TextData[{
 "La successione ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["F", "n"], TraditionalForm]],ExpressionUUID->
  "6b1b4a5c-ae5c-410b-acaf-4b3d84ae98cc"],
 " di Fibonacci"
}], "Section",ExpressionUUID->"5ee0478a-361a-4da9-a312-a32594698264"],

Cell["\<\
Consideriamo la classica successione di Fibonacci definita per ricorrenza cos\
\[IGrave]:\
\>", "Text",ExpressionUUID->"ea0cd5c2-ca10-4e7f-860a-0b78511d825b"],

Cell[TextData[{
 " ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["F", "0"], ":=", "0"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     SubscriptBox["F", "1"], ":=", "1"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     SubscriptBox["F", 
      RowBox[{"n", "+", "2"}]], ":=", 
     RowBox[{
      SubscriptBox["F", 
       RowBox[{"n", "+", "1"}]], "+", 
      RowBox[{
       SubscriptBox["F", "n"], "."}]}]}]}], TraditionalForm]],ExpressionUUID->
  "333f0f7f-be72-4c54-9a1b-1cdd3ab13e88"]
}], "Text",ExpressionUUID->"eb7cc567-c4ea-4b93-a7bc-6a78436d8bf5"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Style", "[", 
    RowBox[{
     RowBox[{"Column", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"DisplayForm", "@", 
          RowBox[{"RowBox", "[", 
           RowBox[{"{", 
            RowBox[{"\"\<n\>\"", ",", "\"\<=\>\"", ",", "n"}], "}"}], "]"}]}],
          ",", 
         RowBox[{"DisplayForm", "@", 
          RowBox[{"RowBox", "[", 
           RowBox[{"{", 
            RowBox[{
            "\"\<\!\(TraditionalForm\`\*SubscriptBox[\(F\), \(n\)]\)\>\"", 
             ",", "\"\<=\>\"", ",", 
             RowBox[{"Fibonacci", "[", "n", "]"}]}], "}"}], "]"}]}]}], "}"}], 
       ",", 
       RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", "60"}], 
    "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "0", ",", "\"\<\>\""}], "}"}], ",", "0", ",", 
     "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<PlayPauseButton\>\"", ",", "\"\<ResetButton\>\""}], 
       "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "10"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]], "Input",Express\
ionUUID->"46d37811-2e0b-4579-b47b-ba5f1d72141c"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`n$$ = 0, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`n$$], 0, ""}, 0, 
        DirectedInfinity[1], 1}}, Typeset`size$$ = {
      156., {51.832275390625, 82.167724609375}}, Typeset`update$$ = 0, 
      Typeset`initDone$$, Typeset`skipInitDone$$ = 
      True, $CellContext`n$10523$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, "Variables" :> {$CellContext`n$$ = 0}, 
        "ControllerVariables" :> {
          Hold[$CellContext`n$$, $CellContext`n$10523$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> Style[
          Column[{
            DisplayForm[
             RowBox[{"n", "=", $CellContext`n$$}]], 
            DisplayForm[
             
             RowBox[{"\!\(TraditionalForm\`\*SubscriptBox[\(F\), \(n\)]\)", 
               "=", 
               Fibonacci[$CellContext`n$$]}]]}, Alignment -> "="], 60], 
        "Specifications" :> {{{$CellContext`n$$, 0, ""}, 0, 
           DirectedInfinity[1], 1, 
           AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
           AnimationRate -> 10, AnimationRunning -> False, 
           AppearanceElements -> {
            "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
             "DirectionButton"}}}, 
        "Options" :> {
         ControlType -> Animator, AppearanceElements -> None, 
          DefaultBaseStyle -> "Animate", DefaultLabelStyle -> "AnimateLabel", 
          SynchronousUpdating -> True, ShrinkingDelay -> 10.}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{207., {102., 114.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Animate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",ExpressionU\
UID->"fc360798-5dfc-4b0c-9fbf-35989ebdf55d"]
}, {2}]],

Cell["\<\
Il numero di cifre decimali della successione di Fibonacci cresce \
vistosamente.\
\>", "Text",ExpressionUUID->"c2c76429-c968-417d-8b14-7da33098187a"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"b2b8f19d-0488-4fed-a69d-0c8aea7c6a48"],

Cell[CellGroupData[{

Cell[TextData[{
 "Il rapporto ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["F", 
     RowBox[{"n", "+", "1"}]], "/", 
    SubscriptBox["F", "n"]}], TraditionalForm]],ExpressionUUID->
  "fd2d2d12-13db-44bf-8ef8-030fea86cf35"],
 " fra i termini successivi della successione di Fibonacci"
}], "Section",ExpressionUUID->"6d9d5b82-3c11-42f2-9dd3-b00bacd8152d"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Grid", "[", 
  RowBox[{
   RowBox[{"Prepend", "[", 
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"n", ",", 
         RowBox[{"Fibonacci", "[", "n", "]"}], ",", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"n", "\[LessEqual]", "0"}], ",", "\"\<\>\"", ",", 
           RowBox[{
            RowBox[{"Fibonacci", "[", 
             RowBox[{"n", "+", "1"}], "]"}], "/", 
            RowBox[{"Fibonacci", "[", "n", "]"}]}]}], "]"}], ",", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"n", "\[LessEqual]", "0"}], ",", "\"\<\>\"", ",", 
           RowBox[{"N", "[", 
            RowBox[{
             RowBox[{"Fibonacci", "[", 
              RowBox[{"n", "+", "1"}], "]"}], "/", 
             RowBox[{"Fibonacci", "[", "n", "]"}]}], "]"}]}], "]"}]}], "}"}], 
       ",", 
       RowBox[{"{", 
        RowBox[{"n", ",", "0", ",", "12"}], "}"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "\"\<\!\(TraditionalForm\`n\)\>\"", ",", 
       "\"\<\!\(TraditionalForm\`\*SubscriptBox[\(F\), \(n\)]\)\>\"", ",", 
       RowBox[{"Item", "[", 
        RowBox[{
        "\"\<\!\(TraditionalForm\`\*SubscriptBox[\(F\), \(n + \
1\)]/\*SubscriptBox[\(F\), \(n\)]\)\>\"", ",", 
         RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", 
       "SpanFromLeft"}], "}"}]}], "]"}], ",", 
   RowBox[{"Frame", "\[Rule]", "True"}], ",", 
   RowBox[{"Dividers", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"True", ",", "True", ",", "True", ",", "True"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"True", ",", "True"}], "}"}]}], "}"}]}], ",", 
   RowBox[{"Alignment", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"Right", ",", "Right", ",", "Center", ",", "Left"}], "}"}], 
      ",", "Bottom"}], "}"}]}], ",", 
   RowBox[{"Spacings", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"2", ",", ".5"}], "}"}]}], ",", 
   RowBox[{"BaseStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"FontFamily", "\[Rule]", "\"\<Times\>\""}], "}"}]}]}], 
  "]"}]], "Input",ExpressionUUID->"c22f5590-baff-450b-91b9-9185ec257510"],

Cell[BoxData[
 TagBox[GridBox[{
    {"\<\"\\!\\(TraditionalForm\\`n\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\*SubscriptBox[\\(F\\), \\(n\\)]\\)\"\>", 
     ItemBox["\<\"\\!\\(TraditionalForm\\`\\*SubscriptBox[\\(F\\), \\(n + \
1\\)]/\\*SubscriptBox[\\(F\\), \\(n\\)]\\)\"\>",
      Alignment->Center,
      StripOnInput->False], "\[SpanFromLeft]"},
    {"0", "0", "\<\"\"\>", "\<\"\"\>"},
    {"1", "1", "1", "1.`"},
    {"2", "1", "2", "2.`"},
    {"3", "2", 
     FractionBox["3", "2"], "1.5`"},
    {"4", "3", 
     FractionBox["5", "3"], "1.6666666666666667`"},
    {"5", "5", 
     FractionBox["8", "5"], "1.6`"},
    {"6", "8", 
     FractionBox["13", "8"], "1.625`"},
    {"7", "13", 
     FractionBox["21", "13"], "1.6153846153846154`"},
    {"8", "21", 
     FractionBox["34", "21"], "1.619047619047619`"},
    {"9", "34", 
     FractionBox["55", "34"], "1.6176470588235294`"},
    {"10", "55", 
     FractionBox["89", "55"], "1.6181818181818182`"},
    {"11", "89", 
     FractionBox["144", "89"], "1.6179775280898876`"},
    {"12", "144", 
     FractionBox["233", "144"], "1.6180555555555556`"}
   },
   AutoDelete->False,
   BaseStyle->{FontFamily -> "Times"},
   GridBoxAlignment->{
    "Columns" -> {Right, Right, Center, Left}, "Rows" -> {{Bottom}}},
   GridBoxDividers->{
    "Columns" -> {True, True, True, True}, "Rows" -> {True, True}},
   GridBoxFrame->{"ColumnsIndexed" -> {{{1, -1}, {1, -1}} -> True}},
   GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
   GridBoxSpacings->{"Columns" -> {{2}}, "Rows" -> {{0.5}}}],
  "Grid"]], "Output",ExpressionUUID->"beaa57f5-bde7-4a45-ad66-356029cb3473"]
}, {2}]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<n\>\"", ",", "\"\<=\>\"", ",", "n"}], "}"}], "]"}]}], 
       ",", 
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(TraditionalForm\`\(TraditionalForm\`\*FractionBox[\
SubscriptBox[\(F\), \(n + 1\)], \(TraditionalForm\`\*SubscriptBox[\(F\), \
\(n\)]\)]\)\)\>\"", ",", "\"\<=\>\"", ",", 
           RowBox[{"N", "[", 
            RowBox[{
             FractionBox[
              RowBox[{"Fibonacci", "[", 
               RowBox[{"n", "+", "1"}], "]"}], 
              RowBox[{"Fibonacci", "[", "n", "]"}]], ",", "1000"}], "]"}]}], 
          "}"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "1", ",", "\"\<\>\""}], "}"}], ",", "1", ",", 
     "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<PlayPauseButton\>\"", ",", "\"\<ResetButton\>\""}], 
       "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "10"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]], "Input",Express\
ionUUID->"99a2100f-5025-4158-8a4a-79f192fc2df3"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`n$$ = 1, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`n$$], 1, ""}, 1, 
        DirectedInfinity[1], 1}}, Typeset`size$$ = {
      591., {376.587158203125, 388.412841796875}}, Typeset`update$$ = 0, 
      Typeset`initDone$$, Typeset`skipInitDone$$ = 
      True, $CellContext`n$10595$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, "Variables" :> {$CellContext`n$$ = 1}, 
        "ControllerVariables" :> {
          Hold[$CellContext`n$$, $CellContext`n$10595$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> Column[{
           DisplayForm[
            RowBox[{"n", "=", $CellContext`n$$}]], 
           DisplayForm[
            
            RowBox[{"\!\(TraditionalForm\`\(TraditionalForm\`\*FractionBox[\
SubscriptBox[\(F\), \(n + 1\)], \(TraditionalForm\`\*SubscriptBox[\(F\), \
\(n\)]\)]\)\)", "=", 
              N[
              Fibonacci[$CellContext`n$$ + 1]/Fibonacci[$CellContext`n$$], 
               1000]}]]}, Alignment -> "="], 
        "Specifications" :> {{{$CellContext`n$$, 1, ""}, 1, 
           DirectedInfinity[1], 1, 
           AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
           AnimationRate -> 10, AnimationRunning -> False, 
           AppearanceElements -> {
            "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
             "DirectionButton"}}}, 
        "Options" :> {
         ControlType -> Animator, AppearanceElements -> None, 
          DefaultBaseStyle -> "Animate", DefaultLabelStyle -> "AnimateLabel", 
          SynchronousUpdating -> True, ShrinkingDelay -> 10.}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{12147., {418., 430.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Animate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",ExpressionU\
UID->"2f8a6816-1c8c-4df0-aa46-64c7efdd6d60"]
}, {2}]],

Cell[TextData[{
 "Si nota che le cifre decimali di ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["F", 
     RowBox[{"n", "+", "1"}]], "/", 
    SubscriptBox["F", "n"]}], TraditionalForm]],ExpressionUUID->
  "3903d8c7-7437-4104-81f5-599327e4f8cf"],
 " si stabilizzano velocemente."
}], "Text",ExpressionUUID->"61265db0-d192-4659-93ad-f253eaf8b49b"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"6190227d-f9d7-4cdc-ab78-39e2060db82c"],

Cell[CellGroupData[{

Cell[TextData[{
 "La successione ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["a", "n"], ":=", 
    RowBox[{"cos", " ", 
     RowBox[{"(", "n", ")"}]}]}], TraditionalForm]],ExpressionUUID->
  "038d5a6a-3a81-4d3f-8a0d-c90c3444e07a"]
}], "Section",ExpressionUUID->"4aaefd36-d454-420a-ba51-67a4a6b3d68d"],

Cell[TextData[{
 "Il coseno di ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]],ExpressionUUID->
  "47344c03-6690-46fa-8e4e-f6273cdd622e"],
 " radianti:"
}], "Text",ExpressionUUID->"5113c441-10a9-432a-9957-e0984a2da0d8"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Grid", "[", 
  RowBox[{
   RowBox[{"Prepend", "[", 
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"n", ",", 
         RowBox[{"TraditionalForm", "[", 
          RowBox[{"Cos", "[", "n", "]"}], "]"}], ",", 
         RowBox[{"N", "[", 
          RowBox[{"Cos", "[", "n", "]"}], "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"n", ",", "0", ",", "12"}], "}"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"\"\<\!\(TraditionalForm\`n\)\>\"", ",", 
       RowBox[{"Item", "[", 
        RowBox[{"\"\<\!\(TraditionalForm\`cos\\\ n\)\>\"", ",", 
         RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", 
       "SpanFromLeft"}], "}"}]}], "]"}], ",", 
   RowBox[{"Frame", "\[Rule]", "True"}], ",", 
   RowBox[{"Dividers", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"True", ",", "True", ",", "True"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"True", ",", "True"}], "}"}]}], "}"}]}], ",", 
   RowBox[{"Alignment", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"Right", ",", "Right", ",", "\"\<.\>\""}], "}"}], ",", 
      "Bottom"}], "}"}]}], ",", 
   RowBox[{"Spacings", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"2", ",", ".5"}], "}"}]}], ",", 
   RowBox[{"BaseStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"FontFamily", "\[Rule]", "\"\<Times\>\""}], "}"}]}]}], 
  "]"}]], "Input",ExpressionUUID->"cf7f5d3f-3311-41eb-8155-fdc686d44244"],

Cell[BoxData[
 TagBox[GridBox[{
    {"\<\"\\!\\(TraditionalForm\\`n\\)\"\>", 
     ItemBox["\<\"\\!\\(TraditionalForm\\`cos\\\\ n\\)\"\>",
      Alignment->Center,
      StripOnInput->False], "\[SpanFromLeft]"},
    {"0", 
     TagBox[
      FormBox["1",
       TraditionalForm],
      TraditionalForm,
      Editable->True], "1.`"},
    {"1", 
     TagBox[
      FormBox[
       RowBox[{"cos", "(", "1", ")"}],
       TraditionalForm],
      TraditionalForm,
      Editable->True], "0.5403023058681398`"},
    {"2", 
     TagBox[
      FormBox[
       RowBox[{"cos", "(", "2", ")"}],
       TraditionalForm],
      TraditionalForm,
      Editable->True], 
     RowBox[{"-", "0.4161468365471424`"}]},
    {"3", 
     TagBox[
      FormBox[
       RowBox[{"cos", "(", "3", ")"}],
       TraditionalForm],
      TraditionalForm,
      Editable->True], 
     RowBox[{"-", "0.9899924966004454`"}]},
    {"4", 
     TagBox[
      FormBox[
       RowBox[{"cos", "(", "4", ")"}],
       TraditionalForm],
      TraditionalForm,
      Editable->True], 
     RowBox[{"-", "0.6536436208636119`"}]},
    {"5", 
     TagBox[
      FormBox[
       RowBox[{"cos", "(", "5", ")"}],
       TraditionalForm],
      TraditionalForm,
      Editable->True], "0.2836621854632263`"},
    {"6", 
     TagBox[
      FormBox[
       RowBox[{"cos", "(", "6", ")"}],
       TraditionalForm],
      TraditionalForm,
      Editable->True], "0.9601702866503661`"},
    {"7", 
     TagBox[
      FormBox[
       RowBox[{"cos", "(", "7", ")"}],
       TraditionalForm],
      TraditionalForm,
      Editable->True], "0.7539022543433046`"},
    {"8", 
     TagBox[
      FormBox[
       RowBox[{"cos", "(", "8", ")"}],
       TraditionalForm],
      TraditionalForm,
      Editable->True], 
     RowBox[{"-", "0.14550003380861354`"}]},
    {"9", 
     TagBox[
      FormBox[
       RowBox[{"cos", "(", "9", ")"}],
       TraditionalForm],
      TraditionalForm,
      Editable->True], 
     RowBox[{"-", "0.9111302618846769`"}]},
    {"10", 
     TagBox[
      FormBox[
       RowBox[{"cos", "(", "10", ")"}],
       TraditionalForm],
      TraditionalForm,
      Editable->True], 
     RowBox[{"-", "0.8390715290764524`"}]},
    {"11", 
     TagBox[
      FormBox[
       RowBox[{"cos", "(", "11", ")"}],
       TraditionalForm],
      TraditionalForm,
      Editable->True], "0.004425697988050786`"},
    {"12", 
     TagBox[
      FormBox[
       RowBox[{"cos", "(", "12", ")"}],
       TraditionalForm],
      TraditionalForm,
      Editable->True], "0.8438539587324921`"}
   },
   AutoDelete->False,
   BaseStyle->{FontFamily -> "Times"},
   GridBoxAlignment->{"Columns" -> {Right, Right, "."}, "Rows" -> {{Bottom}}},
   
   GridBoxDividers->{"Columns" -> {True, True, True}, "Rows" -> {True, True}},
   
   GridBoxFrame->{"ColumnsIndexed" -> {{{1, -1}, {1, -1}} -> True}},
   GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
   GridBoxSpacings->{"Columns" -> {{2}}, "Rows" -> {{0.5}}}],
  "Grid"]], "Output",ExpressionUUID->"b6e58948-d8cc-4580-b7a3-20456ff79698"]
}, {2}]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<n\>\"", ",", "\"\<=\>\"", ",", "n"}], "}"}], "]"}]}], 
       ",", 
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(TraditionalForm\`\(TraditionalForm\`cos(n)\)\)\>\"", ",", 
           "\"\<=\>\"", ",", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"N", "[", 
              RowBox[{
               RowBox[{"Cos", "[", "n", "]"}], ",", "1000"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"1000", ",", "999"}], "}"}], ",", 
             RowBox[{"NumberSigns", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{"\"\<-\>\"", ",", "\"\<+\>\""}], "}"}]}]}], "]"}]}], 
          "}"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "0", ",", "\"\<\>\""}], "}"}], ",", "0", ",", 
     "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<PlayPauseButton\>\"", ",", "\"\<ResetButton\>\""}], 
       "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "10"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]], "Input",Express\
ionUUID->"1b90455e-663c-4c2f-beb2-1ecd4771c902"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`n$$ = 0, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`n$$], 0, ""}, 0, 
        DirectedInfinity[1], 1}}, Typeset`size$$ = {
      593., {397.087158203125, 408.912841796875}}, Typeset`update$$ = 0, 
      Typeset`initDone$$, Typeset`skipInitDone$$ = 
      True, $CellContext`n$5278$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, "Variables" :> {$CellContext`n$$ = 0}, 
        "ControllerVariables" :> {
          Hold[$CellContext`n$$, $CellContext`n$5278$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> Column[{
           DisplayForm[
            RowBox[{"n", "=", $CellContext`n$$}]], 
           DisplayForm[
            RowBox[{"\!\(TraditionalForm\`\(TraditionalForm\`cos(n)\)\)", "=", 
              NumberForm[
               N[
                Cos[$CellContext`n$$], 1000], {1000, 999}, 
               NumberSigns -> {"-", "+"}]}]]}, Alignment -> "="], 
        "Specifications" :> {{{$CellContext`n$$, 0, ""}, 0, 
           DirectedInfinity[1], 1, 
           AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
           AnimationRate -> 10, AnimationRunning -> False, 
           AppearanceElements -> {
            "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
             "DirectionButton"}}}, 
        "Options" :> {
         ControlType -> Animator, AppearanceElements -> None, 
          DefaultBaseStyle -> "Animate", DefaultLabelStyle -> "AnimateLabel", 
          SynchronousUpdating -> True, ShrinkingDelay -> 10.}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{12157., {438., 450.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Animate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",ExpressionU\
UID->"4f284631-0702-4dc5-a97a-b32c3c8e965e"]
}, {2}]],

Cell[TextData[{
 "Si nota che le cifre decimali di ",
 Cell[BoxData[
  FormBox[
   RowBox[{"cos", " ", "n"}], TraditionalForm]],ExpressionUUID->
  "4abc8870-6f67-48b7-8a62-2c50231dd2db"],
 " non si stabilizzano."
}], "Text",ExpressionUUID->"d3692b54-687b-4e9d-88f9-e7627e8f0825"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"0c3e0706-a045-4853-a7ea-01dc19fdbeea"],

Cell[CellGroupData[{

Cell["Una variante della successione di Fibonacci", "Section",ExpressionUUID->"25f2ab22-e9c7-49e8-ba74-8e0bdabca5a8"],

Cell["Consideriamo la successione definita per ricorrenza cos\[IGrave]:", \
"Text",ExpressionUUID->"520b7a3a-0bf9-40cf-a39a-70c6c6850f9a"],

Cell[TextData[{
 " ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["a", "0"], ":=", "1"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     SubscriptBox["a", "1"], ":=", "1"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     SubscriptBox["a", 
      RowBox[{"n", "+", "2"}]], ":=", 
     RowBox[{
      SubscriptBox["a", 
       RowBox[{"n", "+", "1"}]], "+", 
      RowBox[{"6", 
       RowBox[{
        SubscriptBox["a", "n"], "."}]}]}]}]}], TraditionalForm]],
  ExpressionUUID->"16e87579-4921-4f32-b67e-42bc9e8e08c8"]
}], "Text",ExpressionUUID->"9236fd0b-0e5d-4fb8-ba0e-f435c45857fb"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Grid", "[", 
  RowBox[{
   RowBox[{"Prepend", "[", 
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"n", ",", 
         RowBox[{
          FractionBox["1", "5"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"-", "1"}], ")"}], "n"], " ", 
             SuperscriptBox["2", 
              RowBox[{"n", "+", "1"}]]}], "+", 
            SuperscriptBox["3", 
             RowBox[{"n", "+", "1"}]]}], ")"}]}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"n", ",", "0", ",", "12"}], "}"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"\"\<\!\(TraditionalForm\`n\)\>\"", ",", 
       RowBox[{"Item", "[", 
        RowBox[{
        "\"\<\!\(TraditionalForm\`\*SubscriptBox[\(a\), \(n\)]\)\>\"", ",", 
         RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}]}], "}"}]}], 
    "]"}], ",", 
   RowBox[{"Frame", "\[Rule]", "True"}], ",", 
   RowBox[{"Dividers", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"True", ",", "True", ",", "True"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"True", ",", "True"}], "}"}]}], "}"}]}], ",", 
   RowBox[{"Alignment", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"Right", ",", "Right"}], "}"}], ",", "Bottom"}], "}"}]}], ",", 
   
   RowBox[{"Spacings", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"2", ",", ".5"}], "}"}]}], ",", 
   RowBox[{"BaseStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"FontFamily", "\[Rule]", "\"\<Times\>\""}], "}"}]}]}], 
  "]"}]], "Input",ExpressionUUID->"65e8200c-bd00-43be-87fa-35c4ba4de5f2"],

Cell[BoxData[
 TagBox[GridBox[{
    {"\<\"\\!\\(TraditionalForm\\`n\\)\"\>", 
     ItemBox["\<\"\\!\\(TraditionalForm\\`\\*SubscriptBox[\\(a\\), \
\\(n\\)]\\)\"\>",
      Alignment->Center,
      StripOnInput->False]},
    {"0", "1"},
    {"1", "1"},
    {"2", "7"},
    {"3", "13"},
    {"4", "55"},
    {"5", "133"},
    {"6", "463"},
    {"7", "1261"},
    {"8", "4039"},
    {"9", "11605"},
    {"10", "35839"},
    {"11", "105469"},
    {"12", "320503"}
   },
   AutoDelete->False,
   BaseStyle->{FontFamily -> "Times"},
   GridBoxAlignment->{"Columns" -> {Right, Right}, "Rows" -> {{Bottom}}},
   GridBoxDividers->{"Columns" -> {True, True, True}, "Rows" -> {True, True}},
   
   GridBoxFrame->{"ColumnsIndexed" -> {{{1, -1}, {1, -1}} -> True}},
   GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
   GridBoxSpacings->{"Columns" -> {{2}}, "Rows" -> {{0.5}}}],
  "Grid"]], "Output",ExpressionUUID->"7c764f70-eb6d-482d-805d-7e4ddfd5ef66"]
}, {2}]],

Cell["Vediamo come si comporta:", "Text",ExpressionUUID->"4c8a3b2a-f97b-4042-a7f4-50b7b76c73ed"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(TraditionalForm\`n\)\>\"", ",", "\"\<=\>\"", ",", "n"}], 
          "}"}], "]"}]}], ",", 
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(TraditionalForm\`\*SubscriptBox[\(a\), \(n\)]\)\>\"", ",", 
           "\"\<=\>\"", ",", 
           RowBox[{
            FractionBox["1", "5"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{"-", "1"}], ")"}], "n"], " ", 
               SuperscriptBox["2", 
                RowBox[{"n", "+", "1"}]]}], "+", 
              SuperscriptBox["3", 
               RowBox[{"n", "+", "1"}]]}], ")"}]}]}], "}"}], "]"}]}]}], "}"}],
      ",", 
     RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "0", ",", "\"\<\>\""}], "}"}], ",", "0", ",", 
     "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<PlayPauseButton\>\"", ",", "\"\<ResetButton\>\""}], 
       "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "10"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}], ",", 
   RowBox[{"BaseStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"FontFamily", "\[Rule]", "\"\<Times\>\""}], "}"}]}]}], 
  "]"}]], "Input",ExpressionUUID->"34a84bee-eaf8-4620-8cea-401530830151"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 0, ""}, 0, 
      DirectedInfinity[1], 1}}, Typeset`size$$ = {
    61., {21.087158203125, 32.912841796875}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`n$19406$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$19406$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Column[{
         DisplayForm[
          RowBox[{"\!\(TraditionalForm\`n\)", "=", $CellContext`n$$}]], 
         DisplayForm[
          
          RowBox[{"\!\(TraditionalForm\`\*SubscriptBox[\(a\), \(n\)]\)", 
            "=", (1/5) ((-1)^$CellContext`n$$ 2^($CellContext`n$$ + 1) + 
             3^($CellContext`n$$ + 1))}]]}, Alignment -> "="], 
      "Specifications" :> {{{$CellContext`n$$, 0, ""}, 0, 
         DirectedInfinity[1], 1, 
         AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
         AnimationRate -> 10, AnimationRunning -> False, 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       BaseStyle -> {FontFamily -> "Times"}, ControlType -> Animator, 
        AppearanceElements -> None, DefaultBaseStyle -> "Animate", 
        DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> True, 
        ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{112., {62., 74.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False,
   FontFamily->"Times"],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"ea1c7e39-\
aefe-4d35-b7be-00d43887c569"]
}, {2}]],

Cell[TextData[{
 "Il rapporto fra i termini successivi della successione ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["a", "n"], TraditionalForm]],ExpressionUUID->
  "09ac6fb7-fa02-4bcd-ab3c-f3c0eca75b2c"],
 ":"
}], "Text",ExpressionUUID->"2c28fe4f-8fae-447d-a9d5-1015e6589621"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Grid", "[", 
  RowBox[{
   RowBox[{"Prepend", "[", 
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"n", ",", 
         RowBox[{
          FractionBox["1", "5"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"-", "1"}], ")"}], "n"], " ", 
             SuperscriptBox["2", 
              RowBox[{"n", "+", "1"}]]}], "+", 
            SuperscriptBox["3", 
             RowBox[{"n", "+", "1"}]]}], ")"}]}], ",", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"n", "\[LessEqual]", "0"}], ",", "\"\<\>\"", ",", 
           RowBox[{"(", 
            FractionBox[
             RowBox[{
              FractionBox["1", "5"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"-", "1"}], ")"}], 
                  RowBox[{"(", 
                   RowBox[{"n", "+", "1"}], ")"}]], " ", 
                 SuperscriptBox["2", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"n", "+", "1"}], ")"}], "+", "1"}]]}], "+", 
                SuperscriptBox["3", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"n", "+", "1"}], ")"}], "+", "1"}]]}], ")"}]}], 
             RowBox[{
              FractionBox["1", "5"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"-", "1"}], ")"}], "n"], " ", 
                 SuperscriptBox["2", 
                  RowBox[{"n", "+", "1"}]]}], "+", 
                SuperscriptBox["3", 
                 RowBox[{"n", "+", "1"}]]}], ")"}]}]], ")"}]}], "]"}], ",", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"n", "\[LessEqual]", "0"}], ",", "\"\<\>\"", ",", 
           RowBox[{"N", "[", 
            RowBox[{"(", 
             FractionBox[
              RowBox[{
               FractionBox["1", "5"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], 
                   RowBox[{"(", 
                    RowBox[{"n", "+", "1"}], ")"}]], " ", 
                  SuperscriptBox["2", 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"n", "+", "1"}], ")"}], "+", "1"}]]}], "+", 
                 SuperscriptBox["3", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"n", "+", "1"}], ")"}], "+", "1"}]]}], ")"}]}], 
              RowBox[{
               FractionBox["1", "5"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], "n"], " ", 
                  SuperscriptBox["2", 
                   RowBox[{"n", "+", "1"}]]}], "+", 
                 SuperscriptBox["3", 
                  RowBox[{"n", "+", "1"}]]}], ")"}]}]], ")"}], "]"}]}], 
          "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"n", ",", "0", ",", "12"}], "}"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "\"\<\!\(TraditionalForm\`n\)\>\"", ",", 
       "\"\<\!\(TraditionalForm\`\*SubscriptBox[\(a\), \(n\)]\)\>\"", ",", 
       RowBox[{"Item", "[", 
        RowBox[{
        "\"\<\!\(TraditionalForm\`\*SubscriptBox[\(a\), \(n + \
1\)]/\*SubscriptBox[\(a\), \(n\)]\)\>\"", ",", 
         RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", 
       "SpanFromLeft"}], "}"}]}], "]"}], ",", 
   RowBox[{"Frame", "\[Rule]", "True"}], ",", 
   RowBox[{"Dividers", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"True", ",", "True", ",", "True", ",", "True"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"True", ",", "True"}], "}"}]}], "}"}]}], ",", 
   RowBox[{"Alignment", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"Right", ",", "Right", ",", "Center", ",", "Left"}], "}"}], 
      ",", "Center"}], "}"}]}], ",", 
   RowBox[{"Spacings", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"2", ",", ".5"}], "}"}]}], ",", 
   RowBox[{"BaseStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"FontFamily", "\[Rule]", "\"\<Times\>\""}], "}"}]}]}], 
  "]"}]], "Input",ExpressionUUID->"04349564-2f29-46fc-aba4-6c70a831b64d"],

Cell[BoxData[
 TagBox[GridBox[{
    {"\<\"\\!\\(TraditionalForm\\`n\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\*SubscriptBox[\\(a\\), \\(n\\)]\\)\"\>", 
     ItemBox["\<\"\\!\\(TraditionalForm\\`\\*SubscriptBox[\\(a\\), \\(n + \
1\\)]/\\*SubscriptBox[\\(a\\), \\(n\\)]\\)\"\>",
      Alignment->Center,
      StripOnInput->False], "\[SpanFromLeft]"},
    {"0", "1", "\<\"\"\>", "\<\"\"\>"},
    {"1", "1", "7", "7.`"},
    {"2", "7", 
     FractionBox["13", "7"], "1.8571428571428572`"},
    {"3", "13", 
     FractionBox["55", "13"], "4.230769230769231`"},
    {"4", "55", 
     FractionBox["133", "55"], "2.418181818181818`"},
    {"5", "133", 
     FractionBox["463", "133"], "3.481203007518797`"},
    {"6", "463", 
     FractionBox["1261", "463"], "2.7235421166306697`"},
    {"7", "1261", 
     FractionBox["4039", "1261"], "3.203013481363997`"},
    {"8", "4039", 
     FractionBox["11605", "4039"], "2.8732359494924484`"},
    {"9", "11605", 
     FractionBox["35839", "11605"], "3.0882378285221885`"},
    {"10", "35839", 
     FractionBox["105469", "35839"], "2.9428555484249004`"},
    {"11", "105469", 
     FractionBox["320503", "105469"], "3.0388360560923116`"},
    {"12", "320503", 
     FractionBox["953317", "320503"], "2.974440176847019`"}
   },
   AutoDelete->False,
   BaseStyle->{FontFamily -> "Times"},
   GridBoxAlignment->{
    "Columns" -> {Right, Right, Center, Left}, "Rows" -> {{Center}}},
   GridBoxDividers->{
    "Columns" -> {True, True, True, True}, "Rows" -> {True, True}},
   GridBoxFrame->{"ColumnsIndexed" -> {{{1, -1}, {1, -1}} -> True}},
   GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
   GridBoxSpacings->{"Columns" -> {{2}}, "Rows" -> {{0.5}}}],
  "Grid"]], "Output",ExpressionUUID->"bc7b2db1-5f1c-40fa-a409-5d4811ab28f9"]
}, {2}]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(TraditionalForm\`n\)\>\"", ",", "\"\<=\>\"", ",", "n"}], 
          "}"}], "]"}]}], ",", 
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(TraditionalForm\`\(TraditionalForm\`\*FractionBox[\
SubscriptBox[\(a\), \(n + 1\)], \(TraditionalForm\`\*SubscriptBox[\(a\), \
\(n\)]\)]\)\)\>\"", ",", "\"\<=\>\"", ",", 
           RowBox[{"N", "[", 
            RowBox[{
             FractionBox[
              RowBox[{
               FractionBox["1", "5"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], "n"]}], " ", 
                  SuperscriptBox["2", 
                   RowBox[{"n", "+", "2"}]]}], "+", 
                 SuperscriptBox["3", 
                  RowBox[{"n", "+", "2"}]]}], ")"}]}], 
              RowBox[{
               FractionBox["1", "5"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], "n"], " ", 
                  SuperscriptBox["2", 
                   RowBox[{"n", "+", "1"}]]}], "+", 
                 SuperscriptBox["3", 
                  RowBox[{"n", "+", "1"}]]}], ")"}]}]], ",", "1000"}], 
            "]"}]}], "}"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "0", ",", "\"\<\>\""}], "}"}], ",", "1", ",", 
     "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
       "\"\<PlayPauseButton\>\"", ",", "\"\<StepRightButton\>\"", ",", 
        "\"\<ResetButton\>\""}], "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "10"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}], ",", 
   RowBox[{"BaseStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"FontFamily", "\[Rule]", "\"\<Times\>\""}], "}"}]}]}], 
  "]"}]], "Input",ExpressionUUID->"4adb7b68-7be7-43fb-a676-626c7424fe4b"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 0, ""}, 1, 
      DirectedInfinity[1], 1}}, Typeset`size$$ = {
    591., {374.587158203125, 386.412841796875}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`n$19427$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$19427$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Column[{
         DisplayForm[
          RowBox[{"\!\(TraditionalForm\`n\)", "=", $CellContext`n$$}]], 
         DisplayForm[
          
          RowBox[{"\!\(TraditionalForm\`\(TraditionalForm\`\*FractionBox[\
SubscriptBox[\(a\), \(n + 1\)], \(TraditionalForm\`\*SubscriptBox[\(a\), \
\(n\)]\)]\)\)", "=", 
            
            N[(1/5) (((-(-1)^$CellContext`n$$) 2^($CellContext`n$$ + 2) + 
               3^($CellContext`n$$ + 2))/((1/
               5) ((-1)^$CellContext`n$$ 2^($CellContext`n$$ + 1) + 
               3^($CellContext`n$$ + 1)))), 1000]}]]}, Alignment -> "="], 
      "Specifications" :> {{{$CellContext`n$$, 0, ""}, 1, 
         DirectedInfinity[1], 1, 
         AppearanceElements -> {
          "PlayPauseButton", "StepRightButton", "ResetButton"}, AnimationRate -> 
         10, AnimationRunning -> False, 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       BaseStyle -> {FontFamily -> "Times"}, ControlType -> Animator, 
        AppearanceElements -> None, DefaultBaseStyle -> "Animate", 
        DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> True, 
        ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{12133., {416., 428.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False,
   FontFamily->"Times"],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"4e5d0a01-\
5578-467e-b9a1-ea7c58aedeb5"]
}, {2}]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"3a997265-568f-417a-8e88-783d184d2ae5"],

Cell[CellGroupData[{

Cell["Un\[CloseCurlyQuote]altra variante della successione di Fibonacci", \
"Section",ExpressionUUID->"c77820f6-55ff-422a-aafe-fa1b8d274307"],

Cell["Consideriamo la successione definita per ricorrenza cos\[IGrave]:", \
"Text",ExpressionUUID->"5e828f9f-b01a-4e56-b7f9-367a7c7e4aa7"],

Cell[TextData[{
 " ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["b", "0"], ":=", "0"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     SubscriptBox["b", "1"], ":=", "1"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     SubscriptBox["b", "2"], ":=", "1"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     SubscriptBox["b", 
      RowBox[{"n", "+", "3"}]], ":=", 
     RowBox[{
      RowBox[{"2", 
       SubscriptBox["b", 
        RowBox[{"n", "+", "2"}]]}], "+", 
      RowBox[{"9", 
       SubscriptBox["b", 
        RowBox[{"n", "+", "1"}]]}], "-", 
      RowBox[{"18", 
       RowBox[{
        SubscriptBox["b", "n"], "."}]}]}]}]}], TraditionalForm]],
  ExpressionUUID->"1d0f0144-ff3b-4599-8e78-828670934908"]
}], "Text",ExpressionUUID->"883437d6-9ef9-49be-88f8-a00432e8fcf2"],

Cell["Vediamo come si comporta:", "Text",ExpressionUUID->"6c947653-53f2-4a68-9d06-256e84c58adb"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Grid", "[", 
  RowBox[{
   RowBox[{"Prepend", "[", 
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"n", ",", 
         RowBox[{
          FractionBox["1", "15"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{"(", 
              RowBox[{"2", " ", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{"-", "3"}], ")"}], "n"]}], ")"}]}], "-", 
            RowBox[{"3", " ", 
             SuperscriptBox["2", "n"]}], "+", 
            RowBox[{"5", " ", 
             SuperscriptBox["3", "n"]}]}], ")"}]}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"n", ",", "0", ",", "12"}], "}"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"\"\<\!\(TraditionalForm\`n\)\>\"", ",", 
       RowBox[{"Item", "[", 
        RowBox[{
        "\"\<\!\(TraditionalForm\`\*SubscriptBox[\(b\), \(n\)]\)\>\"", ",", 
         RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}]}], "}"}]}], 
    "]"}], ",", 
   RowBox[{"Frame", "\[Rule]", "True"}], ",", 
   RowBox[{"Dividers", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"True", ",", "True", ",", "True"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"True", ",", "True"}], "}"}]}], "}"}]}], ",", 
   RowBox[{"Alignment", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"Right", ",", "Right"}], "}"}], ",", "Bottom"}], "}"}]}], ",", 
   
   RowBox[{"Spacings", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"2", ",", ".5"}], "}"}]}], ",", 
   RowBox[{"BaseStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"FontFamily", "\[Rule]", "\"\<Times\>\""}], "}"}]}]}], 
  "]"}]], "Input",ExpressionUUID->"d3537bcf-b3f5-49b2-b070-62074ff0d036"],

Cell[BoxData[
 TagBox[GridBox[{
    {"\<\"\\!\\(TraditionalForm\\`n\\)\"\>", 
     ItemBox["\<\"\\!\\(TraditionalForm\\`\\*SubscriptBox[\\(b\\), \
\\(n\\)]\\)\"\>",
      Alignment->Center,
      StripOnInput->False]},
    {"0", "0"},
    {"1", "1"},
    {"2", "1"},
    {"3", "11"},
    {"4", "13"},
    {"5", "107"},
    {"6", "133"},
    {"7", "995"},
    {"8", "1261"},
    {"9", "9083"},
    {"10", "11605"},
    {"11", "82259"},
    {"12", "105469"}
   },
   AutoDelete->False,
   BaseStyle->{FontFamily -> "Times"},
   GridBoxAlignment->{"Columns" -> {Right, Right}, "Rows" -> {{Bottom}}},
   GridBoxDividers->{"Columns" -> {True, True, True}, "Rows" -> {True, True}},
   
   GridBoxFrame->{"ColumnsIndexed" -> {{{1, -1}, {1, -1}} -> True}},
   GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
   GridBoxSpacings->{"Columns" -> {{2}}, "Rows" -> {{0.5}}}],
  "Grid"]], "Output",ExpressionUUID->"63387c39-6e86-4b98-977d-c0d13590d822"]
}, {2}]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(TraditionalForm\`n\)\>\"", ",", "\"\<=\>\"", ",", "n"}], 
          "}"}], "]"}]}], ",", 
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(TraditionalForm\`\*SubscriptBox[\(b\), \(n\)]\)\>\"", ",", 
           "\"\<=\>\"", ",", 
           RowBox[{
            FractionBox["1", "15"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", 
               RowBox[{"(", 
                RowBox[{"2", " ", 
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"-", "3"}], ")"}], "n"]}], ")"}]}], "-", 
              RowBox[{"3", " ", 
               SuperscriptBox["2", "n"]}], "+", 
              RowBox[{"5", " ", 
               SuperscriptBox["3", "n"]}]}], ")"}]}]}], "}"}], "]"}]}]}], 
      "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "0", ",", "\"\<\>\""}], "}"}], ",", "0", ",", 
     "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<PlayPauseButton\>\"", ",", "\"\<ResetButton\>\""}], 
       "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "10"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}], ",", 
   RowBox[{"BaseStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"FontFamily", "\[Rule]", "\"\<Times\>\""}], "}"}]}]}], 
  "]"}]], "Input",ExpressionUUID->"edbf0255-dec5-4eb2-8a0e-ee51939716d8"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 0, ""}, 0, 
      DirectedInfinity[1], 1}}, Typeset`size$$ = {
    61., {21.587158203125, 33.412841796875}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`n$19047$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$19047$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Column[{
         DisplayForm[
          RowBox[{"\!\(TraditionalForm\`n\)", "=", $CellContext`n$$}]], 
         DisplayForm[
          
          RowBox[{"\!\(TraditionalForm\`\*SubscriptBox[\(b\), \(n\)]\)", 
            "=", (1/15) (-(2 (-3)^$CellContext`n$$) - 3 2^$CellContext`n$$ + 
             5 3^$CellContext`n$$)}]]}, Alignment -> "="], 
      "Specifications" :> {{{$CellContext`n$$, 0, ""}, 0, 
         DirectedInfinity[1], 1, 
         AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
         AnimationRate -> 10, AnimationRunning -> False, 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       BaseStyle -> {FontFamily -> "Times"}, ControlType -> Animator, 
        AppearanceElements -> None, DefaultBaseStyle -> "Animate", 
        DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> True, 
        ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{112., {63., 75.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False,
   FontFamily->"Times"],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"208218d9-\
1c85-49c5-8e55-00d8e59bf916"]
}, {2}]],

Cell[TextData[{
 "Il rapporto fra i termini successivi della successione ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["b", "n"], TraditionalForm]],ExpressionUUID->
  "84bf9ae2-1c63-4abf-8f55-ed903a005eae"],
 ":"
}], "Text",ExpressionUUID->"ca85c9e5-20f6-4aef-a3b4-3071fc9cddb5"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Grid", "[", 
  RowBox[{
   RowBox[{"Prepend", "[", 
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"n", ",", 
         RowBox[{
          FractionBox["1", "15"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{"(", 
              RowBox[{"2", " ", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{"-", "3"}], ")"}], "n"]}], ")"}]}], "-", 
            RowBox[{"3", " ", 
             SuperscriptBox["2", "n"]}], "+", 
            RowBox[{"5", " ", 
             SuperscriptBox["3", "n"]}]}], ")"}]}], ",", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"n", "\[LessEqual]", "0"}], ",", "\"\<\>\"", ",", 
           RowBox[{"(", 
            FractionBox[
             RowBox[{
              FractionBox["1", "15"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", 
                 RowBox[{"(", 
                  RowBox[{"2", " ", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "3"}], ")"}], "n"]}], ")"}]}], "-", 
                RowBox[{"3", " ", 
                 SuperscriptBox["2", "n"]}], "+", 
                RowBox[{"5", " ", 
                 SuperscriptBox["3", "n"]}]}], ")"}]}], 
             RowBox[{
              FractionBox["1", "15"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", 
                 RowBox[{"(", 
                  RowBox[{"2", " ", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "3"}], ")"}], 
                    RowBox[{"n", "+", "1"}]]}], ")"}]}], "-", 
                RowBox[{"3", " ", 
                 SuperscriptBox["2", 
                  RowBox[{"n", "+", "1"}]]}], "+", 
                RowBox[{"5", " ", 
                 SuperscriptBox["3", 
                  RowBox[{"n", "+", "1"}]]}]}], ")"}]}]], ")"}]}], "]"}], ",", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"n", "\[LessEqual]", "0"}], ",", "\"\<\>\"", ",", 
           RowBox[{"N", "[", 
            RowBox[{"(", 
             FractionBox[
              RowBox[{
               FractionBox["1", "15"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  RowBox[{"(", 
                   RowBox[{"2", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "3"}], ")"}], "n"]}], ")"}]}], "-", 
                 RowBox[{"3", " ", 
                  SuperscriptBox["2", "n"]}], "+", 
                 RowBox[{"5", " ", 
                  SuperscriptBox["3", "n"]}]}], ")"}]}], 
              RowBox[{
               FractionBox["1", "15"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  RowBox[{"(", 
                   RowBox[{"2", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "3"}], ")"}], 
                    RowBox[{"n", "+", "1"}]]}], ")"}]}], "-", 
                 RowBox[{"3", " ", 
                  SuperscriptBox["2", 
                   RowBox[{"n", "+", "1"}]]}], "+", 
                 RowBox[{"5", " ", 
                  SuperscriptBox["3", 
                   RowBox[{"n", "+", "1"}]]}]}], ")"}]}]], ")"}], "]"}]}], 
          "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"n", ",", "0", ",", "12"}], "}"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "\"\<\!\(TraditionalForm\`n\)\>\"", ",", 
       "\"\<\!\(TraditionalForm\`\*SubscriptBox[\(b\), \(n\)]\)\>\"", ",", 
       RowBox[{"Item", "[", 
        RowBox[{
        "\"\<\!\(TraditionalForm\`\*SubscriptBox[\(b\), \
\(n\)]/\*SubscriptBox[\(b\), \(n + 1\)]\)\>\"", ",", 
         RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", 
       "SpanFromLeft"}], "}"}]}], "]"}], ",", 
   RowBox[{"Frame", "\[Rule]", "True"}], ",", 
   RowBox[{"Dividers", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"True", ",", "True", ",", "True", ",", "True"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"True", ",", "True"}], "}"}]}], "}"}]}], ",", 
   RowBox[{"Alignment", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"Right", ",", "Right", ",", "Center", ",", "Left"}], "}"}], 
      ",", "Center"}], "}"}]}], ",", 
   RowBox[{"Spacings", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"2", ",", ".5"}], "}"}]}], ",", 
   RowBox[{"BaseStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"FontFamily", "\[Rule]", "\"\<Times\>\""}], "}"}]}]}], 
  "]"}]], "Input",ExpressionUUID->"87bd1ae0-e4ad-42b1-8eee-2b7d8c9db40e"],

Cell[BoxData[
 TagBox[GridBox[{
    {"\<\"\\!\\(TraditionalForm\\`n\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\*SubscriptBox[\\(b\\), \\(n\\)]\\)\"\>", 
     ItemBox["\<\"\\!\\(TraditionalForm\\`\\*SubscriptBox[\\(b\\), \
\\(n\\)]/\\*SubscriptBox[\\(b\\), \\(n + 1\\)]\\)\"\>",
      Alignment->Center,
      StripOnInput->False], "\[SpanFromLeft]"},
    {"0", "0", "\<\"\"\>", "\<\"\"\>"},
    {"1", "1", "1", "1.`"},
    {"2", "1", 
     FractionBox["1", "11"], "0.09090909090909091`"},
    {"3", "11", 
     FractionBox["11", "13"], "0.8461538461538461`"},
    {"4", "13", 
     FractionBox["13", "107"], "0.12149532710280374`"},
    {"5", "107", 
     FractionBox["107", "133"], "0.8045112781954887`"},
    {"6", "133", 
     FractionBox["133", "995"], "0.13366834170854272`"},
    {"7", "995", 
     FractionBox["995", "1261"], "0.789056304520222`"},
    {"8", "1261", 
     FractionBox["1261", "9083"], "0.13883078278101948`"},
    {"9", "9083", 
     FractionBox["9083", "11605"], "0.7826798793623438`"},
    {"10", "11605", 
     FractionBox["11605", "82259"], "0.14107878773143365`"},
    {"11", "82259", 
     FractionBox["82259", "105469"], "0.7799353364495729`"},
    {"12", "105469", 
     FractionBox["105469", "742379"], "0.14206894322172367`"}
   },
   AutoDelete->False,
   BaseStyle->{FontFamily -> "Times"},
   GridBoxAlignment->{
    "Columns" -> {Right, Right, Center, Left}, "Rows" -> {{Center}}},
   GridBoxDividers->{
    "Columns" -> {True, True, True, True}, "Rows" -> {True, True}},
   GridBoxFrame->{"ColumnsIndexed" -> {{{1, -1}, {1, -1}} -> True}},
   GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
   GridBoxSpacings->{"Columns" -> {{2}}, "Rows" -> {{0.5}}}],
  "Grid"]], "Output",ExpressionUUID->"850bbb50-d0c6-4ad8-9a94-fe2e871b87a0"]
}, {2}]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(TraditionalForm\`\(TraditionalForm\`n\)\)\>\"", ",", 
           "\"\<=\>\"", ",", "n"}], "}"}], "]"}]}], ",", 
       RowBox[{"DisplayForm", "@", 
        RowBox[{"RowBox", "[", 
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(TraditionalForm\`\(TraditionalForm\`\*FractionBox[\
SubscriptBox[\(b\), \(n\)], \(TraditionalForm\`\*SubscriptBox[\(b\), \(n + \
1\)]\)]\)\)\>\"", ",", "\"\<=\>\"", ",", 
           RowBox[{"N", "[", 
            RowBox[{
             FractionBox[
              RowBox[{
               FractionBox["1", "15"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  RowBox[{"(", 
                   RowBox[{"2", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "3"}], ")"}], "n"]}], ")"}]}], "-", 
                 RowBox[{"3", " ", 
                  SuperscriptBox["2", "n"]}], "+", 
                 RowBox[{"5", " ", 
                  SuperscriptBox["3", "n"]}]}], ")"}]}], 
              RowBox[{
               FractionBox["1", "15"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  RowBox[{"(", 
                   RowBox[{"2", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "3"}], ")"}], 
                    RowBox[{"n", "+", "1"}]]}], ")"}]}], "-", 
                 RowBox[{"3", " ", 
                  SuperscriptBox["2", 
                   RowBox[{"n", "+", "1"}]]}], "+", 
                 RowBox[{"5", " ", 
                  SuperscriptBox["3", 
                   RowBox[{"n", "+", "1"}]]}]}], ")"}]}]], ",", "1000"}], 
            "]"}]}], "}"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "0", ",", "\"\<\>\""}], "}"}], ",", "1", ",", 
     "Infinity", ",", "1", ",", 
     RowBox[{"AppearanceElements", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
       "\"\<PlayPauseButton\>\"", ",", "\"\<StepRightButton\>\"", ",", 
        "\"\<ResetButton\>\""}], "}"}]}]}], "}"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "10"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}], ",", 
   RowBox[{"BaseStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"FontFamily", "\[Rule]", "\"\<Times\>\""}], "}"}]}]}], 
  "]"}]], "Input",ExpressionUUID->"8dd44846-6bb5-4077-9177-1f9153c73c97"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 0, ""}, 1, 
      DirectedInfinity[1], 1}}, Typeset`size$$ = {
    88., {31.087158203125, 42.912841796875}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`n$19165$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$19165$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Column[{
         DisplayForm[
          
          RowBox[{"\!\(TraditionalForm\`\(TraditionalForm\`n\)\)", 
            "=", $CellContext`n$$}]], 
         DisplayForm[
          
          RowBox[{"\!\(TraditionalForm\`\(TraditionalForm\`\*FractionBox[\
SubscriptBox[\(b\), \(n\)], \(TraditionalForm\`\*SubscriptBox[\(b\), \(n + \
1\)]\)]\)\)", "=", 
            
            N[(1/15) ((-(2 (-3)^$CellContext`n$$) - 3 2^$CellContext`n$$ + 
               5 3^$CellContext`n$$)/((1/
               15) (-(2 (-3)^($CellContext`n$$ + 1)) - 3 
               2^($CellContext`n$$ + 1) + 5 3^($CellContext`n$$ + 1)))), 
             1000]}]]}, Alignment -> "="], 
      "Specifications" :> {{{$CellContext`n$$, 0, ""}, 1, 
         DirectedInfinity[1], 1, 
         AppearanceElements -> {
          "PlayPauseButton", "StepRightButton", "ResetButton"}, AnimationRate -> 
         10, AnimationRunning -> False, 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       BaseStyle -> {FontFamily -> "Times"}, ControlType -> Animator, 
        AppearanceElements -> None, DefaultBaseStyle -> "Animate", 
        DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> True, 
        ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{139., {72., 84.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False,
   FontFamily->"Times"],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"ddedb58d-\
e883-40e0-aeea-bcc0546155d3"]
}, {2}]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"18c5c055-4685-4f28-b983-b89bd85596e3"],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"sen", " ", "x"}], "x"], TraditionalForm]],ExpressionUUID->
  "a14abaf1-3099-45c3-84a6-abe3527fc0b1"],
 " quando ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]],ExpressionUUID->
  "0680baf7-9521-4f19-86e5-f1d17acc70ad"],
 " \[EGrave] vicino a 0"
}], "Section",ExpressionUUID->"4d297b99-75a2-41e6-abf6-fc5877bdc4a2"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"DisplayForm", "@", 
       RowBox[{"RowBox", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "\[Delta]"}], ",", "\"\<\[LessEqual]x\[LessEqual]\>\"",
           ",", "\[Delta]"}], "}"}], "]"}]}], ",", 
      RowBox[{"DisplayForm", "@", 
       RowBox[{"RowBox", "[", 
        RowBox[{"{", 
         RowBox[{"\"\<x\>\"", ",", "\"\<=\>\"", ",", 
          RowBox[{"NumberForm", "[", 
           RowBox[{
            RowBox[{"N", "[", 
             RowBox[{
              RowBox[{"Rationalize", "[", 
               RowBox[{"x", ",", 
                RowBox[{"\[Delta]", "/", "40"}]}], "]"}], ",", "50"}], "]"}], 
            ",", 
            RowBox[{"{", 
             RowBox[{"10", ",", "9"}], "}"}], ",", 
            RowBox[{"NumberSigns", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"\"\<-\>\"", ",", "\"\<+\>\""}], "}"}]}], ",", 
            RowBox[{"ExponentFunction", "\[Rule]", "Identity"}]}], "]"}]}], 
         "}"}], "]"}]}], ",", 
      RowBox[{"DisplayForm", "@", 
       RowBox[{"RowBox", "[", 
        RowBox[{"{", 
         RowBox[{
         "\"\<\!\(TraditionalForm\`\(TraditionalForm\`\*FractionBox[\(sen \
\((x)\)\), \(TraditionalForm\`x\)]\)\)\>\"", ",", "\"\<=\>\"", ",", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Rationalize", "[", 
              RowBox[{"x", ",", 
               RowBox[{"\[Delta]", "/", "40"}]}], "]"}], "\[Equal]", "0"}], 
            ",", 
            RowBox[{"Style", "[", 
             RowBox[{
             "\"\<non definito (0/0)                                          \
            \>\"", ",", "Red"}], "]"}], ",", 
            RowBox[{"N", "[", 
             RowBox[{
              FractionBox[
               RowBox[{"Sin", "[", 
                RowBox[{"Rationalize", "[", 
                 RowBox[{"x", ",", 
                  RowBox[{"\[Delta]", "/", "40"}]}], "]"}], "]"}], 
               RowBox[{"Rationalize", "[", 
                RowBox[{"x", ",", 
                 RowBox[{"\[Delta]", "/", "40"}]}], "]"}]], ",", "40"}], 
             "]"}]}], "]"}]}], "}"}], "]"}]}]}], "}"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"\[Delta]", "/", "2"}], ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<\!\(TraditionalForm\`x \[Element] \([\(-\[Delta]\), \
\[Delta]]\)\)\>\"", ",", "20"}], "]"}]}], "}"}], ",", 
     RowBox[{"-", "\[Delta]"}], ",", "\[Delta]", ",", 
     RowBox[{"ControlType", "\[Rule]", "Animator"}], ",", 
     RowBox[{"AnimationDirection", "\[Rule]", "ForwardBackward"}], ",", 
     RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Delta]", ",", "1", ",", 
       RowBox[{"Style", "[", 
        RowBox[{"\"\<\[Delta] =\>\"", ",", "20"}], "]"}]}], "}"}], ",", 
     RowBox[{"Table", "[", 
      RowBox[{
       SuperscriptBox["10", 
        RowBox[{"-", "n"}]], ",", 
       RowBox[{"{", 
        RowBox[{"n", ",", "0", ",", "10"}], "}"}]}], "]"}]}], "}"}], ",", 
   RowBox[{"TrackedSymbols", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{"x", ",", "\[Delta]"}], "}"}]}]}], "]"}]], "Input",ExpressionUUID\
->"0b869450-2c4a-46f1-b3d7-7ac9a1f87967"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`x$$ = -8.155898179040832*^-11, \
$CellContext`\[Delta]$$ = 1, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`x$$], Rational[1, 2] $CellContext`\[Delta]$$, 
         Style[
         "\!\(TraditionalForm\`x \[Element] \([\(-\[Delta]\), \[Delta]]\)\)", 
          20]}, 
        Dynamic[-$CellContext`\[Delta]$$], 
        Dynamic[$CellContext`\[Delta]$$]}, {{
         Hold[$CellContext`\[Delta]$$], 1, 
         Style["\[Delta] =", 20]}, {1, 
         Rational[1, 10], 
         Rational[1, 100], 
         Rational[1, 1000], 
         Rational[1, 10000], 
         Rational[1, 100000], 
         Rational[1, 1000000], 
         Rational[1, 10000000], 
         Rational[1, 100000000], 
         Rational[1, 1000000000], 
         Rational[1, 10000000000]}}}, Typeset`size$$ = {
      571., {43.587158203125, 55.412841796875}}, Typeset`update$$ = 0, 
      Typeset`initDone$$, Typeset`skipInitDone$$ = 
      True, $CellContext`x$46261$$ = 0, $CellContext`\[Delta]$46262$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, 
        "Variables" :> {$CellContext`x$$ = 
          Rational[1, 2] $CellContext`\[Delta]$$, $CellContext`\[Delta]$$ = 
          1}, "ControllerVariables" :> {
          Hold[$CellContext`x$$, $CellContext`x$46261$$, 0], 
          Hold[$CellContext`\[Delta]$$, $CellContext`\[Delta]$46262$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> Column[{
           DisplayForm[
            
            RowBox[{-$CellContext`\[Delta]$$, 
              "\[LessEqual]x\[LessEqual]", $CellContext`\[Delta]$$}]], 
           DisplayForm[
            RowBox[{"x", "=", 
              NumberForm[
               N[
                Rationalize[$CellContext`x$$, $CellContext`\[Delta]$$/40], 
                50], {10, 9}, NumberSigns -> {"-", "+"}, ExponentFunction -> 
               Identity]}]], 
           DisplayForm[
            
            RowBox[{"\!\(TraditionalForm\`\(TraditionalForm\`\*FractionBox[\(\
sen \((x)\)\), \(TraditionalForm\`x\)]\)\)", "=", 
              If[
              Rationalize[$CellContext`x$$, $CellContext`\[Delta]$$/40] == 0, 
               
               Style[
               "non definito (0/0)                                            \
          ", Red], 
               N[Sin[
                  Rationalize[$CellContext`x$$, $CellContext`\[Delta]$$/40]]/
                Rationalize[$CellContext`x$$, $CellContext`\[Delta]$$/40], 
                40]]}]]}], 
        "Specifications" :> {{{$CellContext`x$$, 
            Rational[1, 2] $CellContext`\[Delta]$$, 
            Style[
            "\!\(TraditionalForm\`x \[Element] \([\(-\[Delta]\), \
\[Delta]]\)\)", 20]}, 
           Dynamic[-$CellContext`\[Delta]$$], 
           Dynamic[$CellContext`\[Delta]$$], ControlType -> Animator, 
           AnimationDirection -> ForwardBackward, AnimationRunning -> 
           False}, {{$CellContext`\[Delta]$$, 1, 
            Style["\[Delta] =", 20]}, {1, 
            Rational[1, 10], 
            Rational[1, 100], 
            Rational[1, 1000], 
            Rational[1, 10000], 
            Rational[1, 100000], 
            Rational[1, 1000000], 
            Rational[1, 10000000], 
            Rational[1, 100000000], 
            Rational[1, 1000000000], 
            Rational[1, 10000000000]}}}, 
        "Options" :> {
         TrackedSymbols :> {$CellContext`x$$, $CellContext`\[Delta]$$}}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{622., {119., 130.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Manipulate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",ExpressionU\
UID->"12d5e5ca-5835-4bea-b21b-3ca2f83b0f84"]
}, {2}]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"b9218361-c44c-4c53-9e57-f8cdfec9b667"],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{
     SuperscriptBox["2", "x"], "-", "1"}], "x"], TraditionalForm]],
  ExpressionUUID->"2bfd9377-a83f-4c12-ad86-1a08d61c913c"],
 " quando ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]],ExpressionUUID->
  "6c9af58b-42fe-49d9-968d-257acf74d13d"],
 " \[EGrave] vicino a 0"
}], "Section",ExpressionUUID->"334680ee-cc14-4b08-8d07-6061806acd09"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"DisplayForm", "@", 
       RowBox[{"RowBox", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "\[Delta]"}], ",", "\"\<\[LessEqual]x\[LessEqual]\>\"",
           ",", "\[Delta]"}], "}"}], "]"}]}], ",", 
      RowBox[{"DisplayForm", "@", 
       RowBox[{"RowBox", "[", 
        RowBox[{"{", 
         RowBox[{"\"\<x\>\"", ",", "\"\<=\>\"", ",", 
          RowBox[{"NumberForm", "[", 
           RowBox[{
            RowBox[{"N", "[", 
             RowBox[{
              RowBox[{"Rationalize", "[", 
               RowBox[{"x", ",", 
                RowBox[{"\[Delta]", "/", "40"}]}], "]"}], ",", "50"}], "]"}], 
            ",", 
            RowBox[{"{", 
             RowBox[{"10", ",", "9"}], "}"}], ",", 
            RowBox[{"NumberSigns", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"\"\<-\>\"", ",", "\"\<+\>\""}], "}"}]}], ",", 
            RowBox[{"ExponentFunction", "\[Rule]", "Identity"}]}], "]"}]}], 
         "}"}], "]"}]}], ",", 
      RowBox[{"DisplayForm", "@", 
       RowBox[{"RowBox", "[", 
        RowBox[{"{", 
         RowBox[{
         "\"\<\!\(TraditionalForm\`\(TraditionalForm\`\*FractionBox[\(\*\
SuperscriptBox[\(2\), \(x\)] - 1\), \(TraditionalForm\`x\)]\)\)\>\"", ",", 
          "\"\<=\>\"", ",", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Rationalize", "[", 
              RowBox[{"x", ",", 
               RowBox[{"\[Delta]", "/", "40"}]}], "]"}], "\[Equal]", "0"}], 
            ",", 
            RowBox[{"Style", "[", 
             RowBox[{"\"\<non definito (0/0)\>\"", ",", "Red"}], "]"}], ",", 
            RowBox[{"N", "[", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   SuperscriptBox["2", "#"], "-", "1"}], ")"}], "/", "#"}], 
                "&"}], "[", 
               RowBox[{"Rationalize", "[", 
                RowBox[{"x", ",", 
                 RowBox[{"\[Delta]", "/", "40"}]}], "]"}], "]"}], ",", "40"}],
              "]"}]}], "]"}]}], "}"}], "]"}]}]}], "}"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"\[Delta]", "/", "2"}], ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<\!\(TraditionalForm\`x \[Element] \([\(-\[Delta]\), \
\[Delta]]\)\)\>\"", ",", "20"}], "]"}]}], "}"}], ",", 
     RowBox[{"-", "\[Delta]"}], ",", "\[Delta]", ",", 
     RowBox[{"ControlType", "\[Rule]", "Animator"}], ",", 
     RowBox[{"AnimationDirection", "\[Rule]", "ForwardBackward"}], ",", 
     RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Delta]", ",", "1", ",", 
       RowBox[{"Style", "[", 
        RowBox[{"\"\<\[Delta] =\>\"", ",", "20"}], "]"}]}], "}"}], ",", 
     RowBox[{"Table", "[", 
      RowBox[{
       SuperscriptBox["10", 
        RowBox[{"-", "n"}]], ",", 
       RowBox[{"{", 
        RowBox[{"n", ",", "0", ",", "10"}], "}"}]}], "]"}]}], "}"}]}], 
  "]"}]], "Input",ExpressionUUID->"9ddbf096-3252-40ce-8665-ef6053bf6f2c"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`x$$ = 
      3.337841114614548*^-11, $CellContext`\[Delta]$$ = 1, Typeset`show$$ = 
      True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`x$$], Rational[1, 2] $CellContext`\[Delta]$$, 
         Style[
         "\!\(TraditionalForm\`x \[Element] \([\(-\[Delta]\), \[Delta]]\)\)", 
          20]}, 
        Dynamic[-$CellContext`\[Delta]$$], 
        Dynamic[$CellContext`\[Delta]$$]}, {{
         Hold[$CellContext`\[Delta]$$], 1, 
         Style["\[Delta] =", 20]}, {1, 
         Rational[1, 10], 
         Rational[1, 100], 
         Rational[1, 1000], 
         Rational[1, 10000], 
         Rational[1, 100000], 
         Rational[1, 1000000], 
         Rational[1, 10000000], 
         Rational[1, 100000000], 
         Rational[1, 1000000000], 
         Rational[1, 10000000000]}}}, Typeset`size$$ = {
      245., {44.587158203125, 56.412841796875}}, Typeset`update$$ = 0, 
      Typeset`initDone$$, Typeset`skipInitDone$$ = 
      True, $CellContext`x$46120$$ = 0, $CellContext`\[Delta]$46121$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, 
        "Variables" :> {$CellContext`x$$ = 
          Rational[1, 2] $CellContext`\[Delta]$$, $CellContext`\[Delta]$$ = 
          1}, "ControllerVariables" :> {
          Hold[$CellContext`x$$, $CellContext`x$46120$$, 0], 
          Hold[$CellContext`\[Delta]$$, $CellContext`\[Delta]$46121$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> Column[{
           DisplayForm[
            
            RowBox[{-$CellContext`\[Delta]$$, 
              "\[LessEqual]x\[LessEqual]", $CellContext`\[Delta]$$}]], 
           DisplayForm[
            RowBox[{"x", "=", 
              NumberForm[
               N[
                Rationalize[$CellContext`x$$, $CellContext`\[Delta]$$/40], 
                50], {10, 9}, NumberSigns -> {"-", "+"}, ExponentFunction -> 
               Identity]}]], 
           DisplayForm[
            
            RowBox[{"\!\(TraditionalForm\`\(TraditionalForm\`\*FractionBox[\(\
\*SuperscriptBox[\(2\), \(x\)] - 1\), \(TraditionalForm\`x\)]\)\)", "=", 
              If[
              Rationalize[$CellContext`x$$, $CellContext`\[Delta]$$/40] == 0, 
               
               Style["non definito (0/0)", Red], 
               N[
                ((2^# - 1)/#& )[
                 Rationalize[$CellContext`x$$, $CellContext`\[Delta]$$/40]], 
                40]]}]]}], 
        "Specifications" :> {{{$CellContext`x$$, 
            Rational[1, 2] $CellContext`\[Delta]$$, 
            Style[
            "\!\(TraditionalForm\`x \[Element] \([\(-\[Delta]\), \
\[Delta]]\)\)", 20]}, 
           Dynamic[-$CellContext`\[Delta]$$], 
           Dynamic[$CellContext`\[Delta]$$], ControlType -> Animator, 
           AnimationDirection -> ForwardBackward, AnimationRunning -> 
           False}, {{$CellContext`\[Delta]$$, 1, 
            Style["\[Delta] =", 20]}, {1, 
            Rational[1, 10], 
            Rational[1, 100], 
            Rational[1, 1000], 
            Rational[1, 10000], 
            Rational[1, 100000], 
            Rational[1, 1000000], 
            Rational[1, 10000000], 
            Rational[1, 100000000], 
            Rational[1, 1000000000], 
            Rational[1, 10000000000]}}}, "Options" :> {}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{458., {120., 131.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Manipulate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",ExpressionU\
UID->"56e9798f-b723-470e-bcda-497b69fbcbed"]
}, {2}]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->
  "SlideShowHeader",ExpressionUUID->"e14d7125-3dce-43f6-adc8-7eb039597224"],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{
     SuperscriptBox["2", "x"], "-", "x", "-", "1"}], 
    RowBox[{"x", "-", "1"}]], TraditionalForm]],ExpressionUUID->
  "33f58dd5-bea4-4e36-82ac-a85b137fed28"],
 " quando ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]],ExpressionUUID->
  "c2aaeb25-260b-40b9-a340-ffd6251e637b"],
 " \[EGrave] vicino a 1"
}], "Section",ExpressionUUID->"011ffc3c-bee9-418e-97d8-c24536706c95"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"DisplayForm", "@", 
       RowBox[{"RowBox", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "\[Delta]"}], ",", 
          "\"\<\[LessEqual]x-1\[LessEqual]\>\"", ",", "\[Delta]"}], "}"}], 
        "]"}]}], ",", 
      RowBox[{"DisplayForm", "@", 
       RowBox[{"RowBox", "[", 
        RowBox[{"{", 
         RowBox[{"\"\<x\>\"", ",", "\"\<=\>\"", ",", 
          RowBox[{"NumberForm", "[", 
           RowBox[{
            RowBox[{"N", "[", 
             RowBox[{"x", ",", "50"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"10", ",", "9"}], "}"}], ",", 
            RowBox[{"NumberSigns", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"\"\<-\>\"", ",", "\"\<+\>\""}], "}"}]}], ",", 
            RowBox[{"ExponentFunction", "\[Rule]", "Identity"}]}], "]"}]}], 
         "}"}], "]"}]}], ",", 
      RowBox[{"DisplayForm", "@", 
       RowBox[{"RowBox", "[", 
        RowBox[{"{", 
         RowBox[{
         "\"\<\!\(TraditionalForm\`\(TraditionalForm\`\*FractionBox[\(\*\
SuperscriptBox[\(2\), \(x\)] - x - 1\), \(\(TraditionalForm\`x\) - 1\)]\)\)\>\
\"", ",", "\"\<=\>\"", ",", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"x", "-", "1"}], "\[Equal]", "0"}], ",", 
            RowBox[{"Style", "[", 
             RowBox[{"\"\<non definito (0/0)\>\"", ",", "Red"}], "]"}], ",", 
            RowBox[{"NumberForm", "[", 
             RowBox[{
              RowBox[{"N", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox["2", "#"], "-", "#", "-", "1"}], ")"}], 
                   "/", 
                   RowBox[{"(", 
                    RowBox[{"#", "-", "1"}], ")"}]}], "&"}], "[", 
                 RowBox[{"Rationalize", "[", 
                  RowBox[{"x", ",", 
                   RowBox[{"\[Delta]", "/", "41"}]}], "]"}], "]"}], ",", 
                "40"}], "]"}], ",", "50"}], "]"}]}], "]"}]}], "}"}], 
        "]"}]}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"1", "+", 
        RowBox[{"\[Delta]", "/", "2"}]}], ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<\!\(TraditionalForm\`x \[Element] \([1 - \[Delta], 1 + \[Delta]]\
\)\)\>\"", ",", "20"}], "]"}]}], "}"}], ",", 
     RowBox[{"1", "-", "\[Delta]"}], ",", 
     RowBox[{"1", "+", "\[Delta]"}], ",", 
     RowBox[{"\[Delta]", "/", "41"}], ",", 
     RowBox[{"ControlType", "\[Rule]", "Animator"}], ",", 
     RowBox[{"AnimationDirection", "\[Rule]", "ForwardBackward"}], ",", 
     RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Delta]", ",", "1", ",", 
       RowBox[{"Style", "[", 
        RowBox[{"\"\<\[Delta] =\>\"", ",", "20"}], "]"}]}], "}"}], ",", 
     RowBox[{"Table", "[", 
      RowBox[{
       SuperscriptBox["10", 
        RowBox[{"-", "n"}]], ",", 
       RowBox[{"{", 
        RowBox[{"n", ",", "0", ",", "7"}], "}"}]}], "]"}]}], "}"}]}], 
  "]"}]], "Input",ExpressionUUID->"afcf465b-ed57-4dd0-9d10-f22201917f09"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`x$$ = 1., $CellContext`\[Delta]$$ = 1, 
      Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
      Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ =
       1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`x$$], 1 + Rational[1, 2] $CellContext`\[Delta]$$, 
         Style[
         "\!\(TraditionalForm\`x \[Element] \([1 - \[Delta], 1 + \
\[Delta]]\)\)", 20]}, 
        Dynamic[1 - $CellContext`\[Delta]$$], 
        Dynamic[1 + $CellContext`\[Delta]$$], 
        Dynamic[$CellContext`\[Delta]$$/41]}, {{
         Hold[$CellContext`\[Delta]$$], 1, 
         Style["\[Delta] =", 20]}, {1, 
         Rational[1, 10], 
         Rational[1, 100], 
         Rational[1, 1000], 
         Rational[1, 10000], 
         Rational[1, 100000], 
         Rational[1, 1000000], 
         Rational[1, 10000000]}}}, Typeset`size$$ = {
      269., {47.087158203125, 58.912841796875}}, Typeset`update$$ = 0, 
      Typeset`initDone$$, Typeset`skipInitDone$$ = 
      True, $CellContext`x$46212$$ = 0, $CellContext`\[Delta]$46213$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, 
        "Variables" :> {$CellContext`x$$ = 
          1 + Rational[1, 2] $CellContext`\[Delta]$$, $CellContext`\[Delta]$$ = 
          1}, "ControllerVariables" :> {
          Hold[$CellContext`x$$, $CellContext`x$46212$$, 0], 
          Hold[$CellContext`\[Delta]$$, $CellContext`\[Delta]$46213$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> Column[{
           DisplayForm[
            
            RowBox[{-$CellContext`\[Delta]$$, 
              "\[LessEqual]x-1\[LessEqual]", $CellContext`\[Delta]$$}]], 
           DisplayForm[
            RowBox[{"x", "=", 
              NumberForm[
               N[$CellContext`x$$, 50], {10, 9}, NumberSigns -> {"-", "+"}, 
               ExponentFunction -> Identity]}]], 
           DisplayForm[
            
            RowBox[{"\!\(TraditionalForm\`\(TraditionalForm\`\*FractionBox[\(\
\*SuperscriptBox[\(2\), \(x\)] - x - 1\), \(\(TraditionalForm\`x\) - \
1\)]\)\)", "=", 
              If[$CellContext`x$$ - 1 == 0, 
               Style["non definito (0/0)", Red], 
               NumberForm[
                N[
                 ((2^# - # - 1)/(# - 1)& )[
                  Rationalize[$CellContext`x$$, $CellContext`\[Delta]$$/41]], 
                 40], 50]]}]]}], 
        "Specifications" :> {{{$CellContext`x$$, 1 + 
            Rational[1, 2] $CellContext`\[Delta]$$, 
            Style[
            "\!\(TraditionalForm\`x \[Element] \([1 - \[Delta], 1 + \[Delta]]\
\)\)", 20]}, 
           Dynamic[1 - $CellContext`\[Delta]$$], 
           Dynamic[1 + $CellContext`\[Delta]$$], 
           Dynamic[$CellContext`\[Delta]$$/41], ControlType -> Animator, 
           AnimationDirection -> ForwardBackward, AnimationRunning -> 
           False}, {{$CellContext`\[Delta]$$, 1, 
            Style["\[Delta] =", 20]}, {1, 
            Rational[1, 10], 
            Rational[1, 100], 
            Rational[1, 1000], 
            Rational[1, 10000], 
            Rational[1, 100000], 
            Rational[1, 1000000], 
            Rational[1, 10000000]}}}, "Options" :> {}, "DefaultOptions" :> {}],
       ImageSizeCache->{503., {123., 134.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Manipulate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",ExpressionU\
UID->"7002811f-6a85-44e5-936d-b01fd5ecfe49"]
}, {2}]]
}, Open  ]]
}, Open  ]]
},
ScreenStyleEnvironment->"SlideShow",
WindowSize->{808, 911},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
PrivateNotebookOptions->{"VersionedStylesheet"->{"Default.nb"[8.] -> False}},
ShowCellBracket->Automatic,
Deployed->True,
TaggingRules->{
 "SlideshowSettings" -> {
   "WindowElements" -> {
     "VerticalScrollBar", "StatusArea", "MagnificationPopUp", 
      "HorizontalScrollBar"}, "Toolbar" -> True}},
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.3 for Mac OS X x86 (32-bit, 64-bit Kernel) (March 5, \
2018)",
StyleDefinitions->"Default_8.0.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "SlideShowHeader"->{
  Cell[1510, 35, 122, 2, 1, "SlideShowNavigationBar",ExpressionUUID->"23fdd1ca-c9bf-456e-bdfb-bb610f0c99ce",
   CellTags->"SlideShowHeader"],
  Cell[2120, 58, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"b9c7ee0c-4619-41fe-96a0-3de0f517164c",
   CellTags->"SlideShowHeader"],
  Cell[5787, 155, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"caced0cc-5451-43c4-abee-2c1093f64a0d",
   CellTags->"SlideShowHeader"],
  Cell[9761, 260, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"5129e27c-d561-4b2a-b929-601a6aa5cfb2",
   CellTags->"SlideShowHeader"],
  Cell[13613, 363, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"4d46365b-d4e1-409f-aa8f-a36151ebbca0",
   CellTags->"SlideShowHeader"],
  Cell[17423, 465, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"37dda24b-7cd9-4834-be9e-ab64a94febb2",
   CellTags->"SlideShowHeader"],
  Cell[21623, 577, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"a04f3c01-76ad-4abd-bc43-006e2428455a",
   CellTags->"SlideShowHeader"],
  Cell[26020, 696, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"8bb2e9d3-92a8-4198-8b13-03188b87c5b9",
   CellTags->"SlideShowHeader"],
  Cell[31063, 829, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"851a9cf7-4e71-41d9-9cac-14b5aa121db4",
   CellTags->"SlideShowHeader"],
  Cell[36208, 965, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"8e71551a-057a-4dcf-8c00-f978dc3fa569",
   CellTags->"SlideShowHeader"],
  Cell[41471, 1111, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"b2b8f19d-0488-4fed-a69d-0c8aea7c6a48",
   CellTags->"SlideShowHeader"],
  Cell[50458, 1353, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"6190227d-f9d7-4cdc-ab78-39e2060db82c",
   CellTags->"SlideShowHeader"],
  Cell[60228, 1653, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"0c3e0706-a045-4853-a7ea-01dc19fdbeea",
   CellTags->"SlideShowHeader"],
  Cell[80432, 2196, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"3a997265-568f-417a-8e88-783d184d2ae5",
   CellTags->"SlideShowHeader"],
  Cell[101544, 2763, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"18c5c055-4685-4f28-b983-b89bd85596e3",
   CellTags->"SlideShowHeader"],
  Cell[110092, 2984, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"b9218361-c44c-4c53-9e57-f8cdfec9b667",
   CellTags->"SlideShowHeader"],
  Cell[118370, 3200, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"e14d7125-3dce-43f6-adc8-7eb039597224",
   CellTags->"SlideShowHeader"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"SlideShowHeader", 127237, 3431}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 122, 2, 1, "SlideShowNavigationBar",ExpressionUUID->"23fdd1ca-c9bf-456e-bdfb-bb610f0c99ce",
 CellTags->"SlideShowHeader"],
Cell[1635, 39, 137, 2, 131, "Input",ExpressionUUID->"6610ccc5-ba69-49e2-8f45-aa4159f1e6ab"],
Cell[CellGroupData[{
Cell[1797, 45, 137, 1, 224, "Title",ExpressionUUID->"5932a339-9980-45ee-8c8e-a9b7308ac38a"],
Cell[1937, 48, 134, 4, 73, "Text",ExpressionUUID->"470e6039-1ae1-479c-940d-13284f89ca2e"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[2120, 58, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"b9c7ee0c-4619-41fe-96a0-3de0f517164c",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[2267, 64, 261, 7, 114, "Section",ExpressionUUID->"70ed2ee6-2672-4528-823d-264e19786cc8"],
Cell[2531, 73, 376, 9, 73, "Text",ExpressionUUID->"af18e69f-c7b4-494c-a954-6086f2112720",
 CellOpen->False],
Cell[CellGroupData[{
Cell[2932, 86, 550, 13, 207, "Input",ExpressionUUID->"ae76bb4e-eaf7-4941-b732-13656b591195"],
Cell[3485, 101, 2244, 47, 307, "Output",ExpressionUUID->"78caf372-3222-4915-a0ba-7935275ebee8"]
}, {2}]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[5787, 155, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"caced0cc-5451-43c4-abee-2c1093f64a0d",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[5934, 161, 287, 8, 122, "Section",ExpressionUUID->"7fae3ada-b9ea-4136-a70d-607809727632"],
Cell[6224, 171, 99, 0, 44, "Text",ExpressionUUID->"6cbbc2a9-239c-4591-a51b-33d06b5e71ca"],
Cell[CellGroupData[{
Cell[6348, 175, 697, 18, 226, "Input",ExpressionUUID->"0d95080a-8406-441c-a990-9dd8a93ec6c1"],
Cell[7048, 195, 2372, 49, 294, "Output",ExpressionUUID->"08397908-39cc-4403-9849-ff644602f498"]
}, {2}]],
Cell[9432, 247, 280, 7, 48, "Text",ExpressionUUID->"3cd3b44a-aa88-4cb4-8ccb-aaaa190ade88"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[9761, 260, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"5129e27c-d561-4b2a-b929-601a6aa5cfb2",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[9908, 266, 287, 8, 117, "Section",ExpressionUUID->"a8b2b1d7-be47-4105-9869-af358121622b"],
Cell[CellGroupData[{
Cell[10220, 278, 696, 18, 226, "Input",ExpressionUUID->"37236f09-b57c-4962-a587-056c36896dd2"],
Cell[10919, 298, 2353, 49, 137, "Output",ExpressionUUID->"d018dfdb-32af-4f25-ba11-fb29ede478f3"]
}, {2}]],
Cell[13284, 350, 280, 7, 44, "Text",ExpressionUUID->"42c7efb0-151e-4d04-b355-291114a0a987"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[13613, 363, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"4d46365b-d4e1-409f-aa8f-a36151ebbca0",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[13760, 369, 275, 8, 132, "Section",ExpressionUUID->"b20a995b-806b-4517-a194-ebc14e7b8b63"],
Cell[CellGroupData[{
Cell[14060, 381, 690, 18, 259, "Input",ExpressionUUID->"0a99b942-770c-4e03-a975-97e67685aa32"],
Cell[14753, 401, 2339, 48, 307, "Output",ExpressionUUID->"3f7b51a0-0d82-4386-b3fa-2525b29c873e"]
}, {2}]],
Cell[17104, 452, 270, 7, 51, "Text",ExpressionUUID->"ced4d162-912d-4cb5-a211-46edca6a1c5e"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[17423, 465, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"37dda24b-7cd9-4834-be9e-ab64a94febb2",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[17570, 471, 286, 8, 114, "Section",ExpressionUUID->"eac76b84-1477-4c97-96ed-5cb8f9cdd53c"],
Cell[CellGroupData[{
Cell[17881, 483, 834, 23, 276, "Input",ExpressionUUID->"e38b859e-cfbf-4b61-8a61-77875bff4e4c"],
Cell[18718, 508, 2389, 49, 233, "Output",ExpressionUUID->"e7851f17-d2b1-4f59-960a-a477f3f49772"]
}, {2}]],
Cell[21119, 560, 455, 11, 73, "Text",ExpressionUUID->"6e6deac4-d211-4006-848e-8af65a24a7c8"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[21623, 577, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"a04f3c01-76ad-4abd-bc43-006e2428455a",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[21770, 583, 339, 10, 114, "Section",ExpressionUUID->"4df671b4-d01c-49e8-b593-eec3549ebe05"],
Cell[CellGroupData[{
Cell[22134, 597, 902, 25, 310, "Input",ExpressionUUID->"8394ee1a-d63e-4ebf-9910-4c79311a947b"],
Cell[23039, 624, 2414, 50, 177, "Output",ExpressionUUID->"8976a24c-ccc6-438b-adc9-3c72af89bb9c"]
}, {2}]],
Cell[25465, 677, 506, 13, 73, "Text",ExpressionUUID->"b842dbe7-476f-40f1-a769-11dbb7b5c439"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[26020, 696, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"8bb2e9d3-92a8-4198-8b13-03188b87c5b9",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[26167, 702, 386, 11, 137, "Section",ExpressionUUID->"dfbafc47-bf1d-4b06-83f3-1cc138875151"],
Cell[CellGroupData[{
Cell[26578, 717, 1620, 43, 556, "Input",ExpressionUUID->"4f1a261c-5671-4891-9ba8-b9137e5673db"],
Cell[28201, 762, 2804, 60, 225, "Output",ExpressionUUID->"a5830bfd-1861-4bee-8db9-69ac943529ba"]
}, {2}]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[31063, 829, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"851a9cf7-4e71-41d9-9cac-14b5aa121db4",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[31210, 835, 412, 12, 141, "Section",ExpressionUUID->"84dc626a-f20d-4ee4-8aec-e109f5364fca"],
Cell[CellGroupData[{
Cell[31647, 851, 1664, 44, 556, "Input",ExpressionUUID->"6b3a033c-c986-4d46-91a0-dc8088489631"],
Cell[33314, 897, 2836, 61, 229, "Output",ExpressionUUID->"fefa05f4-c1b4-4fd7-bb34-4811bcc3c987"]
}, {2}]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[36208, 965, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"8e71551a-057a-4dcf-8c00-f978dc3fa569",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[36355, 971, 253, 7, 114, "Section",ExpressionUUID->"5ee0478a-361a-4da9-a312-a32594698264"],
Cell[36611, 980, 168, 3, 73, "Text",ExpressionUUID->"ea0cd5c2-ca10-4e7f-860a-0b78511d825b"],
Cell[36782, 985, 584, 18, 105, "Text",ExpressionUUID->"eb7cc567-c4ea-4b93-a7bc-6a78436d8bf5"],
Cell[CellGroupData[{
Cell[37391, 1007, 1286, 35, 397, "Input",ExpressionUUID->"46d37811-2e0b-4579-b47b-ba5f1d72141c"],
Cell[38680, 1044, 2570, 55, 241, "Output",ExpressionUUID->"fc360798-5dfc-4b0c-9fbf-35989ebdf55d"]
}, {2}]],
Cell[41262, 1102, 160, 3, 73, "Text",ExpressionUUID->"c2c76429-c968-417d-8b14-7da33098187a"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[41471, 1111, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"b2b8f19d-0488-4fed-a69d-0c8aea7c6a48",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[41618, 1117, 368, 10, 216, "Section",ExpressionUUID->"6d9d5b82-3c11-42f2-9dd3-b00bacd8152d"],
Cell[CellGroupData[{
Cell[42011, 1131, 2189, 58, 625, "Input",ExpressionUUID->"c22f5590-baff-450b-91b9-9185ec257510"],
Cell[44203, 1191, 1639, 41, 627, "Output",ExpressionUUID->"beaa57f5-bde7-4a45-ad66-356029cb3473"]
}, {2}]],
Cell[CellGroupData[{
Cell[45876, 1237, 1464, 38, 525, "Input",ExpressionUUID->"99a2100f-5025-4158-8a4a-79f192fc2df3"],
Cell[47343, 1277, 2695, 57, 873, "Output",ExpressionUUID->"2f8a6816-1c8c-4df0-aa46-64c7efdd6d60"]
}, {2}]],
Cell[50050, 1337, 359, 10, 44, "Text",ExpressionUUID->"61265db0-d192-4659-93ad-f253eaf8b49b"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[50458, 1353, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"6190227d-f9d7-4cdc-ab78-39e2060db82c",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[50605, 1359, 314, 9, 114, "Section",ExpressionUUID->"4aaefd36-d454-420a-ba51-67a4a6b3d68d"],
Cell[50922, 1370, 222, 6, 44, "Text",ExpressionUUID->"5113c441-10a9-432a-9957-e0984a2da0d8"],
Cell[CellGroupData[{
Cell[51169, 1380, 1507, 41, 397, "Input",ExpressionUUID->"cf7f5d3f-3311-41eb-8155-fdc686d44244"],
Cell[52679, 1423, 3059, 112, 503, "Output",ExpressionUUID->"b6e58948-d8cc-4580-b7a3-20456ff79698"]
}, {2}]],
Cell[CellGroupData[{
Cell[55772, 1540, 1565, 41, 473, "Input",ExpressionUUID->"1b90455e-663c-4c2f-beb2-1ecd4771c902"],
Cell[57340, 1583, 2548, 54, 913, "Output",ExpressionUUID->"4f284631-0702-4dc5-a97a-b32c3c8e965e"]
}, {2}]],
Cell[59900, 1640, 279, 7, 44, "Text",ExpressionUUID->"d3692b54-687b-4e9d-88f9-e7627e8f0825"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[60228, 1653, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"0c3e0706-a045-4853-a7ea-01dc19fdbeea",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[60375, 1659, 117, 0, 165, "Section",ExpressionUUID->"25f2ab22-e9c7-49e8-ba74-8e0bdabca5a8"],
Cell[60495, 1661, 138, 1, 44, "Text",ExpressionUUID->"520b7a3a-0bf9-40cf-a39a-70c6c6850f9a"],
Cell[60636, 1664, 608, 19, 105, "Text",ExpressionUUID->"9236fd0b-0e5d-4fb8-ba0e-f435c45857fb"],
Cell[CellGroupData[{
Cell[61269, 1687, 1715, 50, 443, "Input",ExpressionUUID->"65e8200c-bd00-43be-87fa-35c4ba4de5f2"],
Cell[62987, 1739, 965, 29, 503, "Output",ExpressionUUID->"7c764f70-eb6d-482d-805d-7e4ddfd5ef66"]
}, {2}]],
Cell[63964, 1771, 96, 0, 44, "Text",ExpressionUUID->"4c8a3b2a-f97b-4042-a7f4-50b7b76c73ed"],
Cell[CellGroupData[{
Cell[64085, 1775, 1723, 47, 481, "Input",ExpressionUUID->"34a84bee-eaf8-4620-8cea-401530830151"],
Cell[65811, 1824, 2517, 52, 161, "Output",ExpressionUUID->"ea1c7e39-aefe-4d35-b7be-00d43887c569"]
}, {2}]],
Cell[68340, 1879, 278, 7, 44, "Text",ExpressionUUID->"2c28fe4f-8fae-447d-a9d5-1015e6589621"],
Cell[CellGroupData[{
Cell[68643, 1890, 4626, 125, 887, "Input",ExpressionUUID->"04349564-2f29-46fc-aba4-6c70a831b64d"],
Cell[73272, 2017, 1790, 42, 645, "Output",ExpressionUUID->"bc7b2db1-5f1c-40fa-a409-5d4811ab28f9"]
}, {2}]],
Cell[CellGroupData[{
Cell[75096, 2064, 2483, 65, 625, "Input",ExpressionUUID->"4adb7b68-7be7-43fb-a676-626c7424fe4b"],
Cell[77582, 2131, 2792, 58, 869, "Output",ExpressionUUID->"4e5d0a01-5578-467e-b9a1-ea7c58aedeb5"]
}, {2}]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[80432, 2196, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"3a997265-568f-417a-8e88-783d184d2ae5",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[80579, 2202, 141, 1, 165, "Section",ExpressionUUID->"c77820f6-55ff-422a-aafe-fa1b8d274307"],
Cell[80723, 2205, 138, 1, 44, "Text",ExpressionUUID->"5e828f9f-b01a-4e56-b7f9-367a7c7e4aa7"],
Cell[80864, 2208, 805, 25, 135, "Text",ExpressionUUID->"883437d6-9ef9-49be-88f8-a00432e8fcf2"],
Cell[81672, 2235, 96, 0, 44, "Text",ExpressionUUID->"6c947653-53f2-4a68-9d06-256e84c58adb"],
Cell[CellGroupData[{
Cell[81793, 2239, 1794, 52, 494, "Input",ExpressionUUID->"d3537bcf-b3f5-49b2-b070-62074ff0d036"],
Cell[83590, 2293, 962, 29, 503, "Output",ExpressionUUID->"63387c39-6e86-4b98-977d-c0d13590d822"]
}, {2}]],
Cell[CellGroupData[{
Cell[84586, 2327, 1807, 49, 533, "Input",ExpressionUUID->"edbf0255-dec5-4eb2-8a0e-ee51939716d8"],
Cell[86396, 2378, 2517, 52, 163, "Output",ExpressionUUID->"208218d9-1c85-49c5-8e55-00d8e59bf916"]
}, {2}]],
Cell[88925, 2433, 278, 7, 44, "Text",ExpressionUUID->"ca85c9e5-20f6-4aef-a3b4-3071fc9cddb5"],
Cell[CellGroupData[{
Cell[89228, 2444, 4806, 129, 887, "Input",ExpressionUUID->"87bd1ae0-e4ad-42b1-8eee-2b7d8c9db40e"],
Cell[94037, 2575, 1791, 42, 643, "Output",ExpressionUUID->"850bbb50-d0c6-4ad8-9a94-fe2e871b87a0"]
}, {2}]],
Cell[CellGroupData[{
Cell[95862, 2622, 2762, 71, 632, "Input",ExpressionUUID->"8dd44846-6bb5-4077-9177-1f9153c73c97"],
Cell[98627, 2695, 2859, 61, 181, "Output",ExpressionUUID->"ddedb58d-e883-40e0-aeea-bcc0546155d3"]
}, {2}]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[101544, 2763, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"18c5c055-4685-4f28-b983-b89bd85596e3",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[101691, 2769, 388, 11, 132, "Section",ExpressionUUID->"4d297b99-75a2-41e6-abf6-fc5877bdc4a2"],
Cell[CellGroupData[{
Cell[102104, 2784, 3425, 88, 1112, "Input",ExpressionUUID->"0b869450-2c4a-46f1-b3d7-7ac9a1f87967"],
Cell[105532, 2874, 4502, 103, 274, "Output",ExpressionUUID->"12d5e5ca-5835-4bea-b21b-3ca2f83b0f84"]
}, {2}]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[110092, 2984, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"b9218361-c44c-4c53-9e57-f8cdfec9b667",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[110239, 2990, 413, 12, 140, "Section",ExpressionUUID->"334680ee-cc14-4b08-8d07-6061806acd09"],
Cell[CellGroupData[{
Cell[110677, 3006, 3302, 86, 839, "Input",ExpressionUUID->"9ddbf096-3252-40ce-8665-ef6053bf6f2c"],
Cell[113982, 3094, 4330, 99, 276, "Output",ExpressionUUID->"56e9798f-b723-470e-bcda-497b69fbcbed"]
}, {2}]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[118370, 3200, 122, 2, 42, "SlideShowNavigationBar",ExpressionUUID->"e14d7125-3dce-43f6-adc8-7eb039597224",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[118517, 3206, 448, 13, 140, "Section",ExpressionUUID->"011ffc3c-bee9-418e-97d8-c24536706c95"],
Cell[CellGroupData[{
Cell[118990, 3223, 3376, 87, 938, "Input",ExpressionUUID->"afcf465b-ed57-4dd0-9d10-f22201917f09"],
Cell[122369, 3312, 4112, 91, 282, "Output",ExpressionUUID->"7002811f-6a85-44e5-936d-b01fd5ecfe49"]
}, {2}]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Jv0WYraKdDMCQCgXJXXfftUW *)
