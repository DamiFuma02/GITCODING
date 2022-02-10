(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[     75136,       1972]
NotebookOptionsPosition[     71384,       1841]
NotebookOutlinePosition[     72464,       1876]
CellTagsIndexPosition[     72385,       1871]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["", "SlideShowNavigationBar",
 CellTags->"SlideShowHeader"],

Cell["\<\
Forme (in)determinate
nel calcolo dei limiti\
\>", "Title",
 CellChangeTimes->{{3.5326153336904078`*^9, 3.532615344255206*^9}, {
  3.532756341483901*^9, 3.532756343031645*^9}}],

Cell[TextData[{
 "Gianluca Gorni\nUniversit\[AGrave] di Udine\n",
 ButtonBox["www.dimi.uniud.it/gorni",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://www.dimi.uniud.it/gorni"], None},
  ButtonNote->"http://www.dimi.uniud.it/gorni"],
 "\ndicembre 2011"
}], "Text",
 CellChangeTimes->{{3.532615351768197*^9, 3.532615362414454*^9}, {
  3.532756359680414*^9, 3.532756360998763*^9}, {3.542365846305328*^9, 
  3.5423658499253397`*^9}, {3.542706473856634*^9, 3.542706479685369*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->"SlideShowHeader"],

Cell[CellGroupData[{

Cell["\<\
Limite della somma di due funzioni\
\>", "Section",
 CellChangeTimes->{{3.5326153792990026`*^9, 3.532615384013606*^9}}],

Cell[TextData[{
 "Problema: sapendo che ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "\[Rule]", 
    SubscriptBox["\[ScriptL]", "1"]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " e ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"g", "(", "x", ")"}], "\[Rule]", 
    SubscriptBox["\[ScriptL]", "2"]}], TraditionalForm]]],
 " per ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "\[Rule]", 
    SubscriptBox["x", "0"]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", si pu\[OGrave] dedurre a cosa tende la somma ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "+", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 "?"
}], "Text",
 CellChangeTimes->{{3.5326153954725733`*^9, 3.5326154711404552`*^9}}],

Cell["Risposta: ", "Text",
 CellChangeTimes->{{3.5326155087470713`*^9, 3.532615646960472*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 "quando ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " sono entrambi finiti, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "+", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " tende semplicemente a ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[ScriptL]", "1"], "+", 
    SubscriptBox["\[ScriptL]", "2"]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ";"
}], "Item",
 CellChangeTimes->{{3.5326156482663307`*^9, 3.53261565185536*^9}}],

Cell[TextData[{
 "quando ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " sono entrambi ",
 Cell[BoxData[
  FormBox[
   RowBox[{"+", "\[Infinity]"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "+", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " tende a ",
 Cell[BoxData[
  FormBox[
   RowBox[{"+", "\[Infinity]"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ";"
}], "Item",
 CellChangeTimes->{{3.532615655351098*^9, 3.5326157210104303`*^9}}],

Cell[TextData[{
 "quando ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " sono entrambi ",
 Cell[BoxData[
  FormBox[
   RowBox[{"-", "\[Infinity]"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "+", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " tende a ",
 Cell[BoxData[
  FormBox[
   RowBox[{"-", "\[Infinity]"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ";"
}], "Item",
 CellChangeTimes->{{3.532615700823333*^9, 3.532615737204795*^9}}],

Cell[TextData[{
 "quando uno fra  ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " \[EGrave] finito e l\[CloseCurlyQuote]altro \[EGrave] ",
 Cell[BoxData[
  FormBox[
   RowBox[{"+", "\[Infinity]"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "+", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " tende a ",
 Cell[BoxData[
  FormBox[
   RowBox[{"+", "\[Infinity]"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ";"
}], "Item",
 CellChangeTimes->{{3.5326160134126177`*^9, 3.532616026575116*^9}}],

Cell[TextData[{
 "quando uno fra  ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " \[EGrave] finito e l\[CloseCurlyQuote]altro \[EGrave] ",
 Cell[BoxData[
  FormBox[
   RowBox[{"-", "\[Infinity]"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "+", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " tende a ",
 Cell[BoxData[
  FormBox[
   RowBox[{"-", "\[Infinity]"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ";"
}], "Item",
 CellChangeTimes->{{3.5326160134126177`*^9, 3.5326160417369423`*^9}}],

Cell[TextData[{
 "quando uno fra ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " \[EGrave] ",
 Cell[BoxData[
  FormBox[
   RowBox[{"+", "\[Infinity]"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " e l\[CloseCurlyQuote]altro \[EGrave] ",
 Cell[BoxData[
  FormBox[
   RowBox[{"-", "\[Infinity]"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", l\[CloseCurlyQuote]informazione non basta; ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "+", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " potrebbe avere un qualsiasi  limite finito, o un limite infinito, oppure \
non avere limite. \[CapitalEGrave] quella che si chiama ",
 StyleBox["forma indeterminata",
  FontWeight->"Bold"],
 "."
}], "Item",
 CellChangeTimes->{{3.532615743822814*^9, 3.5326158589158297`*^9}}]
}, Open  ]],

Cell["In forma tabellare:", "Text",
 CellChangeTimes->{{3.53261667810086*^9, 3.5326166816606693`*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[GridBox[{
     {
      StyleBox["\<\"\\!\\(TraditionalForm\\`f(x) + g(x) \[Rule] ?\\)\"\>",
       StripOnInput->False,
       FontSize->Large], 
      "\[SpanFromLeft]", "\<\"limite del secondo addendo\"\>", 
      "\[SpanFromLeft]", "\[SpanFromLeft]", "\[SpanFromLeft]"},
     {"\[SpanFromAbove]", 
      "\[SpanFromBoth]", "\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\
\>", "Finito", "\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", 
      "Indeterminato"},
     {
      TagBox[GridBox[{
         {"\<\"limite\"\>"},
         {"\<\"del\"\>"},
         {"\<\"primo\"\>"},
         {"\<\"addendo\"\>"}
        },
        GridBoxAlignment->{"Columns" -> {{Center}}},
        GridBoxItemSize->{
         "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
       "Column"], "\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", "Indeterminato", 
      "Indeterminato"},
     {"\[SpanFromAbove]", "Finito", "\[SpanFromAbove]", 
      "Finito", "\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", 
      "\[SpanFromAbove]"},
     {"\[SpanFromAbove]", \
"\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", 
      "Indeterminato", \
"\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", "\[SpanFromLeft]", 
      "\[SpanFromAbove]"},
     {"\[SpanFromAbove]", "Indeterminato", "Indeterminato", "\[SpanFromLeft]",
       "\[SpanFromLeft]", "\[SpanFromAbove]"}
    },
    AutoDelete->False,
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Center}}},
    GridBoxFrame->{"Columns" -> {
        Thickness[Large], 
        Thickness[Large], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0]}, "Rows" -> {
        Thickness[Large], 
        Thickness[Large], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0]}},
    GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
    GridBoxSpacings->{"Columns" -> {{1}}, "Rows" -> {{2}}}],
   "Grid"], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.532608011043117*^9, 3.5326081363138227`*^9, 3.5326144387863703`*^9, 
   3.5326160967806683`*^9, {3.532616140299749*^9, 3.5326161541826153`*^9}, 
   3.5326163132597647`*^9}],

Cell["In termini competitivi:", "Text",
 CellChangeTimes->{{3.532616433527987*^9, 3.532616441573697*^9}}],

Cell[CellGroupData[{

Cell["\<\
due limiti finiti si sommano tranquillamente;\
\>", "Item",
 CellChangeTimes->{{3.532616458773834*^9, 3.5326164690447807`*^9}, 
   3.532755866873726*^9}],

Cell["\<\
due infiniti dello stesso segno si rafforzano a vicenda;\
\>", "Item",
 CellChangeTimes->{{3.532616480636511*^9, 3.532616497387697*^9}}],

Cell["\<\
un finito scompare quando sommato a un infinito;\
\>", "Item",
 CellChangeTimes->{{3.5326165077549057`*^9, 3.532616518202973*^9}}],

Cell["\<\
sommare due infiniti di segno opposto pu\[OGrave] dare qualsiasi cosa.\
\>", "Item",
 CellChangeTimes->{{3.532616539258061*^9, 3.53261656504105*^9}}]
}, Open  ]],

Cell["Come formulette:", "Text",
 CellChangeTimes->{{3.532616692340425*^9, 3.532616696292053*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"finito", "+", "finito"}], "=", "finito"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ";"
}], "Item",
 CellChangeTimes->{{3.532616458773834*^9, 3.5326164690447807`*^9}, {
  3.532616714565551*^9, 3.5326167266155653`*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"finito", "+", "infinito"}], "=", "infinito"}], TraditionalForm]],
  
  FormatType->"TraditionalForm"],
 ";"
}], "Item",
 CellChangeTimes->{{3.532616729770492*^9, 3.532616741550622*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"infinito", "+", "infinitoDelloStessoSegno"}], "=", 
    "infinitoDelloLoStessoSegno"}], TraditionalForm]]],
 ";"
}], "Item",
 CellChangeTimes->{{3.5326167494676113`*^9, 3.532616768685339*^9}, {
  3.542365939093124*^9, 3.542365939843442*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"infinito", "+", "infinitoDiSegnoOpposto"}], "=", "boh"}], 
   TraditionalForm]],
  FormatType->"TraditionalForm"],
 "."
}], "Item",
 CellChangeTimes->{{3.5326167803540077`*^9, 3.5326167943608217`*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->"SlideShowHeader"],

Cell[CellGroupData[{

Cell["\<\
Limite della differenza di due funzioni\
\>", "Section",
 CellChangeTimes->{{3.5326153792990026`*^9, 3.532615384013606*^9}, {
  3.5326168730718107`*^9, 3.532616874773555*^9}}],

Cell[TextData[{
 "Problema: sapendo che ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "\[Rule]", 
    SubscriptBox["\[ScriptL]", "1"]}], TraditionalForm]]],
 " e ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"g", "(", "x", ")"}], "\[Rule]", 
    SubscriptBox["\[ScriptL]", "2"]}], TraditionalForm]]],
 " per ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "\[Rule]", 
    SubscriptBox["x", "0"]}], TraditionalForm]]],
 ", si pu\[OGrave] dedurre a cosa tende la differenza ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "-", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]]],
 "?"
}], "Text",
 CellChangeTimes->{{3.5326153954725733`*^9, 3.5326154711404552`*^9}, {
  3.532683524568976*^9, 3.532683531050269*^9}}],

Cell[TextData[{
 "Risposta: basta scrivere ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"f", "(", "x", ")"}], "-", 
     RowBox[{"g", "(", "x", ")"}]}], "=", 
    RowBox[{
     RowBox[{"f", "(", "x", ")"}], "+", 
     RowBox[{"(", 
      RowBox[{"-", 
       RowBox[{"g", "(", "x", ")"}]}], ")"}]}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", usare il fatto che ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"-", 
     RowBox[{"g", "(", "x", ")"}]}], "\[Rule]", 
    RowBox[{"-", 
     SubscriptBox["\[ScriptL]", "2"]}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", e applicare le regole note per il limite della somma di due funzioni."
}], "Text",
 CellChangeTimes->{{3.5326155087470713`*^9, 3.532615646960472*^9}, {
  3.5327524452066517`*^9, 3.532752533211103*^9}}],

Cell[BoxData[
 FormBox[
  TabViewBox[{{1,"\<\"da riempire\"\>"->
   TagBox[GridBox[{
      {
       StyleBox["\<\"\\!\\(TraditionalForm\\`f(x) - g(x) \[Rule] ?\\)\"\>",
        StripOnInput->False,
        FontSize->Large], 
       "\[SpanFromLeft]", "\<\"limite di \\!\\(TraditionalForm\\`g(x)\\)\"\>",
        "\[SpanFromLeft]", "\[SpanFromLeft]", "\[SpanFromLeft]"},
      {"\[SpanFromAbove]", 
       "\[SpanFromBoth]", \
"\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", 
       "Finito", "\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", 
       "Indeterminato"},
      {
       TagBox[GridBox[{
          {"\<\"limite\"\>"},
          {"\<\"di\"\>"},
          {"\<\"\\!\\(TraditionalForm\\`f(x)\\)\"\>"}
         },
         GridBoxAlignment->{"Columns" -> {{Center}}},
         GridBoxItemSize->{
          "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
        "Column"], "\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", 
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->"Indeterminato"}], 
       
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->"Indeterminato"}], 
       
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->"Indeterminato"}], 
       
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->
        "Indeterminato"}]},
      {"\[SpanFromAbove]", "Finito", 
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->"Indeterminato"}], 
       
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->"Indeterminato"}], 
       
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->"Indeterminato"}], 
       
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->
        "Indeterminato"}]},
      {"\[SpanFromAbove]", "\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\
\"\>", 
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->"Indeterminato"}], 
       
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->"Indeterminato"}], 
       
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->"Indeterminato"}], 
       
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->
        "Indeterminato"}]},
      {"\[SpanFromAbove]", "Indeterminato", 
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->"Indeterminato"}], 
       
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->"Indeterminato"}], 
       
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->"Indeterminato"}], 
       
       PopupMenuBox[$CellContext`Indeterminato, {
        "\!\(TraditionalForm\`\(-\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(-\[Infinity]\\)\\)\"\>", $CellContext`Finito->"Finito", 
        "\!\(TraditionalForm\`\(+\[Infinity]\)\)"->"\<\"\\!\\(TraditionalForm\
\\`\\(+\[Infinity]\\)\\)\"\>", $CellContext`Indeterminato->"Indeterminato"}]}
     },
     AutoDelete->False,
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Center}}},
     GridBoxFrame->{"Columns" -> {
         Thickness[Large], 
         Thickness[Large], 
         GrayLevel[0], 
         GrayLevel[0], 
         GrayLevel[0], 
         GrayLevel[0]}, "Rows" -> {
         Thickness[Large], 
         Thickness[Large], 
         GrayLevel[0], 
         GrayLevel[0], 
         GrayLevel[0], 
         GrayLevel[0]}},
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
     GridBoxSpacings->{"Columns" -> {{1}}, "Rows" -> {{2}}}],
    "Grid"]}, {2,"\<\"risposta\"\>"->
   TagBox[GridBox[{
      {
       StyleBox["\<\"\\!\\(TraditionalForm\\`f(x) - g(x) \[Rule] ?\\)\"\>",
        StripOnInput->False,
        FontSize->Large], 
       "\[SpanFromLeft]", "\<\"limite di \\!\\(TraditionalForm\\`g(x)\\)\"\>",
        "\[SpanFromLeft]", "\[SpanFromLeft]", "\[SpanFromLeft]"},
      {"\[SpanFromAbove]", 
       "\[SpanFromBoth]", \
"\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", 
       "Finito", "\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", 
       "Indeterminato"},
      {
       TagBox[GridBox[{
          {"\<\"limite\"\>"},
          {"\<\"di\"\>"},
          {"\<\"\\!\\(TraditionalForm\\`f(x)\\)\"\>"}
         },
         GridBoxAlignment->{"Columns" -> {{Center}}},
         GridBoxItemSize->{
          "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
        "Column"], "\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", 
       "Indeterminato", \
"\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", "\[SpanFromLeft]", 
       "Indeterminato"},
      {"\[SpanFromAbove]", 
       "Finito", "\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", 
       "Finito", "\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", 
       "\[SpanFromAbove]"},
      {"\[SpanFromAbove]", "\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\
\"\>", "\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", 
       "\[SpanFromLeft]", "Indeterminato", "\[SpanFromAbove]"},
      {"\[SpanFromAbove]", "Indeterminato", "Indeterminato", 
       "\[SpanFromLeft]", "\[SpanFromLeft]", "\[SpanFromAbove]"}
     },
     AutoDelete->False,
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Center}}},
     GridBoxFrame->{"Columns" -> {
         Thickness[Large], 
         Thickness[Large], 
         GrayLevel[0], 
         GrayLevel[0], 
         GrayLevel[0], 
         GrayLevel[0]}, "Rows" -> {
         Thickness[Large], 
         Thickness[Large], 
         GrayLevel[0], 
         GrayLevel[0], 
         GrayLevel[0], 
         GrayLevel[0]}},
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
     GridBoxSpacings->{"Columns" -> {{1}}, "Rows" -> {{2}}}],
    "Grid"]}}, 1], TraditionalForm]], "Output",
 CellChangeTimes->{{3.53275447926758*^9, 3.532754562521627*^9}, {
  3.532756378067259*^9, 3.532756386897161*^9}}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->"SlideShowHeader"],

Cell[CellGroupData[{

Cell["\<\
Limite del prodotto di due funzioni\
\>", "Section",
 CellChangeTimes->{{3.5326153792990026`*^9, 3.532615384013606*^9}, {
  3.5326168730718107`*^9, 3.532616874773555*^9}, {3.5327546312543383`*^9, 
  3.5327546327793093`*^9}}],

Cell[TextData[{
 "Problema: sapendo che ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "\[Rule]", 
    SubscriptBox["\[ScriptL]", "1"]}], TraditionalForm]]],
 " e ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"g", "(", "x", ")"}], "\[Rule]", 
    SubscriptBox["\[ScriptL]", "2"]}], TraditionalForm]]],
 " per ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "\[Rule]", 
    SubscriptBox["x", "0"]}], TraditionalForm]]],
 ", si pu\[OGrave] dedurre a cosa tende il prodotto ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]]],
 "?"
}], "Text",
 CellChangeTimes->{{3.5326153954725733`*^9, 3.5326154711404552`*^9}, {
  3.532683524568976*^9, 3.532683531050269*^9}, {3.5327546488080797`*^9, 
  3.5327546532840776`*^9}}],

Cell["Risposta: ", "Text",
 CellChangeTimes->{{3.5326155087470713`*^9, 3.532615646960472*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 "quando ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]]],
 " e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " sono entrambi finiti, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]]],
 " tende semplicemente a ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[ScriptL]", "1"], 
    SubscriptBox["\[ScriptL]", "2"]}], TraditionalForm]]],
 ";"
}], "Item",
 CellChangeTimes->{{3.5326156482663307`*^9, 3.53261565185536*^9}, {
  3.532754902978033*^9, 3.532754906712755*^9}}],

Cell[TextData[{
 "quando ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]]],
 " e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " sono entrambi ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[PlusMinus]", "\[Infinity]"}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]]],
 " tende a ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[PlusMinus]", "\[Infinity]"}], TraditionalForm]]],
 ", con la regola dei segni;"
}], "Item",
 CellChangeTimes->{{3.532615655351098*^9, 3.5326157210104303`*^9}, {
  3.532754914574629*^9, 3.532754965361644*^9}}],

Cell[TextData[{
 "quando uno fra  ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]]],
 " e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " \[EGrave] finito ",
 StyleBox["non nullo",
  FontSlant->"Italic"],
 " e l\[CloseCurlyQuote]altro \[EGrave] ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[PlusMinus]", "\[Infinity]"}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]]],
 " tende a ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[PlusMinus]", "\[Infinity]"}], TraditionalForm]]],
 ", con la regola dei segni;"
}], "Item",
 CellChangeTimes->{{3.5326160134126177`*^9, 3.532616026575116*^9}, {
  3.532754983686636*^9, 3.532755017639617*^9}}],

Cell[TextData[{
 "quando uno fra  ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]]],
 " e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " \[EGrave] zero e l\[CloseCurlyQuote]altro \[EGrave] ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[PlusMinus]", "\[Infinity]"}], TraditionalForm]]],
 ", l\[CloseCurlyQuote]informazione non basta; ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]]],
 " potrebbe avere un qualsiasi  limite finito, o un limite infinito, oppure \
non avere limite. \[CapitalEGrave] quella che si chiama ",
 StyleBox["forma indeterminata",
  FontWeight->"Bold"],
 "."
}], "Item",
 CellChangeTimes->{{3.532615743822814*^9, 3.5326158589158297`*^9}, {
  3.5327558025451117`*^9, 3.532755806251144*^9}}]
}, Open  ]],

Cell["In forma tabellare:", "Text",
 CellChangeTimes->{{3.53261667810086*^9, 3.5326166816606693`*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[GridBox[{
     {
      StyleBox["\<\"\\!\\(TraditionalForm\\`\\(f(x)\\)\[Cross]\\(g(x)\\) \
\[Rule] ?\\)\"\>",
       StripOnInput->False,
       FontSize->Large], 
      "\[SpanFromLeft]", "\<\"limite di \\!\\(TraditionalForm\\`g(x)\\)\"\>", 
      "\[SpanFromLeft]", "\[SpanFromLeft]", "\[SpanFromLeft]", 
      "\[SpanFromLeft]", "\[SpanFromLeft]"},
     {"\[SpanFromAbove]", 
      "\[SpanFromBoth]", "\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\
\>", "FinitoNegativo", \
"\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \
\\(\[PlusMinus]\\)]\\)\"\>", 
      "FinitoPositivo", \
"\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", "Indeterminato"},
     {
      TagBox[GridBox[{
         {"\<\"limite\"\>"},
         {"\<\"di\"\>"},
         {"\<\"\\!\\(TraditionalForm\\`f(x)\\)\"\>"}
        },
        GridBoxAlignment->{"Columns" -> {{Center}}},
        GridBoxItemSize->{
         "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
       "Column"], "\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", "\[SpanFromLeft]", 
      "Indeterminato", \
"\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", "\[SpanFromLeft]", 
      "Indeterminato"},
     {"\[SpanFromAbove]", 
      "FinitoNegativo", \
"\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", "Finito", 
      "\[SpanFromLeft]", 
      "\[SpanFromLeft]", "\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\
\>", "\[SpanFromAbove]"},
     {"\[SpanFromAbove]", "\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\
\\), \\(\[PlusMinus]\\)]\\)\"\>", "Indeterminato", "\[SpanFromAbove]", 
      "\[SpanFromBoth]", "\[SpanFromBoth]", "Indeterminato", 
      "\[SpanFromAbove]"},
     {"\[SpanFromAbove]", 
      "FinitoPositivo", \
"\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", "\[SpanFromAbove]", 
      "\[SpanFromBoth]", 
      "\[SpanFromBoth]", "\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\
\>", "\[SpanFromAbove]"},
     {"\[SpanFromAbove]", \
"\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", "\[SpanFromLeft]", 
      "\[SpanFromLeft]", "\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\
\>", "\[SpanFromLeft]", "\[SpanFromAbove]"},
     {"\[SpanFromAbove]", "Indeterminato", "Indeterminato", "\[SpanFromLeft]",
       "\[SpanFromLeft]", "\[SpanFromLeft]", "\[SpanFromLeft]", 
      "\[SpanFromAbove]"}
    },
    AutoDelete->False,
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Center}}},
    GridBoxFrame->{"Columns" -> {
        Thickness[Large], 
        Thickness[Large], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0]}, "Rows" -> {
        Thickness[Large], 
        Thickness[Large], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0]}},
    GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
    GridBoxSpacings->{"Columns" -> {{1}}, "Rows" -> {{2}}}],
   "Grid"], TraditionalForm]], "Output",
 CellChangeTimes->{{3.532755308423192*^9, 3.532755330450631*^9}, 
   3.532755361927578*^9, 3.5327553955779943`*^9, {3.532755532463266*^9, 
   3.532755553528514*^9}, {3.5327556487474613`*^9, 3.5327556613933372`*^9}}],

Cell["Come formulette:", "Text",
 CellChangeTimes->{{3.532616692340425*^9, 3.532616696292053*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"finito", "\[Cross]", " ", "finito"}], "=", "finito"}], 
   TraditionalForm]]],
 ";"
}], "Item",
 CellChangeTimes->{{3.532616458773834*^9, 3.5326164690447807`*^9}, {
  3.532616714565551*^9, 3.5326167266155653`*^9}, {3.532755916138794*^9, 
  3.532755923058511*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"finito", " ", "non", " ", "nullo"}], ")"}], "\[Cross]", " ", 
     RowBox[{"(", 
      RowBox[{"\[PlusMinus]", "\[Infinity]"}], ")"}]}], "=", 
    RowBox[{"\[PlusMinus]", "\[Infinity]"}]}], TraditionalForm]]],
 ";"
}], "Item",
 CellChangeTimes->{{3.532616729770492*^9, 3.532616741550622*^9}, {
  3.5327559361917048`*^9, 3.532755975614356*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"\[PlusMinus]", "\[Infinity]"}], ")"}], "\[Cross]", " ", 
     RowBox[{"(", 
      RowBox[{"\[PlusMinus]", "\[Infinity]"}], ")"}]}], "=", 
    RowBox[{"\[PlusMinus]", "\[Infinity]"}]}], TraditionalForm]]],
 ";"
}], "Item",
 CellChangeTimes->{{3.5326167494676113`*^9, 3.532616768685339*^9}, {
  3.532755995367882*^9, 3.532756001406485*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"0", "\[Cross]", " ", 
     RowBox[{"(", 
      RowBox[{"\[PlusMinus]", "\[Infinity]"}], ")"}]}], "=", "boh"}], 
   TraditionalForm]]],
 "."
}], "Item",
 CellChangeTimes->{{3.5326167803540077`*^9, 3.5326167943608217`*^9}, {
  3.532756017621916*^9, 3.5327560305683117`*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->"SlideShowHeader"],

Cell[CellGroupData[{

Cell["\<\
Limite del rapporto di due funzioni\
\>", "Section",
 CellChangeTimes->{{3.5326153792990026`*^9, 3.532615384013606*^9}, {
  3.5326168730718107`*^9, 3.532616874773555*^9}, {3.5327546312543383`*^9, 
  3.5327546327793093`*^9}, {3.532756079570442*^9, 3.532756081048152*^9}}],

Cell[TextData[{
 "Problema: sapendo che ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "\[Rule]", 
    SubscriptBox["\[ScriptL]", "1"]}], TraditionalForm]]],
 " e ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"g", "(", "x", ")"}], "\[Rule]", 
    SubscriptBox["\[ScriptL]", "2"]}], TraditionalForm]]],
 " per ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "\[Rule]", 
    SubscriptBox["x", "0"]}], TraditionalForm]]],
 ", si pu\[OGrave] dedurre a cosa tende il rapporto ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "/", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]]],
 "?"
}], "Text",
 CellChangeTimes->{{3.5326153954725733`*^9, 3.5326154711404552`*^9}, {
  3.532683524568976*^9, 3.532683531050269*^9}, {3.5327546488080797`*^9, 
  3.5327546532840776`*^9}, {3.532756288429435*^9, 3.5327562926921883`*^9}}],

Cell["Risposta: ", "Text",
 CellChangeTimes->{{3.5326155087470713`*^9, 3.532615646960472*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 "quando ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]]],
 " e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " sono entrambi finiti e ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[ScriptL]", "2"], "\[NotEqual]", "0"}], 
   TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "/", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]]],
 " tende semplicemente a ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[ScriptL]", "1"], "/", 
    SubscriptBox["\[ScriptL]", "2"]}], TraditionalForm]]],
 ";"
}], "Item",
 CellChangeTimes->{{3.5326156482663307`*^9, 3.53261565185536*^9}, {
  3.532754902978033*^9, 3.532754906712755*^9}, {3.532756298626402*^9, 
  3.53275631409648*^9}, {3.532774309576069*^9, 3.5327743095761433`*^9}, {
  3.532774544610764*^9, 3.5327745634738607`*^9}}],

Cell[TextData[{
 "quando ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]]],
 "\[EGrave] finito ",
 StyleBox["non nullo",
  FontSlant->"Italic"],
 " e ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[ScriptL]", "2"], "=", 
    SuperscriptBox["0", "\[PlusMinus]"]}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "/", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]]],
 " tende a ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[PlusMinus]", "\[Infinity]"}], TraditionalForm]]],
 ", con la regola dei segni;"
}], "Item",
 CellChangeTimes->{{3.532615655351098*^9, 3.5326157210104303`*^9}, {
   3.532754914574629*^9, 3.532754965361644*^9}, {3.532774364958695*^9, 
   3.532774386151554*^9}, {3.5327744357714863`*^9, 3.532774497744543*^9}, {
   3.532774643718182*^9, 3.532774667485642*^9}, {3.532774813109351*^9, 
   3.532774847220797*^9}, 3.532774916611937*^9}],

Cell[TextData[{
 "quando ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[ScriptL]", "1"], "=", 
    RowBox[{"\[PlusMinus]", "\[Infinity]"}]}], TraditionalForm]]],
 " e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " ",
 "\[EGrave] finito",
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "/", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]]],
 " tende a ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[PlusMinus]", "\[Infinity]"}], TraditionalForm]]],
 ", con la regola dei segni;"
}], "Item",
 CellChangeTimes->{{3.532615655351098*^9, 3.5326157210104303`*^9}, {
  3.532754914574629*^9, 3.532754965361644*^9}, {3.532774364958695*^9, 
  3.532774386151554*^9}, {3.5327744357714863`*^9, 3.532774497744543*^9}, {
  3.532774643718182*^9, 3.532774667485642*^9}, {3.53277476443878*^9, 
  3.532774778199383*^9}, {3.532774871050012*^9, 3.532774877965384*^9}}],

Cell[TextData[{
 "quando ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]]],
 "\[EGrave] finito e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " \[EGrave] ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[PlusMinus]", "\[Infinity]"}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "/", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]]],
 " tende a ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["0", "\[PlusMinus]"], TraditionalForm]]],
 ", con la regola dei segni;"
}], "Item",
 CellChangeTimes->{{3.532615655351098*^9, 3.5326157210104303`*^9}, {
  3.532754914574629*^9, 3.532754965361644*^9}, {3.532774364958695*^9, 
  3.532774386151554*^9}, {3.5327744357714863`*^9, 3.532774497744543*^9}, {
  3.532774627742704*^9, 3.5327746366467247`*^9}, {3.532774688414072*^9, 
  3.532774689953102*^9}}],

Cell[TextData[{
 "quando ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]]],
 " e ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " sono entrambi ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[PlusMinus]", "\[Infinity]"}], TraditionalForm]]],
 " oppure entrambi ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["0", "\[PlusMinus]"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", l\[CloseCurlyQuote]informazione non basta; ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "/", 
    RowBox[{"g", "(", "x", ")"}]}], TraditionalForm]]],
 " potrebbe avere un qualsiasi  limite finito, o un limite infinito, oppure \
non avere limite. \[CapitalEGrave] quella che si chiama ",
 StyleBox["forma indeterminata",
  FontWeight->"Bold"],
 "."
}], "Item",
 CellChangeTimes->{{3.532615743822814*^9, 3.5326158589158297`*^9}, {
  3.5327558025451117`*^9, 3.532755806251144*^9}, {3.532774400426725*^9, 
  3.5327744103928423`*^9}, {3.532774951671422*^9, 3.532774951671483*^9}}]
}, Open  ]],

Cell["In forma tabellare:", "Text",
 CellChangeTimes->{{3.53261667810086*^9, 3.5326166816606693`*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[GridBox[{
     {
      StyleBox["\<\"\\!\\(TraditionalForm\\`\\*FractionBox[\\(f \\((x)\\)\\), \
\\(g \\((x)\\)\\)] \[Rule] ?\\)\"\>",
       StripOnInput->False,
       FontSize->Large], "\[SpanFromLeft]", "\<\"denominatore\"\>", 
      "\[SpanFromLeft]", "\[SpanFromLeft]", "\[SpanFromLeft]", 
      "\[SpanFromLeft]", "\[SpanFromLeft]", "\[SpanFromLeft]", 
      "\[SpanFromLeft]", "\[SpanFromLeft]"},
     {"\[SpanFromAbove]", 
      "\[SpanFromBoth]", "\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\
\>", "FinitoNegativo", \
"\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \\(-\\)]\\)\"\>", "\<\
\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \\(\[PlusMinus]\\)]\\)\"\
\>", "\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \\(+\\)]\\)\"\>",
       "FinitoPositivo", "\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\
\>", "\<\"\\!\\(TraditionalForm\\`\\(\[PlusMinus]\[Infinity]\\)\\)\"\>", 
      "Indeterminato"},
     {"\<\"numeratore\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", 
      "Indeterminato", \
"\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\(\[PlusMinus]\[Infinity]\\)\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", "Indeterminato", 
      "\[SpanFromLeft]", "Indeterminato"},
     {"\[SpanFromAbove]", 
      "FinitoNegativo", \
"\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \\(+\\)]\\)\"\>", 
      "FinitoPositivo", "\[SpanFromAbove]", "\[SpanFromAbove]", 
      "\[SpanFromAbove]", 
      "FinitoNegativo", \
"\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \\(-\\)]\\)\"\>", "\<\
\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \\(\[PlusMinus]\\)]\\)\"\
\>", "\[SpanFromAbove]"},
     {"\[SpanFromAbove]", "\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\
\\), \\(-\\)]\\)\"\>", 
      "\[SpanFromAbove]", "\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\
\\), \\(+\\)]\\)\"\>", "Indeterminato", "\[SpanFromLeft]", 
      "\[SpanFromLeft]", \
"\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \\(-\\)]\\)\"\>", 
      "\[SpanFromAbove]", "\[SpanFromAbove]", "\[SpanFromAbove]"},
     {"\[SpanFromAbove]", "\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\
\\), \\(\[PlusMinus]\\)]\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \
\\(\[PlusMinus]\\)]\\)\"\>", "\[SpanFromLeft]", "\[SpanFromAbove]", 
      "\[SpanFromBoth]", 
      "\[SpanFromBoth]", \
"\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \
\\(\[PlusMinus]\\)]\\)\"\>", "\[SpanFromLeft]", "\[SpanFromAbove]", 
      "\[SpanFromAbove]"},
     {"\[SpanFromAbove]", "\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\
\\), \\(+\\)]\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \\(-\\)]\\)\"\>", "\<\
\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \\(-\\)]\\)\"\>", 
      "\[SpanFromAbove]", "\[SpanFromBoth]", 
      "\[SpanFromBoth]", \
"\<\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \\(+\\)]\\)\"\>", "\<\
\"\\!\\(TraditionalForm\\`\\*SuperscriptBox[\\(0\\), \\(+\\)]\\)\"\>", 
      "\[SpanFromAbove]", "\[SpanFromAbove]"},
     {"\[SpanFromAbove]", "FinitoPositivo", "\[SpanFromAbove]", 
      "FinitoNegativo", \
"\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\(\[PlusMinus]\[Infinity]\\)\\)\"\>", \
"\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", "FinitoPositivo", 
      "\[SpanFromAbove]", "\[SpanFromAbove]", "\[SpanFromAbove]"},
     {"\[SpanFromAbove]", \
"\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", 
      "Indeterminato", \
"\<\"\\!\\(TraditionalForm\\`\\(-\[Infinity]\\)\\)\"\>", "\[SpanFromAbove]", 
      "\[SpanFromAbove]", 
      "\[SpanFromAbove]", \
"\<\"\\!\\(TraditionalForm\\`\\(+\[Infinity]\\)\\)\"\>", "Indeterminato", 
      "\[SpanFromLeft]", "\[SpanFromAbove]"},
     {"\[SpanFromAbove]", "Indeterminato", "Indeterminato", "\[SpanFromLeft]",
       "\[SpanFromLeft]", "\[SpanFromLeft]", "\[SpanFromLeft]", 
      "\[SpanFromLeft]", "\[SpanFromLeft]", "\[SpanFromLeft]", 
      "\[SpanFromAbove]"}
    },
    AutoDelete->False,
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Center}}},
    GridBoxFrame->{"Columns" -> {
        Thickness[Large], 
        Thickness[Large], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0]}, "Rows" -> {
        Thickness[Large], 
        Thickness[Large], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0], 
        GrayLevel[0]}},
    GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
    GridBoxSpacings->{"Columns" -> {{1}}, "Rows" -> {{2}}}],
   "Grid"], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.532606595460355*^9, {3.532606626592407*^9, 3.532606754479168*^9}, {
   3.532606804650223*^9, 3.5326068216440887`*^9}, 3.532606895145232*^9, {
   3.532606958167644*^9, 3.532606967014525*^9}, {3.5326071326595373`*^9, 
   3.532607166803993*^9}, 3.532607249247843*^9, 3.5326144520689707`*^9, 
   3.532616221692984*^9}],

Cell["Come formulette:", "Text",
 CellChangeTimes->{{3.532616692340425*^9, 3.532616696292053*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox["finito", 
     RowBox[{"finito", "\[NotEqual]", "0"}]], "=", "finito"}], 
   TraditionalForm]]],
 ";"
}], "Item",
 CellChangeTimes->{{3.532616458773834*^9, 3.5326164690447807`*^9}, {
  3.532616714565551*^9, 3.5326167266155653`*^9}, {3.532755916138794*^9, 
  3.532755923058511*^9}, {3.532777181455347*^9, 3.532777208110393*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"finito", "\[NotEqual]", "0"}], 
     SuperscriptBox["0", "\[PlusMinus]"]], "=", 
    RowBox[{"\[PlusMinus]", "\[Infinity]"}]}], TraditionalForm]]],
 ";"
}], "Item",
 CellChangeTimes->{{3.532616729770492*^9, 3.532616741550622*^9}, {
  3.5327559361917048`*^9, 3.532755975614356*^9}, {3.532777259371155*^9, 
  3.532777293516612*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"\[PlusMinus]", "\[Infinity]"}], "finito"], "=", 
    RowBox[{"\[PlusMinus]", "\[Infinity]"}]}], TraditionalForm]]],
 ";"
}], "Item",
 CellChangeTimes->{{3.5326167494676113`*^9, 3.532616768685339*^9}, {
  3.532755995367882*^9, 3.532756001406485*^9}, {3.532777318524778*^9, 
  3.532777337894444*^9}, {3.532777381432157*^9, 3.532777396585519*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox["finito", 
     RowBox[{"\[PlusMinus]", "\[Infinity]"}]], "=", 
    SuperscriptBox["0", "\[PlusMinus]"]}], TraditionalForm]]],
 ";"
}], "Item",
 CellChangeTimes->{{3.5326167494676113`*^9, 3.532616768685339*^9}, {
  3.532755995367882*^9, 3.532756001406485*^9}, {3.532777318524778*^9, 
  3.532777337894444*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"\[PlusMinus]", "\[Infinity]"}], 
     RowBox[{"\[PlusMinus]", "\[Infinity]"}]], "=", "boh"}], 
   TraditionalForm]]],
 ";"
}], "Item",
 CellChangeTimes->{{3.5326167803540077`*^9, 3.5326167943608217`*^9}, {
  3.532756017621916*^9, 3.5327560305683117`*^9}, {3.5327774309685097`*^9, 
  3.532777438918062*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     SuperscriptBox["0", "\[PlusMinus]"], 
     SuperscriptBox["0", "\[PlusMinus]"]], "=", "boh"}], TraditionalForm]]],
 ";"
}], "Item",
 CellChangeTimes->{{3.5326167803540077`*^9, 3.5326167943608217`*^9}, {
  3.532756017621916*^9, 3.5327560305683117`*^9}, {3.5327774309685097`*^9, 
  3.532777453738284*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SlideShowNavigationBar",
 CellTags->"SlideShowHeader"],

Cell[CellGroupData[{

Cell["Quiz di verifica", "Section",
 CellChangeTimes->{{3.53277749909381*^9, 3.5327775066026917`*^9}}],

Cell["\<\
Rispondere al problema, cliccare su \[OpenCurlyDoubleQuote]risposta\
\[CloseCurlyDoubleQuote] per verificare, e poi cliccare su \
\[OpenCurlyDoubleQuote]dammi un nuovo limite\[CloseCurlyDoubleQuote] per \
avere un nuovo problema:\
\>", "Text",
 CellChangeTimes->{{3.532778633739833*^9, 3.53277868552806*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
      Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ =
       1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
        Hold[
         Button[
         "dammi un nuovo limite", $CellContext`tabella$1544 = 
           RandomChoice[{$CellContext`tabellaSomma, \
$CellContext`tabellaProdotto, $CellContext`tabellaQuoziente}]; \
{$CellContext`riga$1544, $CellContext`colonna$1544} = RandomInteger[{2, 
              Length[$CellContext`tabella$1544]}, 
             2]; {$CellContext`operazione$1544, $CellContext`a$1544, \
$CellContext`b$1544, $CellContext`risultato$1544} = {
             Part[$CellContext`tabella$1544, 1, 1], 
             Part[$CellContext`tabella$1544, $CellContext`riga$1544, 1], 
             Part[$CellContext`tabella$1544, $CellContext`colonna$1544, 1], 
             
             Part[$CellContext`tabella$1544, $CellContext`riga$1544, \
$CellContext`colonna$1544]}; $CellContext`i$1544 = 1]], 
        Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
      375., {32., 42.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
      Typeset`skipInitDone$$ = False}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, "Variables" :> {}, "ControllerVariables" :> {}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, 
        "Body" :> ($CellContext`i$1544 = 1; $CellContext`tabella$1544 = 
          RandomChoice[{1, 1, 2, 
             3} -> {$CellContext`tabellaSomma, \
$CellContext`tabellaDifferenza, $CellContext`tabellaProdotto, \
$CellContext`tabellaQuoziente}]; {$CellContext`riga$1544, \
$CellContext`colonna$1544} = RandomInteger[{2, 
             Length[$CellContext`tabella$1544]}, 
            2]; {$CellContext`operazione$1544, $CellContext`a$1544, \
$CellContext`b$1544, $CellContext`risultato$1544} = {
            Part[$CellContext`tabella$1544, 1, 1], 
            Part[$CellContext`tabella$1544, $CellContext`riga$1544, 1], 
            Part[$CellContext`tabella$1544, 1, $CellContext`colonna$1544], 
            
            Part[$CellContext`tabella$1544, $CellContext`riga$1544, \
$CellContext`colonna$1544]}; ReplaceAll[
           TabView[
            ReplaceAll[$CellContext`etichetta -> DisplayForm[
               If[$CellContext`operazione$1544 =!= $CellContext`Quoziente, 
                RowBox[{$CellContext`a$1544, 
                  
                  Switch[$CellContext`operazione$1544, $CellContext`Somma, 
                   "+", $CellContext`Prodotto, 
                   "\[Cross]", $CellContext`Differenza, 
                   "-"], $CellContext`b$1544, "=", $CellContext`r}], 
                RowBox[{
                  FractionBox[$CellContext`a$1544, $CellContext`b$1544], 
                  "=", $CellContext`r}]]], {{$CellContext`r -> 
               "?", $CellContext`etichetta -> 
               "problema"}, {$CellContext`r -> $CellContext`risultato$1544, \
$CellContext`etichetta -> "risposta"}}], $CellContext`i$1544, ImageSize -> 
            500], $CellContext`sostituzioniConParentesi]), "Specifications" :> {
          Button[
          "dammi un nuovo limite", $CellContext`tabella$1544 = 
            RandomChoice[{$CellContext`tabellaSomma, \
$CellContext`tabellaProdotto, $CellContext`tabellaQuoziente}]; \
{$CellContext`riga$1544, $CellContext`colonna$1544} = RandomInteger[{2, 
               Length[$CellContext`tabella$1544]}, 
              2]; {$CellContext`operazione$1544, $CellContext`a$1544, \
$CellContext`b$1544, $CellContext`risultato$1544} = {
              Part[$CellContext`tabella$1544, 1, 1], 
              Part[$CellContext`tabella$1544, $CellContext`riga$1544, 1], 
              Part[$CellContext`tabella$1544, $CellContext`colonna$1544, 1], 
              
              Part[$CellContext`tabella$1544, $CellContext`riga$1544, \
$CellContext`colonna$1544]}; $CellContext`i$1544 = 1]}, "Options" :> {}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{416., {77., 87.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      Initialization:>({
        Attributes[$CellContext`i$1544] = {Temporary}, 
         Attributes[$CellContext`tabella$1544] = {
          Temporary}, $CellContext`tabellaSomma = {{$CellContext`Somma, \
$CellContext`MenoInfinito, $CellContext`Finito, \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Indeterminato}, \
{$CellContext`MenoInfinito, $CellContext`MenoInfinito, \
$CellContext`MenoInfinito, $CellContext`Indeterminato, \
$CellContext`Indeterminato}, {$CellContext`Finito, $CellContext`MenoInfinito, \
$CellContext`Finito, $CellContext`Pi\[UGrave]Infinito, \
$CellContext`Indeterminato}, {$CellContext`Pi\[UGrave]Infinito, \
$CellContext`Indeterminato, $CellContext`Pi\[UGrave]Infinito, $CellContext`Pi\
\[UGrave]Infinito, $CellContext`Indeterminato}, {$CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato}}, 
         TagSet[$CellContext`MenoInfinito, -$CellContext`MenoInfinito, \
$CellContext`Pi\[UGrave]Infinito], 
         UpSet[$CellContext`MenoInfinito + $CellContext`MenoInfinito, \
$CellContext`MenoInfinito], 
         TagSet[$CellContext`MenoInfinito, $CellContext`FinitoNegativo + \
$CellContext`MenoInfinito, $CellContext`MenoInfinito], 
         TagSet[$CellContext`MenoInfinito, $CellContext`MenoInfinito + \
$CellContext`ZeroDaSinistra, $CellContext`MenoInfinito], 
         TagSet[$CellContext`MenoInfinito, $CellContext`MenoInfinito + \
$CellContext`Zero, $CellContext`MenoInfinito], 
         TagSet[$CellContext`MenoInfinito, $CellContext`MenoInfinito + \
$CellContext`ZeroDaDestra, $CellContext`MenoInfinito], 
         TagSet[$CellContext`MenoInfinito, $CellContext`FinitoPositivo + \
$CellContext`MenoInfinito, $CellContext`MenoInfinito], 
         TagSet[$CellContext`MenoInfinito, $CellContext`MenoInfinito + \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Indeterminato], 
         TagSet[$CellContext`MenoInfinito, $CellContext`Indeterminato + \
$CellContext`MenoInfinito, $CellContext`Indeterminato], 
         TagSet[$CellContext`MenoInfinito, $CellContext`Finito + \
$CellContext`MenoInfinito, $CellContext`MenoInfinito], 
         TagSet[$CellContext`Pi\[UGrave]Infinito, \
-$CellContext`Pi\[UGrave]Infinito, $CellContext`MenoInfinito], 
         TagSet[$CellContext`Pi\[UGrave]Infinito, $CellContext`MenoInfinito + \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Indeterminato], 
         TagSet[$CellContext`Pi\[UGrave]Infinito, $CellContext`FinitoNegativo + \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Pi\[UGrave]Infinito], 
         TagSet[$CellContext`Pi\[UGrave]Infinito, \
$CellContext`Pi\[UGrave]Infinito + $CellContext`ZeroDaSinistra, \
$CellContext`Pi\[UGrave]Infinito], 
         TagSet[$CellContext`Pi\[UGrave]Infinito, \
$CellContext`Pi\[UGrave]Infinito + $CellContext`Zero, \
$CellContext`Pi\[UGrave]Infinito], 
         TagSet[$CellContext`Pi\[UGrave]Infinito, \
$CellContext`Pi\[UGrave]Infinito + $CellContext`ZeroDaDestra, $CellContext`Pi\
\[UGrave]Infinito], 
         TagSet[$CellContext`Pi\[UGrave]Infinito, $CellContext`FinitoPositivo + \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Pi\[UGrave]Infinito], 
         UpSet[$CellContext`Pi\[UGrave]Infinito + \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Pi\[UGrave]Infinito], 
         TagSet[$CellContext`Pi\[UGrave]Infinito, $CellContext`Indeterminato + \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Indeterminato], 
         TagSet[$CellContext`Pi\[UGrave]Infinito, $CellContext`Finito + \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Pi\[UGrave]Infinito], 
         TagSet[$CellContext`Indeterminato, -$CellContext`Indeterminato, \
$CellContext`Indeterminato], 
         TagSet[$CellContext`Indeterminato, $CellContext`Indeterminato + \
$CellContext`MenoInfinito, $CellContext`Indeterminato], 
         TagSet[$CellContext`Indeterminato, $CellContext`FinitoNegativo + \
$CellContext`Indeterminato, $CellContext`Indeterminato], 
         TagSet[$CellContext`Indeterminato, $CellContext`Indeterminato + \
$CellContext`ZeroDaSinistra, $CellContext`Indeterminato], 
         TagSet[$CellContext`Indeterminato, $CellContext`Indeterminato + \
$CellContext`Zero, $CellContext`Indeterminato], 
         TagSet[$CellContext`Indeterminato, $CellContext`Indeterminato + \
$CellContext`ZeroDaDestra, $CellContext`Indeterminato], 
         TagSet[$CellContext`Indeterminato, $CellContext`FinitoPositivo + \
$CellContext`Indeterminato, $CellContext`Indeterminato], 
         TagSet[$CellContext`Indeterminato, $CellContext`Indeterminato + \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Indeterminato], 
         UpSet[$CellContext`Indeterminato + $CellContext`Indeterminato, \
$CellContext`Indeterminato], 
         TagSet[$CellContext`Indeterminato, $CellContext`Finito + \
$CellContext`Indeterminato, $CellContext`Indeterminato], 
         TagSet[$CellContext`FinitoNegativo, -$CellContext`FinitoNegativo, \
$CellContext`FinitoPositivo], 
         TagSet[$CellContext`FinitoNegativo, $CellContext`FinitoNegativo + \
$CellContext`MenoInfinito, $CellContext`MenoInfinito], 
         UpSet[$CellContext`FinitoNegativo + $CellContext`FinitoNegativo, \
$CellContext`FinitoNegativo], 
         TagSet[$CellContext`FinitoNegativo, $CellContext`FinitoNegativo + \
$CellContext`ZeroDaSinistra, $CellContext`FinitoNegativo], 
         TagSet[$CellContext`FinitoNegativo, $CellContext`FinitoNegativo + \
$CellContext`Zero, $CellContext`FinitoNegativo], 
         TagSet[$CellContext`FinitoNegativo, $CellContext`FinitoNegativo + \
$CellContext`ZeroDaDestra, $CellContext`FinitoNegativo], 
         TagSet[$CellContext`FinitoNegativo, $CellContext`FinitoNegativo + \
$CellContext`FinitoPositivo, $CellContext`Finito], 
         TagSet[$CellContext`FinitoNegativo, $CellContext`FinitoNegativo + \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Pi\[UGrave]Infinito], 
         TagSet[$CellContext`FinitoNegativo, $CellContext`FinitoNegativo + \
$CellContext`Indeterminato, $CellContext`Indeterminato], 
         TagSet[$CellContext`FinitoPositivo, -$CellContext`FinitoPositivo, \
$CellContext`FinitoNegativo], 
         TagSet[$CellContext`FinitoPositivo, $CellContext`FinitoPositivo + \
$CellContext`MenoInfinito, $CellContext`MenoInfinito], 
         TagSet[$CellContext`FinitoPositivo, $CellContext`FinitoNegativo + \
$CellContext`FinitoPositivo, $CellContext`Finito], 
         TagSet[$CellContext`FinitoPositivo, $CellContext`FinitoPositivo + \
$CellContext`ZeroDaSinistra, $CellContext`FinitoPositivo], 
         TagSet[$CellContext`FinitoPositivo, $CellContext`FinitoPositivo + \
$CellContext`Zero, $CellContext`FinitoPositivo], 
         TagSet[$CellContext`FinitoPositivo, $CellContext`FinitoPositivo + \
$CellContext`ZeroDaDestra, $CellContext`FinitoPositivo], 
         UpSet[$CellContext`FinitoPositivo + $CellContext`FinitoPositivo, \
$CellContext`FinitoPositivo], 
         TagSet[$CellContext`FinitoPositivo, $CellContext`FinitoPositivo + \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Pi\[UGrave]Infinito], 
         TagSet[$CellContext`FinitoPositivo, $CellContext`FinitoPositivo + \
$CellContext`Indeterminato, $CellContext`Indeterminato], 
         TagSet[$CellContext`Finito, -$CellContext`Finito, \
$CellContext`Finito], 
         TagSet[$CellContext`Finito, $CellContext`Finito + \
$CellContext`MenoInfinito, $CellContext`MenoInfinito], 
         UpSet[$CellContext`Finito + $CellContext`Finito, \
$CellContext`Finito], 
         TagSet[$CellContext`Finito, $CellContext`Finito + $CellContext`Pi\
\[UGrave]Infinito, $CellContext`Pi\[UGrave]Infinito], 
         TagSet[$CellContext`Finito, $CellContext`Finito + \
$CellContext`Indeterminato, $CellContext`Indeterminato], 
         TagSet[$CellContext`ZeroDaSinistra, -$CellContext`ZeroDaSinistra, \
$CellContext`ZeroDaDestra], 
         TagSet[$CellContext`ZeroDaSinistra, $CellContext`MenoInfinito + \
$CellContext`ZeroDaSinistra, $CellContext`MenoInfinito], 
         TagSet[$CellContext`ZeroDaSinistra, $CellContext`FinitoNegativo + \
$CellContext`ZeroDaSinistra, $CellContext`FinitoNegativo], 
         UpSet[$CellContext`ZeroDaSinistra + $CellContext`ZeroDaSinistra, \
$CellContext`ZeroDaSinistra], 
         TagSet[$CellContext`ZeroDaSinistra, $CellContext`Zero + \
$CellContext`ZeroDaSinistra, $CellContext`Zero], 
         TagSet[$CellContext`ZeroDaSinistra, $CellContext`ZeroDaDestra + \
$CellContext`ZeroDaSinistra, $CellContext`Zero], 
         TagSet[$CellContext`ZeroDaSinistra, $CellContext`FinitoPositivo + \
$CellContext`ZeroDaSinistra, $CellContext`FinitoPositivo], 
         TagSet[$CellContext`ZeroDaSinistra, $CellContext`Pi\[UGrave]Infinito + \
$CellContext`ZeroDaSinistra, $CellContext`Pi\[UGrave]Infinito], 
         TagSet[$CellContext`ZeroDaSinistra, $CellContext`Indeterminato + \
$CellContext`ZeroDaSinistra, $CellContext`Indeterminato], 
         TagSet[$CellContext`ZeroDaDestra, -$CellContext`ZeroDaDestra, \
$CellContext`ZeroDaSinistra], 
         TagSet[$CellContext`ZeroDaDestra, $CellContext`MenoInfinito + \
$CellContext`ZeroDaDestra, $CellContext`MenoInfinito], 
         TagSet[$CellContext`ZeroDaDestra, $CellContext`FinitoNegativo + \
$CellContext`ZeroDaDestra, $CellContext`FinitoNegativo], 
         TagSet[$CellContext`ZeroDaDestra, $CellContext`ZeroDaDestra + \
$CellContext`ZeroDaSinistra, $CellContext`Zero], 
         TagSet[$CellContext`ZeroDaDestra, $CellContext`Zero + \
$CellContext`ZeroDaDestra, $CellContext`Zero], 
         UpSet[$CellContext`ZeroDaDestra + $CellContext`ZeroDaDestra, \
$CellContext`ZeroDaDestra], 
         TagSet[$CellContext`ZeroDaDestra, $CellContext`FinitoPositivo + \
$CellContext`ZeroDaDestra, $CellContext`FinitoPositivo], 
         TagSet[$CellContext`ZeroDaDestra, $CellContext`Pi\[UGrave]Infinito + \
$CellContext`ZeroDaDestra, $CellContext`Pi\[UGrave]Infinito], 
         TagSet[$CellContext`ZeroDaDestra, $CellContext`Indeterminato + \
$CellContext`ZeroDaDestra, $CellContext`Indeterminato], 
         TagSet[$CellContext`Zero, -$CellContext`Zero, $CellContext`Zero], 
         TagSet[$CellContext`Zero, $CellContext`MenoInfinito + \
$CellContext`Zero, $CellContext`MenoInfinito], 
         TagSet[$CellContext`Zero, $CellContext`FinitoNegativo + \
$CellContext`Zero, $CellContext`FinitoNegativo], 
         TagSet[$CellContext`Zero, $CellContext`Zero + \
$CellContext`ZeroDaSinistra, $CellContext`Zero], 
         UpSet[$CellContext`Zero + $CellContext`Zero, $CellContext`Zero], 
         TagSet[$CellContext`Zero, $CellContext`Zero + \
$CellContext`ZeroDaDestra, $CellContext`Zero], 
         TagSet[$CellContext`Zero, $CellContext`FinitoPositivo + \
$CellContext`Zero, $CellContext`FinitoPositivo], 
         TagSet[$CellContext`Zero, $CellContext`Pi\[UGrave]Infinito + \
$CellContext`Zero, $CellContext`Pi\[UGrave]Infinito], 
         TagSet[$CellContext`Zero, $CellContext`Indeterminato + \
$CellContext`Zero, $CellContext`Indeterminato], \
$CellContext`tabellaDifferenza = {{$CellContext`Differenza, \
$CellContext`MenoInfinito, $CellContext`Finito, \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Indeterminato}, \
{$CellContext`MenoInfinito, $CellContext`Indeterminato, \
$CellContext`MenoInfinito, $CellContext`MenoInfinito, \
$CellContext`Indeterminato}, {$CellContext`Finito, \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Finito, \
$CellContext`MenoInfinito, $CellContext`Indeterminato}, {$CellContext`Pi\
\[UGrave]Infinito, $CellContext`Pi\[UGrave]Infinito, \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Indeterminato, \
$CellContext`Indeterminato}, {$CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato}}, \
$CellContext`tabellaProdotto = {{$CellContext`Prodotto, \
$CellContext`MenoInfinito, $CellContext`FinitoNegativo, \
$CellContext`ZeroDaSinistra, $CellContext`Zero, $CellContext`ZeroDaDestra, \
$CellContext`FinitoPositivo, $CellContext`Pi\[UGrave]Infinito, \
$CellContext`Indeterminato}, {$CellContext`MenoInfinito, $CellContext`Pi\
\[UGrave]Infinito, $CellContext`Pi\[UGrave]Infinito, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`MenoInfinito, \
$CellContext`MenoInfinito, $CellContext`Indeterminato}, \
{$CellContext`FinitoNegativo, $CellContext`Pi\[UGrave]Infinito, \
$CellContext`FinitoPositivo, $CellContext`ZeroDaDestra, $CellContext`Zero, \
$CellContext`ZeroDaSinistra, $CellContext`FinitoNegativo, \
$CellContext`MenoInfinito, $CellContext`Indeterminato}, \
{$CellContext`ZeroDaSinistra, $CellContext`Indeterminato, \
$CellContext`ZeroDaDestra, $CellContext`ZeroDaDestra, $CellContext`Zero, \
$CellContext`ZeroDaSinistra, $CellContext`ZeroDaSinistra, \
$CellContext`Indeterminato, $CellContext`Indeterminato}, {$CellContext`Zero, \
$CellContext`Indeterminato, $CellContext`Zero, $CellContext`Zero, \
$CellContext`Zero, $CellContext`Zero, $CellContext`Zero, \
$CellContext`Indeterminato, $CellContext`Indeterminato}, \
{$CellContext`ZeroDaDestra, $CellContext`Indeterminato, \
$CellContext`ZeroDaSinistra, $CellContext`ZeroDaSinistra, $CellContext`Zero, \
$CellContext`ZeroDaDestra, $CellContext`ZeroDaDestra, \
$CellContext`Indeterminato, $CellContext`Indeterminato}, \
{$CellContext`FinitoPositivo, $CellContext`MenoInfinito, \
$CellContext`FinitoNegativo, $CellContext`ZeroDaSinistra, $CellContext`Zero, \
$CellContext`ZeroDaDestra, $CellContext`FinitoPositivo, $CellContext`Pi\
\[UGrave]Infinito, $CellContext`Indeterminato}, \
{$CellContext`Pi\[UGrave]Infinito, $CellContext`MenoInfinito, \
$CellContext`MenoInfinito, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato, $CellContext`Pi\
\[UGrave]Infinito, $CellContext`Pi\[UGrave]Infinito, \
$CellContext`Indeterminato}, {$CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato}}, \
$CellContext`tabellaQuoziente = {{$CellContext`Quoziente, \
$CellContext`MenoInfinito, $CellContext`FinitoNegativo, \
$CellContext`ZeroDaSinistra, $CellContext`Zero, $CellContext`ZeroDaDestra, \
$CellContext`FinitoPositivo, $CellContext`Pi\[UGrave]Infinito, \
$CellContext`Pi\[UGrave]OMenoInfinito, $CellContext`Indeterminato}, \
{$CellContext`MenoInfinito, $CellContext`Indeterminato, $CellContext`Pi\
\[UGrave]Infinito, $CellContext`Pi\[UGrave]Infinito, \
$CellContext`Pi\[UGrave]OMenoInfinito, $CellContext`MenoInfinito, \
$CellContext`MenoInfinito, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato}, \
{$CellContext`FinitoNegativo, $CellContext`ZeroDaDestra, \
$CellContext`FinitoPositivo, $CellContext`Pi\[UGrave]Infinito, \
$CellContext`Pi\[UGrave]OMenoInfinito, $CellContext`MenoInfinito, \
$CellContext`FinitoNegativo, $CellContext`ZeroDaSinistra, $CellContext`Zero, \
$CellContext`Indeterminato}, {$CellContext`ZeroDaSinistra, \
$CellContext`ZeroDaDestra, $CellContext`ZeroDaDestra, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`ZeroDaSinistra, \
$CellContext`ZeroDaSinistra, $CellContext`Zero, $CellContext`Indeterminato}, \
{$CellContext`Zero, $CellContext`Zero, $CellContext`Zero, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Zero, $CellContext`Zero, \
$CellContext`Zero, $CellContext`Indeterminato}, {$CellContext`ZeroDaDestra, \
$CellContext`ZeroDaSinistra, $CellContext`ZeroDaSinistra, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`ZeroDaDestra, \
$CellContext`ZeroDaDestra, $CellContext`Zero, $CellContext`Indeterminato}, \
{$CellContext`FinitoPositivo, $CellContext`ZeroDaSinistra, \
$CellContext`FinitoNegativo, $CellContext`MenoInfinito, $CellContext`Pi\
\[UGrave]OMenoInfinito, $CellContext`Pi\[UGrave]Infinito, \
$CellContext`FinitoPositivo, $CellContext`ZeroDaDestra, $CellContext`Zero, \
$CellContext`Indeterminato}, {$CellContext`Pi\[UGrave]Infinito, \
$CellContext`Indeterminato, $CellContext`MenoInfinito, \
$CellContext`MenoInfinito, $CellContext`Pi\[UGrave]OMenoInfinito, \
$CellContext`Pi\[UGrave]Infinito, $CellContext`Pi\[UGrave]Infinito, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato}, {$CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato, $CellContext`Indeterminato, \
$CellContext`Indeterminato}}, 
         Attributes[$CellContext`riga$1544] = {Temporary}, 
         Attributes[$CellContext`colonna$1544] = {Temporary}, 
         Attributes[$CellContext`operazione$1544] = {Temporary}, 
         Attributes[$CellContext`a$1544] = {Temporary}, 
         Attributes[$CellContext`b$1544] = {Temporary}, 
         Attributes[$CellContext`risultato$1544] = {
          Temporary}, $CellContext`sostituzioniConParentesi = \
{$CellContext`MenoInfinito -> 
           "\!\(TraditionalForm\`\((\(-\[Infinity]\))\)\)", $CellContext`Pi\
\[UGrave]Infinito -> 
           "\!\(TraditionalForm\`\((\(+\[Infinity]\))\)\)", $CellContext`Pi\
\[UGrave]OMenoInfinito -> 
           "\!\(TraditionalForm\`\((\(\[PlusMinus]\[Infinity]\))\)\)", \
$CellContext`ZeroDaSinistra -> 
           "\!\(TraditionalForm\`\*SuperscriptBox[\(0\), \(-\)]\)", \
$CellContext`ZeroDaDestra -> 
           "\!\(TraditionalForm\`\*SuperscriptBox[\(0\), \(+\)]\)", \
$CellContext`Zero -> 
           "\!\(TraditionalForm\`\*SuperscriptBox[\(0\), \
\(\[PlusMinus]\)]\)"}}; Typeset`initDone$$ = True),
      SynchronousInitialization->True,
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Manipulate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output",
 CellChangeTimes->{{3.532779325049562*^9, 3.53277934584437*^9}, {
  3.542366010208898*^9, 3.542366049873724*^9}}]
}, Open  ]]
}, Open  ]]
},
ScreenStyleEnvironment->"SlideShow",
WindowSize->{1119, 798},
WindowMargins->{{Automatic, 302}, {Automatic, 2}},
Magnification:>FEPrivate`If[
  FEPrivate`Equal[FEPrivate`$VersionNumber, 6.], 0.75, 0.75 Inherited],
FrontEndVersion->"8.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (October 5, \
2011)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "SlideShowHeader"->{
  Cell[1257, 32, 64, 1, 1, "SlideShowNavigationBar",
   CellTags->"SlideShowHeader"],
  Cell[2037, 58, 64, 1, 1, "SlideShowNavigationBar",
   CellTags->"SlideShowHeader"],
  Cell[12599, 437, 64, 1, 1, "SlideShowNavigationBar",
   CellTags->"SlideShowHeader"],
  Cell[24343, 708, 64, 1, 1, "SlideShowNavigationBar",
   CellTags->"SlideShowHeader"],
  Cell[34032, 1024, 64, 1, 1, "SlideShowNavigationBar",
   CellTags->"SlideShowHeader"],
  Cell[48313, 1442, 64, 1, 1, "SlideShowNavigationBar",
   CellTags->"SlideShowHeader"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"SlideShowHeader", 71835, 1855}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1257, 32, 64, 1, 1, "SlideShowNavigationBar",
 CellTags->"SlideShowHeader"],
Cell[1324, 35, 186, 5, 167, "Title"],
Cell[1513, 42, 487, 11, 99, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[2037, 58, 64, 1, 1, "SlideShowNavigationBar",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[2126, 63, 129, 3, 63, "Section"],
Cell[2258, 68, 822, 29, 24, "Text"],
Cell[3083, 99, 94, 1, 24, "Text"],
Cell[CellGroupData[{
Cell[3202, 104, 712, 26, 21, "Item"],
Cell[3917, 132, 749, 29, 21, "Item"],
Cell[4669, 163, 747, 29, 21, "Item"],
Cell[5419, 194, 798, 29, 21, "Item"],
Cell[6220, 225, 800, 29, 21, "Item"],
Cell[7023, 256, 1018, 33, 38, "Item"]
}, Open  ]],
Cell[8056, 292, 102, 1, 24, "Text"],
Cell[8161, 295, 2354, 59, 251, "Output"],
Cell[10518, 356, 105, 1, 24, "Text"],
Cell[CellGroupData[{
Cell[10648, 361, 163, 4, 21, "Item"],
Cell[10814, 367, 146, 3, 21, "Item"],
Cell[10963, 372, 140, 3, 21, "Item"],
Cell[11106, 377, 159, 3, 21, "Item"]
}, Open  ]],
Cell[11280, 383, 98, 1, 24, "Text"],
Cell[CellGroupData[{
Cell[11403, 388, 298, 9, 21, "Item"],
Cell[11704, 399, 252, 9, 21, "Item"],
Cell[11959, 410, 308, 9, 21, "Item"],
Cell[12270, 421, 268, 9, 21, "Item"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[12599, 437, 64, 1, 1, "SlideShowNavigationBar",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[12688, 442, 185, 4, 63, "Section"],
Cell[12876, 448, 777, 27, 24, "Text"],
Cell[13656, 477, 826, 26, 41, "Text"],
Cell[14485, 505, 9809, 197, 330, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[24343, 708, 64, 1, 1, "SlideShowNavigationBar",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[24432, 713, 234, 5, 63, "Section"],
Cell[24669, 720, 823, 28, 24, "Text"],
Cell[25495, 750, 94, 1, 24, "Text"],
Cell[CellGroupData[{
Cell[25614, 755, 652, 24, 21, "Item"],
Cell[26269, 781, 708, 26, 21, "Item"],
Cell[26980, 809, 810, 29, 21, "Item"],
Cell[27793, 840, 864, 26, 38, "Item"]
}, Open  ]],
Cell[28672, 869, 102, 1, 24, "Text"],
Cell[28777, 872, 3507, 85, 368, "Output"],
Cell[32287, 959, 98, 1, 24, "Text"],
Cell[CellGroupData[{
Cell[32410, 964, 330, 10, 21, "Item"],
Cell[32743, 976, 444, 13, 21, "Item"],
Cell[33190, 991, 439, 13, 21, "Item"],
Cell[33632, 1006, 339, 11, 21, "Item"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[34032, 1024, 64, 1, 1, "SlideShowNavigationBar",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[34121, 1029, 280, 5, 63, "Section"],
Cell[34404, 1036, 876, 28, 24, "Text"],
Cell[35283, 1066, 94, 1, 24, "Text"],
Cell[CellGroupData[{
Cell[35402, 1071, 938, 32, 21, "Item"],
Cell[36343, 1105, 955, 30, 21, "Item"],
Cell[37301, 1137, 936, 29, 21, "Item"],
Cell[38240, 1168, 918, 29, 21, "Item"],
Cell[39161, 1199, 1060, 32, 38, "Item"]
}, Open  ]],
Cell[40236, 1234, 102, 1, 24, "Text"],
Cell[40341, 1237, 5379, 113, 417, "Output"],
Cell[45723, 1352, 98, 1, 24, "Text"],
Cell[CellGroupData[{
Cell[45846, 1357, 398, 11, 29, "Item"],
Cell[46247, 1370, 415, 12, 28, "Item"],
Cell[46665, 1384, 429, 11, 27, "Item"],
Cell[47097, 1397, 379, 11, 28, "Item"],
Cell[47479, 1410, 391, 12, 27, "Item"],
Cell[47873, 1424, 379, 11, 30, "Item"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[48313, 1442, 64, 1, 1, "SlideShowNavigationBar",
 CellTags->"SlideShowHeader"],
Cell[CellGroupData[{
Cell[48402, 1447, 102, 1, 63, "Section"],
Cell[48507, 1450, 318, 6, 24, "Text"],
Cell[48828, 1458, 22528, 379, 137, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Nw0169S#T9pqPCwZcv59Lmr5 *)
