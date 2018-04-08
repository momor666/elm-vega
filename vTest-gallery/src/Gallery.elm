port module Gallery exposing (elmToJS)

import Html exposing (Html, div, pre)
import Html.Attributes exposing (id)
import Json.Encode
import Platform
import Vega exposing (..)


-- NOTE: All data sources in these examples originally provided at
-- https://vega.github.io/vega-datasets/
-- The examples themselves reproduce those at https://vega.github.io/vega/examples/


barChart1 : Spec
barChart1 =
    let
        table =
            dataFromColumns "table" []
                << dataColumn "category" (Strings [ "A", "B", "C", "D", "E", "F", "G", "H" ])
                << dataColumn "amount" (Numbers [ 28, 55, 43, 91, 81, 53, 19, 87 ])

        ds =
            dataSource [ table [] ]

        sc =
            scales
                << scale "xscale"
                    [ SType ScBand
                    , SDomain (DData [ DDataset "table", DField "category" ])
                    , SRange (RDefault RWidth)
                    , SPadding 0.05
                    , SRound True
                    ]
                << scale "yscale"
                    [ SDomain (DData [ DDataset "table", DField "amount" ])
                    , SNice (IsNice True)
                    , SRange (RDefault RHeight)
                    ]

        ax =
            axes
                << axis "xscale" Bottom []
                << axis "yscale" Left []

        si =
            signals
                << signal "tooltip"
                    [ SiValue Empty
                    , SiOn
                        [ [ EEvents "rect:mouseover", EUpdate "datum" ]
                        , [ EEvents "rect:mouseout", EUpdate "" ]
                        ]
                    ]

        mk =
            marks
                << mark Rect
                    [ MFrom (SData "table")
                    , MEncode
                        [ Enter
                            -- TODO: Restrict the different Mark Properties to their relevant options?
                            [ MX [ VScale (FName "xscale"), VField (FName "category") ]
                            , MWidth [ VScale (FName "xscale"), VBand 1 ]
                            , MY [ VScale (FName "yscale"), VField (FName "amount") ]
                            , MY2 [ VScale (FName "yscale"), VNumber 0 ]
                            ]
                        , Update [ MFill [ VString "steelblue" ] ]
                        , Hover [ MFill [ VString "red" ] ]
                        ]
                    ]
                << mark Text
                    [ MEncode
                        [ Enter
                            [ MAlign [ VString "center" ]
                            , MBaseline [ VString "bottom" ]
                            , MFill [ VString "#333" ]
                            ]
                        , Update
                            [ MX [ VScale (FName "xscale"), VSignal (SName "tooltip.category"), VBand 0.5 ]
                            , MY [ VScale (FName "yscale"), VSignal (SName "tooltip.amount"), VOffset (VNumber -2) ]
                            , MText [ VSignal (SName "tooltip.amount") ]
                            , MFillOpacity [ VIfElse "datum === tooltip" [ VNumber 0 ] [ VNumber 1 ] ]
                            ]
                        ]
                    ]
    in
    toVega
        [ width 400, height 200, padding (PSize 5), ds, si [], sc [], ax [], mk [] ]


barChart2 : Spec
barChart2 =
    let
        table =
            dataFromRows "table" []
                << dataRow [ ( "x", Number 0 ), ( "y", Number 28 ), ( "c", Number 0 ) ]
                << dataRow [ ( "x", Number 0 ), ( "y", Number 55 ), ( "c", Number 1 ) ]
                << dataRow [ ( "x", Number 1 ), ( "y", Number 43 ), ( "c", Number 0 ) ]
                << dataRow [ ( "x", Number 1 ), ( "y", Number 91 ), ( "c", Number 1 ) ]
                << dataRow [ ( "x", Number 2 ), ( "y", Number 81 ), ( "c", Number 0 ) ]
                << dataRow [ ( "x", Number 2 ), ( "y", Number 53 ), ( "c", Number 1 ) ]
                << dataRow [ ( "x", Number 3 ), ( "y", Number 19 ), ( "c", Number 0 ) ]
                << dataRow [ ( "x", Number 3 ), ( "y", Number 87 ), ( "c", Number 1 ) ]
                << dataRow [ ( "x", Number 4 ), ( "y", Number 52 ), ( "c", Number 0 ) ]
                << dataRow [ ( "x", Number 4 ), ( "y", Number 48 ), ( "c", Number 1 ) ]
                << dataRow [ ( "x", Number 5 ), ( "y", Number 24 ), ( "c", Number 0 ) ]
                << dataRow [ ( "x", Number 5 ), ( "y", Number 49 ), ( "c", Number 1 ) ]
                << dataRow [ ( "x", Number 6 ), ( "y", Number 87 ), ( "c", Number 0 ) ]
                << dataRow [ ( "x", Number 6 ), ( "y", Number 66 ), ( "c", Number 1 ) ]
                << dataRow [ ( "x", Number 7 ), ( "y", Number 17 ), ( "c", Number 0 ) ]
                << dataRow [ ( "x", Number 7 ), ( "y", Number 27 ), ( "c", Number 1 ) ]
                << dataRow [ ( "x", Number 8 ), ( "y", Number 68 ), ( "c", Number 0 ) ]
                << dataRow [ ( "x", Number 8 ), ( "y", Number 16 ), ( "c", Number 1 ) ]
                << dataRow [ ( "x", Number 9 ), ( "y", Number 49 ), ( "c", Number 0 ) ]
                << dataRow [ ( "x", Number 9 ), ( "y", Number 15 ), ( "c", Number 1 ) ]

        ds =
            dataSource
                [ table []
                    |> transform
                        [ TStack
                            [ StGroupBy [ FieldName "x" ]
                            , StSort [ CoField [ FieldName "c" ] ]
                            , StField (FieldName "y")
                            ]
                        ]
                ]

        sc =
            scales
                << scale "x"
                    [ SType ScBand
                    , SRange (RDefault RWidth)
                    , SDomain (DData [ DDataset "table", DField "x" ])
                    ]
                << scale "y"
                    [ SType ScLinear
                    , SRange (RDefault RHeight)
                    , SNice (IsNice True)
                    , SZero True
                    , SDomain (DData [ DDataset "table", DField "y1" ])
                    ]
                << scale "color"
                    [ SType ScOrdinal
                    , SRange (RDefault RCategory)
                    , SDomain (DData [ DDataset "table", DField "c" ])
                    ]

        ax =
            axes
                << axis "x" Bottom [ AxScale "x", AxZIndex 1 ]
                << axis "yscale" Left [ AxScale "y", AxZIndex 1 ]

        mk =
            marks
                << mark Rect
                    [ MFrom (SData "table")
                    , MEncode
                        [ Enter
                            [ MX [ VScale (FName "x"), VField (FName "x") ]
                            , MWidth [ VScale (FName "x"), VBand 1, VOffset (VNumber -1) ]
                            , MY [ VScale (FName "y"), VField (FName "y0") ]
                            , MY2 [ VScale (FName "y"), VField (FName "y1") ]
                            , MFill [ VScale (FName "color"), VField (FName "c") ]
                            ]
                        , Update [ MFillOpacity [ VNumber 1 ] ]
                        , Hover [ MFillOpacity [ VNumber 0.5 ] ]
                        ]
                    ]
    in
    toVega
        [ width 400, height 200, padding (PSize 5), ds, sc [], ax [], mk [] ]


barChart3 : Spec
barChart3 =
    let
        table =
            dataFromColumns "table" []
                << dataColumn "category" (Strings [ "A", "A", "A", "A", "B", "B", "B", "B", "C", "C", "C", "C" ])
                << dataColumn "position" (Numbers [ 0, 1, 2, 3, 0, 1, 2, 3, 0, 1, 2, 3 ])
                << dataColumn "value" (Numbers [ 0.1, 0.6, 0.9, 0.4, 0.7, 0.2, 1.1, 0.8, 0.6, 0.1, 0.2, 0.7 ])

        ds =
            dataSource [ table [] ]

        sc =
            scales
                << scale "yscale"
                    [ SType ScBand
                    , SDomain (DData [ DDataset "table", DField "category" ])
                    , SRange (RDefault RHeight)
                    , SPadding 0.2
                    ]
                << scale "xscale"
                    [ SType ScLinear
                    , SDomain (DData [ DDataset "table", DField "value" ])
                    , SRange (RDefault RWidth)
                    , SRound True
                    , SZero True
                    , SNice (IsNice True)
                    ]
                << scale "color"
                    [ SType ScOrdinal
                    , SDomain (DData [ DDataset "table", DField "position" ])
                    , SRange (RScheme "category20" [])
                    ]

        ax =
            axes
                << axis "yscale" Left [ AxTickSize 0, AxLabelPadding 4, AxZIndex 1 ]
                << axis "xscale" Bottom []

        mk =
            marks
                << mark Group
                    [ MFrom
                        (SFacet
                            [ FaData "table"
                            , FaName "facet"
                            , FaGroupBy [ "category" ]
                            ]
                        )
                    , MEncode
                        [ Enter
                            [ MY [ VScale (FName "yscale"), VField (FName "category") ] ]
                        ]

                    -- TODO: Add signals and other group specific contents
                    --, MSignals []
                    ]

        -- << mark Rect
        --     [ MFrom (SData "table")
        --     , MEncode
        --         [ Enter
        --             [ MX [ VScale (FName "xscale"), VField (FName "category") ]
        --             , MWidth [ VScale (FName "xscale"), VBand 1 ]
        --             , MY [ VScale (FName "yscale"), VField (FName "amount") ]
        --             , MY2 [ VScale (FName "yscale"), VNumber 0 ]
        --             ]
        --         , Update [ MFill [ VString "steelblue" ] ]
        --         , Hover [ MFill [ VString "red" ] ]
        --         ]
        --     ]
        -- << mark Text
        --     [ MEncode
        --         [ Enter
        --             [ MAlign [ VString "center" ]
        --             , MBaseline [ VString "bottom" ]
        --             , MFill [ VString "#333" ]
        --             ]
        --         , Update
        --             [ MX [ VScale (FName "xscale"), VSignal (SName "tooltip.category"), VBand 0.5 ]
        --             , MY [ VScale (FName "yscale"), VSignal (SName "tooltip.amount"), VOffset (VNumber -2) ]
        --             , MText [ VSignal (SName "tooltip.amount") ]
        --             , MFillOpacity [ VIfElse "datum === tooltip" [ VNumber 0 ] [ VNumber 1 ] ]
        --             ]
        --         ]
        --     ]
    in
    toVega
        [ width 300, height 240, padding (PSize 5), ds, sc [], ax [], mk [] ]



-- -----------------------------------------------------------------------------
-- Transform examples


packExample : Spec
packExample =
    let
        table =
            dataFromColumns "tree" []
                << dataColumn "id" (Strings [ "A", "B", "C", "D", "E" ])
                << dataColumn "parent" (Strings [ "", "A", "A", "C", "C" ])
                << dataColumn "value" (Numbers [ 0, 1, 0, 1, 1 ])

        ds =
            dataSource
                [ table []
                    |> transform
                        [ TStratify (FieldName "id") (FieldName "parent")
                        , TPack
                            [ PaField (FieldName "value")
                            , PaPadding (SigNumRef (SName "padding between circles"))
                            , PaSize sigWidth sigHeight
                            ]
                        ]
                ]

        si =
            signals
                << signal "padding between circles"
                    [ SiValue (Number 0)
                    , SiBind (IRange [ InMin 0, InMax 10, InStep 0.1 ])
                    ]

        sc =
            scales
                << scale "color"
                    [ SType ScOrdinal
                    , SRange (RScheme "category20" [])
                    ]

        mk =
            marks
                << mark Symbol
                    [ MFrom (SData "tree")
                    , MEncode
                        [ Enter
                            [ MFill [ VScale (FName "color"), VField (FName "id") ]
                            , MStroke [ VString "white" ]
                            ]
                        , Update
                            [ MX [ VField (FName "x") ]
                            , MY [ VField (FName "y") ]
                            , MSize [ VSignal (SExpr "4*datum.r*datum.r") ]
                            ]
                        ]
                    ]
    in
    toVega
        [ width 300, height 200, padding (PSize 5), ds, si [], sc [], mk [] ]


stackExample : Spec
stackExample =
    let
        table =
            dataFromColumns "table" []
                << dataColumn "key" (Strings [ "a", "a", "a", "b", "b", "b", "c", "c", "c" ])
                << dataColumn "value" (Numbers [ 5, 8, 3, 2, 7, 4, 1, 4, 6 ])

        ds =
            dataSource
                [ table []
                    |> transform
                        [ TStack
                            [ StField (FieldName "value")
                            , StGroupBy [ FieldName "key" ]
                            , StOffset (OffsetSignal "offset")
                            , StSort [ CoField [ FieldSignal "sortField" ], CoOrder [ OrderSignal "sortOrder" ] ]
                            ]
                        ]
                    |> on
                        [ trigger "add" [ TrInsert "add" ]
                        , trigger "rem" [ TrRemove "rem" ]
                        ]
                ]

        si =
            signals
                << signal "offset"
                    [ SiValue (Str "zero")
                    , SiBind (ISelect [ InOptions [ "zero", "center", "normalize" ] ])
                    ]
                << signal "sortField"
                    [ SiValue Null
                    , SiBind (IRadio [ InOptions [ "null", "value" ] ])
                    ]
                << signal "sortOrder"
                    [ SiValue (Str "ascending")
                    , SiBind (IRadio [ InOptions [ "ascending", "descending" ] ])
                    ]
                << signal "add"
                    [ SiValue Empty
                    , SiOn
                        [ [ EEvents "mousedown![!event.shiftKey]"
                          , EUpdate "{key: invert('xscale', x()), value: ~~(1 + 9 * random())}"
                          ]
                        ]
                    ]
                << signal "rem"
                    [ SiValue Empty
                    , SiOn
                        [ [ EEvents "rect:mousedown![event.shiftKey]"
                          , EUpdate "datum"
                          ]
                        ]
                    ]

        sc =
            scales
                << scale "xscale"
                    [ SType ScBand
                    , SDomain (DStrings [ "a", "b", "c" ])
                    , SRange (RDefault RWidth)
                    ]
                << scale "yscale"
                    [ SType ScLinear
                    , SDomain (DData [ DDataset "table", DField "y1" ])
                    , SRange (RDefault RHeight)
                    , SRound True
                    ]
                << scale "color"
                    [ SType ScOrdinal
                    , SRange (RScheme "category10" [])
                    ]

        mk =
            marks
                << mark Rect
                    [ MFrom (SData "table")
                    , MEncode
                        [ Enter
                            [ MFill [ VScale (FName "color"), VField (FName "key") ]
                            , MStroke [ VString "white" ]
                            , MStrokeWidth [ VNumber 1 ]
                            , MX [ VScale (FName "xscale"), VField (FName "key"), VOffset (VNumber 0.5) ]
                            , MWidth [ VScale (FName "xscale"), VBand 1 ]
                            ]
                        , Update
                            [ MY [ VScale (FName "yscale"), VField (FName "y0"), VOffset (VNumber 0.5) ]
                            , MY2 [ VScale (FName "yscale"), VField (FName "y1"), VOffset (VNumber 0.5) ]
                            ]
                        ]
                    ]
    in
    toVega
        [ width 300, height 200, autosize [ ANone ], ds, si [], sc [], mk [] ]



{- This list comprises the specifications to be provided to the Vega runtime. -}


mySpecs : Spec
mySpecs =
    Json.Encode.object
        [ ( "barChart1", barChart1 )
        , ( "barChart2", barChart2 )
        , ( "barChart3", barChart3 )
        , ( "packExample", packExample )
        , ( "stackExample", stackExample )
        ]



{- ---------------------------------------------------------------------------
   The code below creates an Elm module that opens an outgoing port to Javascript
   and sends both the specs and DOM node to it.
   This is used to display the generated Vega specs for testing purposes.
-}


main : Program Never Spec msg
main =
    Html.program
        { init = ( mySpecs, elmToJS mySpecs )
        , view = view
        , update = \_ model -> ( model, Cmd.none )
        , subscriptions = always Sub.none
        }



-- View


view : Spec -> Html msg
view spec =
    div []
        [ div [ id "specSource" ] []
        , pre []
            [ Html.text (Json.Encode.encode 2 barChart3) ]
        ]


port elmToJS : Spec -> Cmd msg