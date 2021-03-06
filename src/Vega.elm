module Vega
    exposing
        ( AggregateProperty
        , Anchor(End, Middle, Start)
        , Autosize(AContent, AFit, AFitX, AFitY, ANone, APad, APadding, AResize)
        , AxisElement(EAxis, EDomain, EGrid, ELabels, ETicks, ETitle)
        , AxisProperty
        , AxisType(AxAll, AxBand, AxBottom, AxLeft, AxRight, AxTop, AxX, AxY)
        , BinProperty
        , Bind
        , Boo
        , BoundsCalculation(Flush, Full)
        , CInterpolate(Hcl, Hsl, Lab)
        , Case(Lowercase, Mixedcase, Uppercase)
        , Clip
        , ColorSchemeProperty
        , ColorValue
        , ConfigProperty
        , ContourProperty
        , CountPatternProperty
        , CrossProperty
        , Cursor(CAlias, CAllScroll, CAuto, CCell, CColResize, CContextMenu, CCopy, CCrosshair, CDefault, CEResize, CEWResize, CGrab, CGrabbing, CHelp, CMove, CNEResize, CNESWResize, CNResize, CNSResize, CNWResize, CNWSEResize, CNoDrop, CNone, CNotAllowed, CPointer, CProgress, CRowResize, CSEResize, CSResize, CSWResize, CText, CVerticalText, CWResize, CWait, CZoomIn, CZoomOut)
        , Data
        , DataColumn
        , DataProperty(DaSphere)
        , DataReference
        , DataRow
        , DataTable
        , DataType(FoBoo, FoNum)
        , DensityFunction(CDF, PDF)
        , DensityProperty
        , Distribution
        , EncodingProperty
        , EventFilter(Allow, Prevent)
        , EventHandler
        , EventSource(ESAll, ESScope, ESView, ESWindow)
        , EventStream
        , EventStreamProperty
        , EventType(Click, DblClick, DragEnter, DragLeave, DragOver, KeyDown, KeyPress, KeyUp, MouseDown, MouseMove, MouseOut, MouseOver, MouseUp, MouseWheel, Timer, TouchEnd, TouchMove, TouchStart, Wheel)
        , Expr
        , Facet
        , Feature
        , Field
        , Force
        , ForceProperty
        , ForceSimulationProperty
        , FormatProperty(CSV, JSON, ParseAuto, TSV)
        , GeoJsonProperty
        , GeoPathProperty
        , GraticuleProperty
        , GridAlign(AlignAll, AlignEach, AlignNone)
        , HAlign(AlignCenter, AlignLeft, AlignRight)
        , ImputeMethod(ByMax, ByMean, ByMedian, ByMin, ByValue)
        , ImputeProperty
        , InputProperty
        , JoinAggregateProperty
        , LayoutProperty
        , LegendEncoding
        , LegendOrientation(Bottom, BottomLeft, BottomRight, Left, None, Right, Top, TopLeft, TopRight)
        , LegendProperty
        , LegendType(LGradient, LSymbol)
        , LinkPathProperty
        , LinkShape(LinkArc, LinkCurve, LinkDiagonal, LinkLine, LinkOrthogonal)
        , LookupProperty
        , Mark(Arc, Area, Group, Image, Line, Path, Rect, Rule, Shape, Symbol, Text, Trail)
        , MarkInterpolation(Basis, Bundle, Cardinal, CatmullRom, Linear, Monotone, Natural, StepAfter, StepBefore, Stepwise)
        , MarkProperty
        , Num
        , Operation(ArgMax, ArgMin, Average, CI0, CI1, Count, Distinct, Max, Mean, Median, Min, Missing, Q1, Q3, Stderr, Stdev, Stdevp, Sum, Valid, Variance, Variancep)
        , Order(Ascend, Descend)
        , Orientation(Horizontal, Radial, Vertical)
        , OverlapStrategy(OGreedy, ONone, OParity)
        , PackProperty
        , PartitionProperty
        , PieProperty
        , PivotProperty
        , Projection(Albers, AlbersUsa, AzimuthalEqualArea, AzimuthalEquidistant, ConicConformal, ConicEqualArea, ConicEquidistant, Equirectangular, Gnomonic, Mercator, NaturalEarth1, Orthographic, Stereographic, TransverseMercator)
        , ProjectionProperty
        , Scale(ScBand, ScBinLinear, ScBinOrdinal, ScLinear, ScLog, ScOrdinal, ScPoint, ScPow, ScQuantile, ScQuantize, ScSequential, ScSqrt, ScTime, ScUtc)
        , ScaleDomain
        , ScaleNice(NDay, NFalse, NHour, NMillisecond, NMinute, NMonth, NSecond, NTrue, NWeek, NYear)
        , ScaleProperty
        , ScaleRange(RaCategory, RaDiverging, RaHeatmap, RaHeight, RaOrdinal, RaRamp, RaSymbol, RaWidth)
        , Side(SBottom, SLeft, SRight, STop)
        , SignalProperty
        , SortProperty(Ascending, Descending)
        , Source
        , Spec
        , Spiral(Archimedean, Rectangular)
        , StackOffset(OfCenter, OfNormalize, OfZero)
        , StackProperty
        , Str
        , StrokeCap(CButt, CRound, CSquare)
        , StrokeJoin(JBevel, JMiter, JRound)
        , Symbol(SymCircle, SymCross, SymDiamond, SymSquare, SymTriangleDown, SymTriangleLeft, SymTriangleRight, SymTriangleUp)
        , TextDirection(LeftToRight, RightToLeft)
        , TimeUnit(Day, Hour, Millisecond, Minute, Month, Second, Week, Year)
        , TitleFrame(FrBounds, FrGroup)
        , TitleProperty
        , TopMarkProperty
        , Transform
        , TreeMethod(Cluster, Tidy)
        , TreeProperty
        , TreemapMethod(Binary, Dice, Resquarify, Slice, SliceDice, Squarify)
        , TreemapProperty
        , Trigger
        , TriggerProperty
        , VAlign(AlignBottom, AlignMiddle, AlignTop, Alphabetic)
        , VProperty
        , Value
        , VoronoiProperty
        , WOperation(CumeDist, DenseRank, FirstValue, Lag, LastValue, Lead, NthValue, Ntile, PercentRank, Rank, RowNumber)
        , WindowOperation
        , WindowProperty
        , WordcloudProperty
        , agAs
        , agCross
        , agDrop
        , agFields
        , agGroupBy
        , agKey
        , agOps
        , anchorSignal
        , autosize
        , autosizeSignal
        , axBandPosition
        , axDomain
        , axDomainColor
        , axDomainOpacity
        , axDomainWidth
        , axEncode
        , axFormat
        , axGrid
        , axGridColor
        , axGridDash
        , axGridOpacity
        , axGridScale
        , axGridWidth
        , axLabelAlign
        , axLabelAngle
        , axLabelBaseline
        , axLabelBound
        , axLabelColor
        , axLabelFlush
        , axLabelFlushOffset
        , axLabelFont
        , axLabelFontSize
        , axLabelFontWeight
        , axLabelLimit
        , axLabelOpacity
        , axLabelOverlap
        , axLabelPadding
        , axLabels
        , axMaxExtent
        , axMinExtent
        , axOffset
        , axPosition
        , axTemporalTickCount
        , axTickColor
        , axTickCount
        , axTickExtra
        , axTickOffset
        , axTickOpacity
        , axTickRound
        , axTickSize
        , axTickWidth
        , axTicks
        , axTitle
        , axTitleAlign
        , axTitleAngle
        , axTitleBaseline
        , axTitleColor
        , axTitleFont
        , axTitleFontSize
        , axTitleFontWeight
        , axTitleLimit
        , axTitleOpacity
        , axTitlePadding
        , axTitleX
        , axTitleY
        , axValues
        , axZIndex
        , axes
        , axis
        , background
        , bcSignal
        , black
        , bnAnchor
        , bnAs
        , bnBase
        , bnDivide
        , bnMaxBins
        , bnMinStep
        , bnNice
        , bnSignal
        , bnStep
        , bnSteps
        , booExpr
        , booSignal
        , booSignals
        , boos
        , cHCL
        , cHSL
        , cLAB
        , cRGB
        , cfAutosize
        , cfAxis
        , cfBackground
        , cfEvents
        , cfGroup
        , cfLegend
        , cfMark
        , cfMarks
        , cfScaleRange
        , cfStyle
        , cfTitle
        , clEnabled
        , clPath
        , clSphere
        , cnBandwidth
        , cnCellSize
        , cnCount
        , cnNice
        , cnSmooth
        , cnThresholds
        , cnValues
        , cnX
        , cnY
        , combineSpecs
        , config
        , cpAs
        , cpCase
        , cpPattern
        , cpStopwords
        , crAs
        , crFilter
        , csCount
        , csExtent
        , csScheme
        , cubeHelix
        , cubeHelixLong
        , cursorValue
        , daDataset
        , daField
        , daFields
        , daFormat
        , daOn
        , daReferences
        , daSignal
        , daSort
        , daSource
        , daSources
        , daUrl
        , daValue
        , daValues
        , data
        , dataColumn
        , dataFromColumns
        , dataFromRows
        , dataRow
        , dataSource
        , densityFunctionSignal
        , diKde
        , diMixture
        , diNormal
        , diUniform
        , dnAs
        , dnExtent
        , dnMethod
        , dnSteps
        , doData
        , doNums
        , doSignal
        , doSignals
        , doStrs
        , dsv
        , enCustom
        , enEnter
        , enExit
        , enGradient
        , enHover
        , enInteractive
        , enLabels
        , enLegend
        , enName
        , enSymbols
        , enTitle
        , enUpdate
        , encode
        , esBetween
        , esConsume
        , esDebounce
        , esDom
        , esFilter
        , esMark
        , esMarkName
        , esMerge
        , esObject
        , esSelector
        , esSignal
        , esSource
        , esStream
        , esThrottle
        , esType
        , evEncode
        , evForce
        , evHandler
        , evStreamSelector
        , evUpdate
        , exField
        , expr
        , fDatum
        , fExpr
        , fGroup
        , fParent
        , fSignal
        , faAggregate
        , faField
        , faGroupBy
        , false
        , feName
        , featureSignal
        , field
        , foCenter
        , foCollide
        , foDate
        , foLink
        , foNBody
        , foUtc
        , foX
        , foY
        , fpDistance
        , fpDistanceMax
        , fpDistanceMin
        , fpId
        , fpIterations
        , fpStrength
        , fpTheta
        , fsAlpha
        , fsAlphaMin
        , fsAlphaTarget
        , fsAs
        , fsForces
        , fsIterations
        , fsRestart
        , fsStatic
        , fsVelocityDecay
        , gjFeature
        , gjFields
        , gjSignal
        , gpAs
        , gpField
        , gpPointRadius
        , grAlignColumn
        , grAlignRow
        , grExtent
        , grExtentMajor
        , grExtentMinor
        , grField
        , grPrecision
        , grStep
        , grStepMajor
        , grStepMinor
        , gridAlignSignal
        , hAlignSignal
        , hCenter
        , hLeft
        , hRight
        , hclLong
        , height
        , hslLong
        , iCheckbox
        , iColor
        , iDate
        , iDateTimeLocal
        , iMonth
        , iNumber
        , iRadio
        , iRange
        , iSelect
        , iTel
        , iText
        , iTime
        , iWeek
        , ifElse
        , imGroupBy
        , imKeyVals
        , imMethod
        , imValue
        , inAutocomplete
        , inDebounce
        , inElement
        , inMax
        , inMin
        , inOptions
        , inPlaceholder
        , inStep
        , jaAs
        , jaFields
        , jaGroupBy
        , jaOps
        , jsonProperty
        , keyValue
        , layout
        , leClipHeight
        , leColumnPadding
        , leColumns
        , leCornerRadius
        , leDirection
        , leEncode
        , leFill
        , leFillColor
        , leFormat
        , leGradientLabelLimit
        , leGradientLabelOffset
        , leGradientLength
        , leGradientOpacity
        , leGradientStrokeColor
        , leGradientStrokeWidth
        , leGradientThickness
        , leGridAlign
        , leLabelAlign
        , leLabelBaseline
        , leLabelColor
        , leLabelFont
        , leLabelFontSize
        , leLabelFontWeight
        , leLabelLimit
        , leLabelOffset
        , leLabelOpacity
        , leLabelOverlap
        , leOffset
        , leOpacity
        , leOrient
        , lePadding
        , leRowPadding
        , leShape
        , leSize
        , leStroke
        , leStrokeColor
        , leStrokeDash
        , leStrokeWidth
        , leSymbolBaseFillColor
        , leSymbolBaseStrokeColor
        , leSymbolDirection
        , leSymbolFillColor
        , leSymbolOffset
        , leSymbolOpacity
        , leSymbolSize
        , leSymbolStrokeColor
        , leSymbolStrokeWidth
        , leSymbolType
        , leTemporalTickCount
        , leTickCount
        , leTitle
        , leTitleAlign
        , leTitleBaseline
        , leTitleColor
        , leTitleFont
        , leTitleFontSize
        , leTitleFontWeight
        , leTitleLimit
        , leTitleOpacity
        , leTitlePadding
        , leType
        , leValues
        , leZIndex
        , legend
        , legendOrientationSignal
        , legendTypeSignal
        , legends
        , linkShapeSignal
        , loAlign
        , loBounds
        , loColumns
        , loFooterBand
        , loFooterBandRC
        , loHeaderBand
        , loHeaderBandRC
        , loOffset
        , loOffsetRC
        , loPadding
        , loPaddingRC
        , loTitleBand
        , loTitleBandRC
        , lpAs
        , lpOrient
        , lpShape
        , lpSourceX
        , lpSourceY
        , lpTargetX
        , lpTargetY
        , luAs
        , luDefault
        , luValues
        , mClip
        , mDescription
        , mEncode
        , mFrom
        , mGroup
        , mInteractive
        , mKey
        , mName
        , mOn
        , mSort
        , mStyle
        , mTransform
        , mZIndex
        , maAlign
        , maAngle
        , maAspect
        , maBaseline
        , maCornerRadius
        , maCursor
        , maCustom
        , maDefined
        , maDir
        , maDx
        , maDy
        , maEllipsis
        , maEndAngle
        , maFill
        , maFillOpacity
        , maFont
        , maFontSize
        , maFontStyle
        , maFontWeight
        , maGroupClip
        , maHRef
        , maHeight
        , maInnerRadius
        , maInterpolate
        , maLimit
        , maOpacity
        , maOrient
        , maOuterRadius
        , maPadAngle
        , maPath
        , maRadius
        , maShape
        , maSize
        , maStartAngle
        , maStroke
        , maStrokeCap
        , maStrokeDash
        , maStrokeDashOffset
        , maStrokeJoin
        , maStrokeMiterLimit
        , maStrokeOpacity
        , maStrokeWidth
        , maSymbol
        , maTension
        , maText
        , maTheta
        , maTooltip
        , maUrl
        , maWidth
        , maX
        , maX2
        , maXC
        , maY
        , maY2
        , maYC
        , maZIndex
        , mark
        , markInterpolationValue
        , marks
        , nInterval
        , nTickCount
        , num
        , numExpr
        , numList
        , numNull
        , numSignal
        , numSignals
        , nums
        , on
        , operationSignal
        , orderSignal
        , orientationSignal
        , orientationValue
        , overlapStrategySignal
        , paAs
        , paField
        , paPadding
        , paRadius
        , paSize
        , paSort
        , padding
        , paddings
        , parse
        , piAs
        , piEndAngle
        , piField
        , piGroupBy
        , piLimit
        , piOp
        , piSort
        , piStartAngle
        , prCenter
        , prClipAngle
        , prClipExtent
        , prCoefficient
        , prCustom
        , prDistance
        , prExtent
        , prFit
        , prFraction
        , prLobes
        , prParallel
        , prPointRadius
        , prPrecision
        , prRadius
        , prRatio
        , prRotate
        , prScale
        , prSize
        , prSpacing
        , prTilt
        , prTranslate
        , prType
        , projection
        , projectionSignal
        , projectionValue
        , projections
        , ptAs
        , ptField
        , ptPadding
        , ptRound
        , ptSize
        , ptSort
        , raCustomDefault
        , raData
        , raNums
        , raScheme
        , raSignal
        , raStep
        , raStrs
        , raValues
        , rgb
        , scAlign
        , scBase
        , scClamp
        , scCustom
        , scDomain
        , scDomainImplicit
        , scDomainMax
        , scDomainMid
        , scDomainMin
        , scDomainRaw
        , scExponent
        , scInterpolate
        , scNice
        , scPadding
        , scPaddingInner
        , scPaddingOuter
        , scRange
        , scRangeStep
        , scReverse
        , scRound
        , scType
        , scZero
        , scale
        , scaleNiceSignal
        , scaleRangeSignal
        , scaleSignal
        , scales
        , siBind
        , siDescription
        , siName
        , siOn
        , siPushOuter
        , siReact
        , siUpdate
        , siValue
        , sideSignal
        , signal
        , signals
        , soByField
        , soOp
        , sortPropertySignal
        , spiralSignal
        , srData
        , srFacet
        , stAs
        , stField
        , stGroupBy
        , stOffset
        , stSort
        , stackOffsetSignal
        , str
        , strExpr
        , strNull
        , strSignal
        , strSignals
        , strokeCapSignal
        , strokeCapValue
        , strokeJoinSignal
        , strokeJoinValue
        , strs
        , symPath
        , symbolSignal
        , symbolValue
        , teAs
        , teField
        , teMethod
        , teNodeSize
        , teSize
        , teSort
        , textDirectionSignal
        , textDirectionValue
        , tgInsert
        , tgModifyValues
        , tgRemove
        , tgRemoveAll
        , tgToggle
        , tiAnchor
        , tiAngle
        , tiBaseline
        , tiColor
        , tiEncode
        , tiFont
        , tiFontSize
        , tiFontWeight
        , tiFrame
        , tiInteractive
        , tiLimit
        , tiName
        , tiOffset
        , tiOrient
        , tiStyle
        , tiZIndex
        , timeUnitSignal
        , title
        , titleFrameSignal
        , tmAs
        , tmField
        , tmMethod
        , tmPadding
        , tmPaddingBottom
        , tmPaddingInner
        , tmPaddingLeft
        , tmPaddingOuter
        , tmPaddingRight
        , tmPaddingTop
        , tmRatio
        , tmRound
        , tmSize
        , tmSort
        , toVega
        , topojsonFeature
        , topojsonMesh
        , trAggregate
        , trBin
        , trCollect
        , trContour
        , trCountPattern
        , trCross
        , trCrossFilter
        , trCrossFilterAsSignal
        , trDensity
        , trExtent
        , trExtentAsSignal
        , trFilter
        , trFlatten
        , trFlattenAs
        , trFold
        , trFoldAs
        , trForce
        , trFormula
        , trFormulaInitOnly
        , trGeoJson
        , trGeoPath
        , trGeoPoint
        , trGeoPointAs
        , trGeoShape
        , trGraticule
        , trIdentifier
        , trImpute
        , trJoinAggregate
        , trLinkPath
        , trLookup
        , trNest
        , trPack
        , trPartition
        , trPie
        , trPivot
        , trProject
        , trResolveFilter
        , trSample
        , trSequence
        , trStack
        , trStratify
        , trTree
        , trTreeLinks
        , trTreemap
        , trVoronoi
        , trWindow
        , trWordcloud
        , transform
        , transparent
        , treeMethodSignal
        , treemapMethodSignal
        , trigger
        , true
        , vAlignSignal
        , vAlphabetic
        , vBand
        , vBoos
        , vBottom
        , vColor
        , vExponent
        , vFalse
        , vField
        , vMiddle
        , vMultiply
        , vNull
        , vNum
        , vNums
        , vObject
        , vOffset
        , vRound
        , vScale
        , vScaleField
        , vSignal
        , vStr
        , vStrs
        , vTop
        , vTrue
        , vValues
        , voAs
        , voExtent
        , voSize
        , wOperationSignal
        , wcAs
        , wcFont
        , wcFontSize
        , wcFontSizeRange
        , wcFontStyle
        , wcFontWeight
        , wcPadding
        , wcRotate
        , wcSize
        , wcSpiral
        , wcText
        , white
        , width
        , wnAggOperation
        , wnFrame
        , wnGroupBy
        , wnIgnorePeers
        , wnOperation
        , wnOperationOn
        , wnSort
        )

{-| This module will allow you to create a full Vega specification in Elm. A
specification is stored as a JSON object and contains sufficient declarative detail
to specify the data sources, graphical output and interaction. The module can
generate the JSON that may be passed to the Vega runtime library to activate the
visualization.


# Creating A Vega Specification

@docs toVega
@docs combineSpecs

@docs VProperty


# Passing Values into a Vega Specification

While ultimately, Vega handles standard data types such as numbers, strings and
Boolean values, a Vega specification uses functions that generate those types.
These include, for example, _expressions_ that generate new values based on
operations applied to existing ones, _fields_ that reference a column of a data
table or _signals_ that can respond dynamically to data or interaction changes.


## Numeric Values

For use with functions that expect either direct numeric values, or an expression,
data source or signal that can generate numeric values.

@docs num
@docs nums
@docs numSignal
@docs numSignals
@docs numExpr
@docs numList
@docs numNull


## String Values

For use with functions that expect either direct string values, or an expression,
data source or signal that can generate string values.

@docs str
@docs strs
@docs strSignal
@docs strSignals
@docs strExpr
@docs strNull


## Boolean Values

For use with functions that expect either direct Boolean values, or an expression,
data source or signal that can generate Boolean values.

@docs true
@docs false
@docs boos
@docs booSignal
@docs booSignals
@docs booExpr


## Generic Values

For use with functions that expect values of several different types. These values
can be generated with the following functions.

@docs vNum
@docs vNums
@docs vStr
@docs vStrs
@docs vTrue
@docs vFalse
@docs vBoos
@docs vSignal
@docs vField
@docs vColor
@docs vBand
@docs vObject
@docs keyValue
@docs vValues
@docs ifElse
@docs vNull
@docs vMultiply
@docs vExponent
@docs vOffset
@docs vRound
@docs vScale
@docs vScaleField


## Indirect References

@docs field
@docs fSignal
@docs fExpr
@docs fDatum
@docs fGroup
@docs fParent
@docs expr
@docs exField


## Thematic Data Types

@docs TimeUnit
@docs timeUnitSignal
@docs cHCL
@docs cHSL
@docs cLAB
@docs cRGB


# Creating a Data Specification

Functions for declaring the input data to a visualization.

@docs dataSource
@docs data

@docs dataFromColumns
@docs dataColumn

@docs dataFromRows
@docs dataRow
@docs DataProperty

@docs daUrl
@docs daFormat
@docs daSource
@docs daSources
@docs daValue
@docs daOn

@docs daDataset
@docs daField
@docs daFields
@docs daValues
@docs daSignal
@docs daReferences


## Data Sorting

@docs daSort
@docs SortProperty
@docs sortPropertySignal
@docs soOp
@docs soByField

@docs Order
@docs orderSignal


## Data Formatting

Functions for parsing input data and specifying their format.

@docs FormatProperty
@docs dsv
@docs jsonProperty
@docs topojsonMesh
@docs topojsonFeature

@docs DataType
@docs parse
@docs foDate
@docs foUtc


# Transforming Data

Transforms are essential in order to use the full range of data visualization types
in Vega. They can be applied to data streams and to marks.

Applying a transform to a data stream can filter or generate new fields in the stream,
or derive new data streams. This is done by piping (`|>`) the stream into the
`transform` function and specifying the type of transform to apply via one or
more of the functions described below.

@docs transform


## Basic Transforms


### Aggregation

@docs trAggregate
@docs agGroupBy
@docs agFields
@docs agOps
@docs agAs
@docs agCross
@docs agDrop
@docs agKey

@docs Operation
@docs operationSignal

@docs trJoinAggregate
@docs jaGroupBy
@docs jaFields
@docs jaOps
@docs jaAs


### Binning

@docs trBin
@docs bnAnchor
@docs bnMaxBins
@docs bnBase
@docs bnStep
@docs bnSteps
@docs bnMinStep
@docs bnDivide
@docs bnNice
@docs bnSignal
@docs bnAs


### Collection

@docs trCollect


### Text Pattern Counting

@docs trCountPattern
@docs cpPattern
@docs cpCase
@docs Case
@docs cpStopwords
@docs cpAs


### Cross Product

@docs trCross
@docs crFilter
@docs crAs


### Probability Density Function Calculation

@docs trDensity
@docs dnExtent
@docs dnMethod
@docs DensityFunction
@docs densityFunctionSignal
@docs dnSteps
@docs dnAs

@docs diNormal
@docs diUniform
@docs diKde
@docs diMixture


### Range calculation

@docs trExtent
@docs trExtentAsSignal


### Filtering

@docs trFilter
@docs trCrossFilter
@docs trCrossFilterAsSignal
@docs trResolveFilter


### Flattening

@docs trFlatten
@docs trFlattenAs


### Folding and Pivoting

@docs trFold
@docs trFoldAs
@docs trPivot
@docs piGroupBy
@docs piLimit
@docs piOp


### Deriving New Fields

@docs trFormula
@docs trFormulaInitOnly

@docs trLookup
@docs luAs
@docs luValues
@docs luDefault

@docs trIdentifier
@docs trProject

@docs trWindow
@docs wnAggOperation
@docs wnOperation
@docs wnOperationOn
@docs WOperation
@docs wOperationSignal
@docs wnSort
@docs wnGroupBy
@docs wnFrame
@docs wnIgnorePeers


### Handling Missing Values

@docs trImpute
@docs imKeyVals
@docs imMethod
@docs ImputeMethod
@docs imGroupBy
@docs imValue


### Sampling

@docs trSample


### Data Generation

@docs trSequence


## Geographic Transforms


### Contouring

@docs trContour
@docs cnValues
@docs cnX
@docs cnY
@docs cnCellSize
@docs cnBandwidth
@docs cnSmooth
@docs cnThresholds
@docs cnCount
@docs cnNice


### GeoJSON transformation

@docs trGeoShape
@docs trGeoPath
@docs gpField
@docs gpPointRadius
@docs gpAs
@docs trGeoJson
@docs gjFields
@docs gjFeature
@docs gjSignal

@docs trGeoPoint
@docs trGeoPointAs


### Graticule Generation

@docs trGraticule
@docs grExtent
@docs grExtentMajor
@docs grExtentMinor
@docs grStep
@docs grStepMajor
@docs grStepMinor
@docs grField
@docs grPrecision


## Layout Transforms


### Link Paths

@docs trLinkPath
@docs lpSourceX
@docs lpSourceY
@docs lpTargetX
@docs lpTargetY
@docs lpOrient
@docs lpShape
@docs lpAs
@docs LinkShape
@docs linkShapeSignal


### Angular Layouts

@docs trPie
@docs piField
@docs piStartAngle
@docs piEndAngle
@docs piSort
@docs piAs


### Stacked Layouts

@docs trStack
@docs stField
@docs stGroupBy
@docs stSort
@docs stOffset
@docs stAs
@docs StackOffset
@docs stackOffsetSignal


### Force-Generated Layouts

@docs trForce

@docs fsStatic
@docs fsRestart
@docs fsIterations
@docs fsAlpha
@docs fsAlphaMin
@docs fsAlphaTarget
@docs fsVelocityDecay
@docs fsForces
@docs fsAs

@docs foCenter
@docs foCollide
@docs foNBody
@docs foLink
@docs foX
@docs foY

@docs fpStrength
@docs fpDistance
@docs fpIterations
@docs fpTheta
@docs fpDistanceMin
@docs fpDistanceMax
@docs fpId


### Voronoi Diagram

@docs trVoronoi
@docs voSize
@docs voExtent
@docs voAs


### Word Cloud layout

@docs trWordcloud
@docs wcFont
@docs wcFontStyle
@docs wcFontWeight
@docs wcFontSize
@docs wcFontSizeRange
@docs wcPadding
@docs wcRotate
@docs wcText
@docs wcSize
@docs wcSpiral
@docs Spiral
@docs spiralSignal
@docs wcAs


## Hierarchy Transforms

@docs trNest
@docs trStratify

@docs trPack
@docs paField
@docs paSort
@docs paSize
@docs paRadius
@docs paPadding
@docs paAs

@docs trPartition
@docs ptField
@docs ptSort
@docs ptPadding
@docs ptRound
@docs ptSize
@docs ptAs

@docs trTree
@docs teField
@docs teSort
@docs teMethod
@docs TreeMethod
@docs treeMethodSignal
@docs teSize
@docs teNodeSize
@docs teAs

@docs trTreeLinks

@docs trTreemap
@docs tmField
@docs tmSort
@docs tmMethod
@docs TreemapMethod
@docs treemapMethodSignal
@docs tmPadding
@docs tmPaddingInner
@docs tmPaddingOuter
@docs tmPaddingTop
@docs tmPaddingLeft
@docs tmPaddingBottom
@docs tmPaddingRight
@docs tmRatio
@docs tmRound
@docs tmSize
@docs tmAs


## Cross-Filter Transforms


# Signals, Triggers and Interaction Events

Signals are the means by which dynamic data values may be passed around the visualization specification.
These are commonly linked to interaction events that may vary at runtime.


## Signals

@docs signals
@docs signal
@docs siName
@docs siValue
@docs siBind
@docs siDescription
@docs siOn
@docs siUpdate
@docs siReact
@docs siPushOuter


## User Interface Inputs

@docs iCheckbox
@docs iText
@docs iNumber
@docs iDate
@docs iDateTimeLocal
@docs iTime
@docs iMonth
@docs iWeek
@docs iRadio
@docs iRange
@docs iSelect
@docs iTel
@docs iColor

@docs inDebounce
@docs inElement
@docs inOptions
@docs inMin
@docs inMax
@docs inStep
@docs inPlaceholder
@docs inAutocomplete


## Event Handling

See the [Vega event stream documentation](http://vega.github.io/vega/docs/event-streams)
for details on the modelling of event streams.

@docs evHandler
@docs evUpdate
@docs evEncode
@docs evForce

@docs esObject
@docs esSignal
@docs esMerge
@docs esStream
@docs esSelector
@docs esSource
@docs esType
@docs esBetween
@docs esConsume
@docs esFilter
@docs esDebounce
@docs esMarkName
@docs esMark
@docs esThrottle

@docs evStreamSelector
@docs EventSource

@docs esDom
@docs EventType


## Triggers

@docs on
@docs trigger
@docs tgInsert
@docs tgRemove
@docs tgRemoveAll
@docs tgToggle
@docs tgModifyValues


# Specifying Scales

Scales determine the mapping between data values and their visual expression (channels) such as color or position.

@docs scales
@docs scale
@docs scReverse
@docs scRound
@docs scClamp
@docs scPadding
@docs scNice
@docs scZero
@docs scExponent
@docs scBase
@docs scAlign
@docs scDomainImplicit
@docs scPaddingInner
@docs scPaddingOuter
@docs scRangeStep

@docs ScaleNice
@docs scaleNiceSignal
@docs nInterval
@docs nTickCount
@docs csScheme
@docs csCount
@docs csExtent


## Scale Types

@docs scType
@docs Scale
@docs scaleSignal
@docs scCustom


## Scale Domains

A scale domain describes the extent of data that inform a scaling.

@docs scDomain
@docs scDomainMax
@docs scDomainMin
@docs scDomainMid
@docs scDomainRaw
@docs doNums
@docs doStrs
@docs doSignal
@docs doSignals
@docs doData


## Scale Ranges

A scale range describes the extent of scaled values after transformation.

@docs scRange
@docs ScaleRange
@docs scaleRangeSignal
@docs raNums
@docs raStrs
@docs raValues
@docs raSignal
@docs raScheme
@docs raData
@docs raStep
@docs raCustomDefault


## Color Scales

@docs scInterpolate
@docs CInterpolate
@docs cubeHelix
@docs cubeHelixLong
@docs hclLong
@docs hslLong
@docs rgb


# Specifying Projections

@docs projections
@docs projection
@docs Projection
@docs projectionSignal
@docs projectionValue
@docs prCustom
@docs prType
@docs prClipAngle
@docs prClipExtent
@docs prScale
@docs prTranslate
@docs prCenter
@docs prRotate
@docs prPointRadius
@docs prPrecision
@docs prCoefficient
@docs prDistance
@docs prFraction
@docs prLobes
@docs prParallel
@docs prRadius
@docs prRatio
@docs prSpacing
@docs prTilt
@docs prFit
@docs feName
@docs featureSignal
@docs prExtent
@docs prSize


# Specifying Axes

@docs axes
@docs axis
@docs axBandPosition
@docs axDomain
@docs axDomainColor
@docs axDomainOpacity
@docs axDomainWidth
@docs axEncode
@docs axFormat
@docs axGrid
@docs axGridColor
@docs axGridOpacity
@docs axGridDash
@docs axGridScale
@docs axGridWidth
@docs axLabels
@docs axLabelBound
@docs axLabelAlign
@docs axLabelBaseline
@docs axLabelAngle
@docs axLabelColor
@docs axLabelOpacity
@docs axLabelFont
@docs axLabelFontSize
@docs axLabelFontWeight
@docs axLabelFlush
@docs axLabelFlushOffset
@docs axLabelLimit
@docs axLabelPadding
@docs axLabelOverlap
@docs axMinExtent
@docs axMaxExtent
@docs axOffset
@docs axPosition
@docs axTicks
@docs axTickCount
@docs axTemporalTickCount
@docs axTickColor
@docs axTickOpacity
@docs axTickExtra
@docs axTickOffset
@docs axTickRound
@docs axTickWidth
@docs axTickSize
@docs axTitle
@docs axTitleAlign
@docs axTitleAngle
@docs axTitleBaseline
@docs axTitleColor
@docs axTitleOpacity
@docs axTitleFont
@docs axTitleFontSize
@docs axTitleFontWeight
@docs axTitleLimit
@docs axTitlePadding
@docs axTitleX
@docs axTitleY
@docs axValues
@docs axZIndex
@docs AxisElement
@docs Side
@docs sideSignal
@docs OverlapStrategy
@docs overlapStrategySignal


# Specifying Legends

@docs legends
@docs legend
@docs leType
@docs leDirection
@docs leOrient
@docs leFill
@docs leOpacity
@docs leShape
@docs leSize
@docs leStroke
@docs leStrokeDash
@docs leEncode
@docs leFormat
@docs leGridAlign
@docs leClipHeight
@docs leColumns
@docs leColumnPadding
@docs leRowPadding
@docs leCornerRadius
@docs leFillColor
@docs leOffset
@docs lePadding
@docs leStrokeColor
@docs leStrokeWidth
@docs leGradientOpacity
@docs leGradientLabelLimit
@docs leGradientLabelOffset
@docs leGradientLength
@docs leGradientThickness
@docs leGradientStrokeColor
@docs leGradientStrokeWidth
@docs leLabelAlign
@docs leLabelBaseline
@docs leLabelColor
@docs leLabelFont
@docs leLabelFontSize
@docs leLabelFontWeight
@docs leLabelLimit
@docs leLabelOpacity
@docs leLabelOffset
@docs leLabelOverlap
@docs leSymbolFillColor
@docs leSymbolBaseFillColor
@docs leSymbolBaseStrokeColor
@docs leSymbolDirection
@docs leSymbolOffset
@docs leSymbolSize
@docs leSymbolStrokeColor
@docs leSymbolStrokeWidth
@docs leSymbolOpacity
@docs leSymbolType
@docs leTickCount
@docs leTemporalTickCount
@docs leTitle
@docs leTitleAlign
@docs leTitleBaseline
@docs leTitleColor
@docs leTitleOpacity
@docs leTitleFont
@docs leTitleFontSize
@docs leTitleFontWeight
@docs leTitleLimit
@docs leTitlePadding
@docs leValues
@docs leZIndex
@docs LegendType
@docs legendTypeSignal
@docs LegendOrientation
@docs legendOrientationSignal
@docs enLegend
@docs enTitle
@docs enLabels
@docs enSymbols
@docs enGradient


# Specifying Titles

@docs tiAnchor
@docs tiAngle
@docs Anchor
@docs anchorSignal
@docs tiBaseline
@docs tiColor
@docs tiEncode
@docs tiFont
@docs tiFontSize
@docs tiFontWeight
@docs tiFrame
@docs TitleFrame
@docs titleFrameSignal
@docs tiInteractive
@docs tiLimit
@docs tiName
@docs tiOffset
@docs tiOrient
@docs tiStyle
@docs tiZIndex


# Specifying Layout

@docs layout
@docs GridAlign
@docs gridAlignSignal
@docs grAlignRow
@docs grAlignColumn
@docs BoundsCalculation
@docs bcSignal
@docs loAlign
@docs loBounds
@docs loColumns
@docs loPadding
@docs loPaddingRC
@docs loOffset
@docs loOffsetRC
@docs loHeaderBand
@docs loHeaderBandRC
@docs loFooterBand
@docs loFooterBandRC
@docs loTitleBand
@docs loTitleBandRC


# Specifying Marks

## Top-Level Marks

@docs marks
@docs mark
@docs Mark
@docs mClip
@docs mDescription
@docs mEncode
@docs mFrom
@docs mInteractive
@docs mKey
@docs mName
@docs mOn
@docs mSort
@docs mTransform
@docs mStyle
@docs mGroup
@docs mZIndex

@docs clEnabled
@docs clPath
@docs clSphere
@docs srData


## Faceting

Faceting splits up a data source between multiple group mark items. Each group
mark is backed by an aggregate data value representing the entire group. Facets
can be _data-driven_, in which partitions are determined by grouping data values
by specified attributes or _pre-faceted_ when the data source already contains a
list of sub-values.

@docs srFacet
@docs faField
@docs faGroupBy
@docs faAggregate


## Lower-level Mark Properties

@docs maX
@docs maX2
@docs maXC
@docs maWidth
@docs maY
@docs maY2
@docs maYC
@docs maHeight
@docs maOpacity
@docs maFill
@docs maFillOpacity
@docs maStroke
@docs transparent
@docs black
@docs white
@docs maStrokeOpacity
@docs maStrokeWidth
@docs maStrokeCap
@docs maStrokeDash
@docs maStrokeDashOffset
@docs maStrokeJoin
@docs maStrokeMiterLimit
@docs maCursor
@docs maHRef
@docs maTooltip
@docs maZIndex
@docs maAlign
@docs maBaseline
@docs maCornerRadius
@docs maInterpolate
@docs maTension
@docs maDefined
@docs maSize
@docs maStartAngle
@docs maEndAngle
@docs maPadAngle
@docs maInnerRadius
@docs maOuterRadius
@docs maOrient
@docs maGroupClip
@docs maUrl
@docs maAspect
@docs maPath
@docs maShape
@docs maSymbol
@docs maAngle
@docs maDir
@docs maDx
@docs maDy
@docs maEllipsis
@docs maFont
@docs maFontSize
@docs maFontWeight
@docs maFontStyle
@docs maLimit
@docs maRadius
@docs maText
@docs maTheta
@docs maCustom


## Encoding

@docs enEnter
@docs enUpdate
@docs enHover
@docs enExit
@docs enCustom
@docs enName
@docs enInteractive
@docs MarkInterpolation
@docs markInterpolationValue
@docs Orientation
@docs orientationSignal
@docs orientationValue
@docs Cursor
@docs cursorValue
@docs HAlign
@docs hAlignSignal
@docs hLeft
@docs hCenter
@docs hRight
@docs VAlign
@docs vAlignSignal
@docs vTop
@docs vMiddle
@docs vBottom
@docs vAlphabetic
@docs Symbol
@docs symbolValue
@docs symbolSignal
@docs symPath
@docs StrokeCap
@docs strokeCapValue
@docs strokeCapSignal
@docs StrokeJoin
@docs strokeJoinSignal
@docs strokeJoinValue
@docs textDirectionValue
@docs TextDirection
@docs textDirectionSignal


# Configuring Visualization Appearance

@docs config


## View Configuration

@docs cfAutosize
@docs cfBackground
@docs cfGroup


## Event Configuration

@docs cfEvents
@docs EventFilter


## Mark Configuration

@docs cfMark
@docs cfMarks


## Style Configuration

@docs cfStyle


## Axis Configuration

@docs cfAxis
@docs AxisType


## Legend Configuration

@docs cfLegend


## Title Configuration

@docs cfTitle


## Scale Range Configuration

@docs cfScaleRange


# Specifying Supplementary Properties

Options that affect the entire visualization. These are in addition
to the data and transform options described above.

@docs title
@docs autosize
@docs height
@docs padding
@docs paddings
@docs width
@docs Autosize
@docs autosizeSignal
@docs background
@docs encode

---


# Type Reference

The following types are not specified directly but instead created by various functions
as described above.
They are provided here for reference with links to the functions that generate them.

@docs AggregateProperty
@docs AxisProperty
@docs Bind
@docs BinProperty
@docs Boo
@docs Clip
@docs ColorSchemeProperty
@docs ColorValue
@docs ConfigProperty
@docs ContourProperty
@docs CountPatternProperty
@docs CrossProperty
@docs Data
@docs DataColumn
@docs DataReference
@docs DataRow
@docs DataTable
@docs DensityProperty
@docs Distribution
@docs EncodingProperty
@docs EventHandler
@docs EventStream
@docs EventStreamProperty
@docs Expr
@docs Facet
@docs Feature
@docs Field
@docs Force
@docs ForceProperty
@docs ForceSimulationProperty
@docs GeoJsonProperty
@docs GeoPathProperty
@docs GraticuleProperty
@docs ImputeProperty
@docs InputProperty
@docs JoinAggregateProperty
@docs LayoutProperty
@docs LegendEncoding
@docs LegendProperty
@docs LinkPathProperty
@docs LookupProperty
@docs MarkProperty
@docs Num
@docs PackProperty
@docs PartitionProperty
@docs PieProperty
@docs PivotProperty
@docs ProjectionProperty
@docs ScaleDomain
@docs ScaleProperty
@docs SignalProperty
@docs Source
@docs Spec
@docs StackProperty
@docs Str
@docs TitleProperty
@docs TopMarkProperty
@docs Transform
@docs TreemapProperty
@docs TreeProperty
@docs Trigger
@docs TriggerProperty
@docs Value
@docs VoronoiProperty
@docs WindowOperation
@docs WindowProperty
@docs WordcloudProperty

-}

import Json.Encode as JE


-- Opaque Types
-- ############


{-| Properties of the aggregate transformation. Generated by [agAs](#agAs),
[agCross](#agCross), [agDrop](#agDrop), [agFields](#agFields),
[agGroupBy](#agGroupBy), [agOps](#agOps) and [agKey](#agKey). For details see the
[Vega aggregate documentation](https://vega.github.io/vega/docs/transforms/aggregate/)
-}
type AggregateProperty
    = AgGroupBy (List Field)
    | AgFields (List Field)
    | AgOps (List Operation)
    | AgAs (List String)
    | AgCross Boo
    | AgDrop Boo
    | AgKey Field


{-| Indicates the characteristics of a chart axis such as its orientation, labels
and ticks. Generated by [axBandPosition](#axBandPosition), [axDomain](#axDomain),
[axDomainColor](#axDomainColor), [axDomainOpacity](#axDomainOpacity),
[axDomainWidth](#axDomainWidth), [axEncode](#axEncode), [axFormat](#axFormat),
[axGrid](#axGrid), [axGridColor](#axGridColor), [axGridDash](#axGridDash),
[axGridOpacity](#axGridOpacity), [axGridScale](#axGridScale), [axGridWidth](#axGridWidth),
[axLabels](#axLabels), [axLabelAlign](#axLabelAlign), [axLabelBaseline](#axLabelBaseline),
[axLabelBound](#axLabelBound), [axLabelColor](#axLabelColor), [axLabelFlush](#axLabelFlush),
[axLabelFlushOffset](#axLabelFlushOffset), [axLabelFont](#axLabelFont), [axLabelFontSize](#axLabelFontSize)
[axLabelFontWeight](#axLabelFontWeight), [axLabelLimit](#axLabelLimit), [axLabelOpacity](#axLabelOpacity)
[axLabelOverlap](#axLabelOverlap), [axLabelPadding](#axLabelPadding), [axMaxExtent](#axMaxExtent),
[axMinExtent](#axMinExtent), [axOffset](#axOffset), [axPosition](#axPosition),
[axTicks](#axTicks), [axTickColor](#axTickColor), [axTickCount](#axTickCount),
[axTemporalTickCount](#axTemporalTickCount), [axTickExtra](#axTickExtra),
[axTickOffset](#axTickOffset), [axTickOpacity](#axTickOpacity), [axTickRound](#axTickRound),
[axTickSize](#axTickSize), [axTickWidth](#axTickWidth), [axTitle](#axTitle),
[axTitleAlign](#axTitleAlign), [axTitleAngle](#axTitleAngle), [axTitleBaseline](#axTitleBaseline),
[axTitleColor](#axTitleColor),[axTitleFont](#axTitleFont), [axTitleFontSize](#axTitleFontSize),
[axTitleFontWeight](#axTitleFontWeight), [axTitleLimit](#axTitleLimit), [axTitleOpacity](#axTitleOpacity),
[axTitlePadding](#axTitlePadding), [axTitleX](#axTitleX), [axTitleY](#axTitleY),
[axValues](#axValues) and [axZIndex](#axZIndex). For more details see the
[Vega axes documentation](https://vega.github.io/vega/docs/axes)
-}
type AxisProperty
    = AxScale String
    | AxSide Side
    | AxBandPosition Num
    | AxDomain Boo
    | AxDomainColor Str
    | AxDomainOpacity Num
    | AxDomainWidth Num
    | AxEncode (List ( AxisElement, List EncodingProperty ))
    | AxFormat Str
    | AxGrid Boo
    | AxGridColor Str
    | AxGridDash (List Value)
    | AxGridOpacity Num
    | AxGridScale String
    | AxGridWidth Num
    | AxLabels Boo
    | AxLabelAlign HAlign
    | AxLabelAngle Num
    | AxLabelBaseline VAlign
    | AxLabelBound Num
    | AxLabelColor Str
    | AxLabelFlush Num
    | AxLabelFlushOffset Num
    | AxLabelFont Str
    | AxLabelFontSize Num
    | AxLabelFontWeight Value
    | AxLabelLimit Num
    | AxLabelOpacity Num
    | AxLabelOverlap OverlapStrategy
    | AxLabelPadding Num
    | AxMinExtent Value
    | AxMaxExtent Value
    | AxOffset Value
    | AxPosition Value
    | AxTicks Boo
    | AxTickColor Str
    | AxTickCount Num
    | AxTemporalTickCount TimeUnit Num
    | AxTickExtra Boo
    | AxTickOffset Num
    | AxTickOpacity Num
    | AxTickRound Boo
    | AxTickSize Num
    | AxTickWidth Num
    | AxTitle Str
    | AxTitleAlign HAlign
    | AxTitleAngle Num
    | AxTitleBaseline VAlign
    | AxTitleColor Str
    | AxTitleFont Str
    | AxTitleFontSize Num
    | AxTitleFontWeight Value
    | AxTitleLimit Num
    | AxTitleOpacity Num
    | AxTitlePadding Value
    | AxTitleX Num
    | AxTitleY Num
    | AxValues Value
    | AxZIndex Num


{-| Describes a binding to some HTML input element such as a checkbox or radio button.
Generated by [iRange](#iRange), [iCheckbox](#iCheckbox), [iRadio](#iRadio),
[iSelect](#iSelect), [iText](#iText), [iNumber](#iNumber), [iDate](#iDate),
[iTime](#iTime), [iMonth](#iMonth), [iWeek](#iWeek), [iDateTimeLocal](#iDateTimeLocal),
[iTel](#iTel) and [iColor](#iColor). For details see the
[Vega bind documentation](https://vega.github.io/vega/docs/signals/#bind).
-}
type Bind
    = IRange (List InputProperty)
    | ICheckbox (List InputProperty)
    | IRadio (List InputProperty)
    | ISelect (List InputProperty)
    | IText (List InputProperty)
    | INumber (List InputProperty)
    | IDate (List InputProperty)
    | ITime (List InputProperty)
    | IMonth (List InputProperty)
    | IWeek (List InputProperty)
    | IDateTimeLocal (List InputProperty)
    | ITel (List InputProperty)
    | IColor (List InputProperty)


{-| Optional properties of a bin transform. Generated by [bnAnchor](#bnAnchor),
[bnMaxBins](#bnMaxBins), [bnBase](#bnBase), [bnStep](#bnStep), [bnSteps](#bnSteps),
[bnMinStep](#bnMinStep), [bnDivide](#bnDivide), [bnNice](#bnNice), [bnSignal](#bnSignal)
and [bnAs](#bnAs). For details see the
[Vega bin transform documentation](https://vega.github.io/vega/docs/transforms/bin/).
-}
type BinProperty
    = BnAnchor Num
    | BnMaxBins Num
    | BnBase Num
    | BnStep Num
    | BnSteps Num
    | BnMinStep Num
    | BnDivide Num
    | BnNice Boo
    | BnSignal String
    | BnAs String String


{-| Represents Boolean-related values. Generated by [true](#true), [false](#false),
[boos](#boos), [booSignal](#booSignal), [booSignals](#booSignals) and [booExpr](#booExpr)
-}
type Boo
    = Boo Bool
    | Boos (List Bool)
    | BooSignal String
    | BooSignals (List String)
    | BooExpr Expr


{-| Specify a clip property to limit the area in which a set of marks is visible.
Generated by [clEnabled](#clEnabled), [clPath](#clPath) and [clSphere](#clSphere).
For details see the
[Vega clip documentation](https://vega.github.io/vega/docs/marks/#clip).
-}
type Clip
    = ClEnabled Boo
    | ClPath Str
    | ClSphere Str


{-| Describes a color scheme. Generated by [csScheme](#csScheme), [csCount](#csCount)
and [csExtent](#csExtent). For details see the
[Vega color scheme documentation](https://vega.github.io/vega/docs/schemes/).
-}
type ColorSchemeProperty
    = SScheme Str
    | SCount Num
    | SExtent Num


{-| Defines a custom color value. Can use a variety of color spaces such as RGB,
HSL etc. Generated by [cRGB](#cRGB), [cHSL](#cHSL), [cLAB](#cLAB) and [cHCL](#cHCL).
For more details, see the
[Vega colorValue documentation](https://vega.github.io/vega/docs/types/#ColorValue)}
-}
type ColorValue
    = RGB (List Value) (List Value) (List Value)
    | HSL (List Value) (List Value) (List Value)
    | LAB (List Value) (List Value) (List Value)
    | HCL (List Value) (List Value) (List Value)


{-| Configuration properties to provide default settings for most visual encoding
choices. Generated by
[cfAutosize](#cfAutosize), [cfBackground](#cfBackground), [cfGroup](#cfGroup),
[cfEvents](#cfEvents), [cfMark](#cfMark), [cfMarks](#cfMarks), [cfStyle](#cfStyle),
[cfAxis](#cfAxis), [cfLegend](#cfLegend), [cfTitle](#cfTitle), and [cfScaleRange](#cfScaleRange).
For details see the
[Vega configuration documentation](https://vega.github.io/vega/docs/config/).
-}
type ConfigProperty
    = CfAutosize (List Autosize)
    | CfBackground Str
    | CfGroup (List MarkProperty)
    | CfEvents EventFilter (List EventType)
    | CfMark Mark (List MarkProperty)
    | CfMarks (List MarkProperty)
    | CfStyle String (List MarkProperty)
    | CfAxis AxisType (List AxisProperty)
    | CfLegend (List LegendProperty)
    | CfTitle (List TitleProperty)
    | CfScaleRange ScaleRange ScaleRange


{-| Optional properties of a contour transform. Generated by
[cnValues](#cnValues), [cnX](#cnX), [cnY](#cnY), [cnCellSize](#cnCellSize),
[cnBandwidth](#cnBandWidth), [cnSmooth](#cnSmooth), [cnThresholds](#cnThresholds),
[cnCount](#cnCount) and [cnNice](#cnNice). For details see the
[Vega contour transform documentation](https://vega.github.io/vega/docs/transforms/contour/).
-}
type ContourProperty
    = CnValues Num
    | CnX Field
    | CnY Field
    | CnCellSize Num
    | CnBandwidth Num
    | CnSmooth Boo
    | CnThresholds Num
    | CnCount Num
    | CnNice Boo


{-| Optional properties of a count pattern transform. Generated by
[cpPattern](#cpPattern), [cpCase](#cpCase), [cpStopwords](#cpStopwords) and
[cpAs](#cprAs). For details see the
[Vega count pattern transform documentation](https://vega.github.io/vega/docs/transforms/countpattern/).
-}
type CountPatternProperty
    = CPPattern Str
    | CPCase Case
    | CPStopwords Str
    | CPAs String String


{-| Optional properties of a cross-product transform. Generated by
[crFilter](#crFilter) and [crAs](#ccrAs). For details see the
[Vega cross-product transform documentation](https://vega.github.io/vega/docs/transforms/cross/).
-}
type CrossProperty
    = CrFilter Expr
    | CrAs String String


{-| Convenience type annotation label for use with data generation functions.
Generated by [dataSource](#dataSource) but is also useful when creating your own
data generating functions. For example:

    myData : Int -> Data
    myData yr =
        dataSource
            [ data "population" [ daSource "pop" ]
                |> transform [ trFilter (expr ("datum.year == " ++ toString yr)) ]
            ]

-}
type alias Data =
    ( VProperty, Spec )


{-| Represents a single column of data. Generated when creating inline data with
[dataColumn](#dataColumn).
-}
type alias DataColumn =
    List LabelledSpec


{-| Reference to one or more sources of data such as dataset, field name or collection
of fields. Generated by [daDataset](#daDataset), [daField](#daField), [daFields](#daFields),
[daSignal](#daSignal), [daValues](#daValues) [daReferences](#daReferences) and
[daSort](#daSort). For details see the
[Vega dataref documentation](https://vega.github.io/vega/docs/scales/#dataref)
-}
type DataReference
    = DDataset String
    | DField Field
    | DFields (List Field)
    | DSignal String
    | DValues Value
    | DReferences (List (List DataReference))
    | DSort (List SortProperty)


{-| Represents a single row of data. Generated when creating inline data with
[dataRow](#dataRow).
-}
type alias DataRow =
    Spec


{-| Represents a single table of data (collection of `dataColumn` specifications).
Generated by [data](#data), [dataFromColumns](#dataFromColumns),
[dataFromRows](#dataFromRows), [on](#on) and [transform](#transform).
-}
type alias DataTable =
    List LabelledSpec


{-| A density transform property that specifies how a density transform is to be
performed. Generated by the following functions: [dnExtent](#dnExtent), [dnMethod](#dnMethod),
[dnSteps](#dnSteps) and [dnAs](#dnAs). For details see the
[Vega density transform documentation](https://vega.github.io/vega/docs/transforms/density/).
-}
type DensityProperty
    = DnExtent Num
    | DnMethod DensityFunction
    | DnSteps Num
    | DnAs String String


{-| Specifies a distribution for use in density estimation or generating probability
distributions. Generated by the following functions: [diNormal](#diNormal),
[diUniform](#diUniform), [diKde](#diKde) and [diMixture](#diMixture). For details see the
[Vega distribution documentation](https://vega.github.io/vega/docs/transforms/density/#distributions).
-}
type Distribution
    = DiNormal Num Num
    | DiUniform Num Num
    | DiKde String Field Num
    | DiMixture (List ( Distribution, Num ))


{-| An event handler indicating which events to respond to and what to update or
encode as a result. Generated by the following functions: [evHandler](#evHandler),
[evUpdate](#evUpdate), [evEncode](#evEncode) and [evForce](#evForce).
For details see the
[Vega handlers documentation](https://vega.github.io/vega/docs/signals/#handlers).
-}
type EventHandler
    = EEvents (List EventStream)
    | EUpdate String
    | EEncode String
    | EForce Boo


{-| An event stream for modelling user input. This can either be an event stream
object or a shorthand event stream selector string. Generated by the following
functions: [esObject](#esObject), [esSelector](#esSelector), [esSignal](#esSignal)
and [esMerge](#esMerge). For details see the
[Vega event stream documentation](https://vega.github.io/vega/docs/event-streams/).
-}
type EventStream
    = ESObject (List EventStreamProperty)
    | ESSelector Str
    | ESSignal String
    | ESMerge (List EventStream)


{-| An event stream object property such as the source generating events, event
filtering, event consuming behaviour and throttling. Generated by the following
functions: [esSource](#esSource), [esType](#esType), [esBetween](#esBetween),
[esConsume](#esConsume), [esFilter](#esFilter), [esDebounce](#esDebounce),
[esMarkName](#esMarkName), [esMark](#esMark), [esThrottle](#esThrottle) and
[esStream](#esStream). For details see the
[Vega event stream object documentation](http://vega.github.io/vega/docs/event-streams/#object).
-}
type EventStreamProperty
    = ESSource EventSource
    | ESType EventType
    | ESBetween (List EventStreamProperty) (List EventStreamProperty)
    | ESConsume Boo
    | ESFilter (List String)
    | ESDebounce Num
    | ESMarkName String
    | ESMark Mark
    | ESThrottle Num
    | ESDerived EventStream


{-| Specifies an encoding. Generated by [enEnter](#enEnter), [enUpdate](#enUpdate),
[enExit](#enExit), [enHover](#enHover), [enName](#enName), [enInteractive](#enInteractive)
and [enCustom](#enCustom). For further details see the
[Vega encoding documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
type EncodingProperty
    = Enter (List MarkProperty)
    | Update (List MarkProperty)
    | Exit (List MarkProperty)
    | Hover (List MarkProperty)
    | EnName String
    | EnInteractive Boo
    | Custom String (List MarkProperty)


{-| A Vega [Expr](https://vega.github.io/vega/docs/types/#Expr) that can be either
a field lookup or a full expression that is evaluated once per datum. Generated
by [exField](#exField) and [expr](#expr).
-}
type Expr
    = ExField String
    | Expr String


{-| Defines a facet directive. Generated by [faAggregate](#faAggregate),
[faField](#faField) and [faGroupBy](#faGroupBy). For details see the
[Vega facet documentation](https://vega.github.io/vega/docs/marks/#facet).
-}
type Facet
    = FaName String
    | FaData Str
    | FaField Field
    | FaAggregate (List AggregateProperty)
    | FaGroupBy (List Field)


{-| Represents a GeoJSON feature or feature collection for use with projections.
Generated by [featureSignal](#featureSignal) and [feName](#feName).
-}
type Feature
    = FeatureSignal String
    | FeName String


{-| Represents a data stream field. This can be referenced with its name (`field`)
or a signal, group or parent to reference a field. Generated by [fExpr](#fExpr),
[fDatum](#fDatum), [fGroup](#fGroup), [field](#field), [fParent](#fParent) and
[fSignal](#fSignal). For details see the
[Vega field value documentation](https://vega.github.io/vega/docs/types/#FieldValue).
-}
type Field
    = FName String
    | FExpr String
    | FSignal String
    | FDatum Field
    | FGroup Field
    | FParent Field


{-| Describes a type of force that may be added to a simulation in a force transform.
Generated by [foCollide](#foCollide), [foLink](#foLink), [foNBody](#foNBody),
[foX](#foX) and [foY](#foY). For details see the
[Vega force documentation](https://vega.github.io/vega/docs/transforms/force/#center)
-}
type Force
    = FCenter (List ForceProperty)
    | FCollide (List ForceProperty)
    | FNBody (List ForceProperty)
    | FLink (List ForceProperty)
    | FX Field (List ForceProperty)
    | FY Field (List ForceProperty)


{-| Optional properties of a force. These properties describe how individual forces
within a simulation are to behave.
Generated by [fpDistance](#fpDistance), [fpDistanceMax](#fpDistanceMax),
[fpDistanceMin](#fpDistanceMin), [fpId](#fpId), [fpIterations](#fpIterations),
[fpStrength](#fpStrength) and [fpTheta](#fpTheta). For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force).
-}
type ForceProperty
    = FpCx Num
    | FpCy Num
    | FpX Field
    | FpY Field
    | FpRadius Num
    | FpStrength Num
    | FpIterations Num
    | FpTheta Num
    | FpDistanceMin Num
    | FpDistanceMax Num
    | FpLinks Str
    | FpId Field
    | FpDistance Num


{-| Optional properties of a force simulation transform. These properties describe
how a simulation generated by the transform should behave. Generated by [fsAlpha](#fsAlpha),
[fsAlphaMin](#fsAlphaMin), [fsAlphaTarget](#fsAlphaTarget), [fsAs](#fsAs),
[fsForces](#fsForces), [fsIterations](#fsIterations), [fsRestart](#fsRestart),
[fsStatic](#fsStatic) and [fsVelocityDecay](#fsVelocityDecay). For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force).
-}
type ForceSimulationProperty
    = FsStatic Boo
    | FsRestart Boo
    | FsIterations Num
    | FsAlpha Num
    | FsAlphaMin Num
    | FsAlphaTarget Num
    | FsVelocityDecay Num
    | FsForces (List Force)
    | FsAs String String String String


{-| Properties of a geoJson transform. Generated by [gjFields](#gjFields),
[gjFeature](#gjFeature) and [gjSignal](#gjSignal). For details see the
[Vega geojson transform documentation](https://vega.github.io/vega/docs/transforms/geojson/).
-}
type GeoJsonProperty
    = GjFields Field Field
    | GjFeature Field
    | GjSignal String


{-| Optional properties of a geoShape or geoPath transform. Generated by
[gpField](#gpField), [gpAs](#gpAs) and [gpPointRadius](#gpPointRadius).
For details see the
[Vega geopath transform documentation](https://vega.github.io/vega/docs/transforms/geopath/).
-}
type GeoPathProperty
    = GeField Field
    | GePointRadius Num
    | GeAs String


{-| Optional properties of a graticule transform. Generated by
[grField](#grField), [grExtent](#grExtent), [grExtentMajor](#grExtentMajor),
[grExtentMinor](#grExtentMinor), [grStep](#grStep), [grStepMajor](#grStepMajor),
[grStepMinor](#grStepMinor) and [grPrecision](#grPrecision). For details see the
[Vega graticule transform documentation](https://vega.github.io/vega/docs/transforms/graticule/).
-}
type GraticuleProperty
    = GrField Field
    | GrExtentMajor Num
    | GrExtentMinor Num
    | GrExtent Num
    | GrStepMajor Num
    | GrStepMinor Num
    | GrStep Num
    | GrPrecision Num


{-| Optional properties of an impute transform. Generated by
<imKeyVals>, [imMethod](#imMethod), [imGroupBy](#imGroupBy) and
[imValue](#imValue). For details see the
[Vega impute transform documentation](https://vega.github.io/vega/docs/transforms/impute/).
-}
type ImputeProperty
    = ImKeyVals Value
    | ImMethod ImputeMethod
    | ImGroupBy (List Field)
    | ImValue Value


{-| The imputation method to be used when assigning values to missing data values.
`ByValue` allows a specific value to be assigned for missing values while the other
methods will calculate a value based on a group of existing values. For details see the
[Vega impute transform documentation](https://vega.github.io/vega/docs/transforms/impute/).
-}
type ImputeMethod
    = ByValue
    | ByMean
    | ByMedian
    | ByMax
    | ByMin


{-| GUI Input properties. The type of relevant property will depend on the type of
input element selected. Generated by [inDebounce](#inDebounce), [inElement](#inElement),
[inOptions](#inOptions), [inMin](#inMin), [inMax](#inMax), [inStep](#inStep),
[inPlaceholder](#inPlaceholder) and [inAutocomplete](#inAutocomplete). For details see
the [Vega bind signal documentation](https://vega.github.io/vega/docs/signals/#bind).
-}
type InputProperty
    = InDebounce Float
    | InElement String
    | InOptions Value
    | InMin Float
    | InMax Float
    | InStep Float
    | InPlaceholder String
    | InAutocomplete Bool


{-| Join aggregation properties for use with a join aggregate transform. Generated
by [jaGroupBy](#jaGroupBy), [jaFields](#jaFields), [jaOps](#jaOps) and [jaAs](#jaAs).
For details see the
[Vega join aggregation transform documentation](https://vega.github.io/vega/docs/transforms/joinaggregate/).
-}
type JoinAggregateProperty
    = JAGroupBy (List Field)
    | JAFields (List Field)
    | JAOps (List Operation)
    | JAAs (List String)


{-| Describes the layout of a collection of group marks within a grid. Generated by
[loAlign](#loAlign), [loBounds](#loBounds), [loColumns](#loColumns), [loPadding](#loPadding),
[loPaddingRC](#loPaddingRC), [loOffset](#loOffset), [loOffsetRC](#loOffsetRC),
[loHeaderBand](#loHeaderBand), [loHeaderBandRC](#loHeaderBandRC), [loFooterBand](#loFooterBand),
[loFooterBandRC](#loFooterBandRC), [loTitleBand](#loTitleBand) and
[loTitleBandRC](#loTitleBandRC). For details, see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/).
-}
type LayoutProperty
    = LAlign GridAlign
    | LBounds BoundsCalculation
    | LColumns Num
    | LPadding Num
    | LPaddingRC Num Num
    | LOffset Num
    | LOffsetRC Num Num
    | LHeaderBand Num
    | LHeaderBandRC Num Num
    | LFooterBand Num
    | LFooterBandRC Num Num
    | LTitleBand Num
    | LTitleBandRC Num Num


{-| Type of custom legend encoding. Generated by [enLegend](#enLegend), [enTitle](#enTitle),
[enLabels](#enLabels), [enSymbols](#enSymbols) and [enGradient](#enGradient).
For details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/#custom)
-}
type LegendEncoding
    = EnLegend (List EncodingProperty)
    | EnTitle (List EncodingProperty)
    | EnLabels (List EncodingProperty)
    | EnSymbols (List EncodingProperty)
    | EnGradient (List EncodingProperty)


{-| Indicates the characteristics of alegend such as its orientation and scaling
to represent. Generated by [leType](#leType), [leDirection](#leDirection), [leOrient](#leOrient),
[leFill](#leFill), [leOpacity](#leOpacity), [leShape](#leShape), [leSize](#leSize),
[leStroke](#leStroke), [leStrokeDash](#leStrokeDash), [leEncode](#leEncode),
[leFormat](#leFormat), [leGridAlign](#leGridAlign), [leClipHeight](#leClipHeight),
[leColumns](#leColumns), [leColumnPadding](#leColumnPadding), [leRowPadding](#leRowPadding),
[leCornerRadius](#leCornerRadius), [leFillColor](#leFillColor), [leOffset](#leOffset),
[lePadding](#lePadding), [leStrokeColor](#leStrokeColor), [leStrokeWidth](#leStrokeWidth),
[leGradientLength](#leGradientLength), [leGradientLabelLimit](#leGradientLabelLimit),
[leGradientLabelOffset](#leGraidentLabelOffset), [leGradientOpacity](#leGradientOpacity),
[leGradientThickness](#leGradientThickness), [leGradientStrokeColor](#leGradientStrokeColor),
[leGradientStrokeWidth](#leGradientStrokeWidth), [leLabelAlign](#leLabelAlign),
[leLabelBaseline](#leLabelBaseline), [leLabelColor](#leLabelColor), [leLabelFont](#leLabelFont),
[leLabelFontSize](#leLabelFontSize), [leLabelFontWeight](#leLabelFontWeight),
[leLabelLimit](#leLabelLimit), [leLabelOpacity](#leLabelOpacity), [leLabelOffset](#leLabelOffset),
[leLabelOverlap](#leLabelOverlap), [leSymbolFillColor](#leSymbolFillColor),
[leSymbolOpacity](#leSymbolOpacity), [leSymbolOffset](#leSymbolOffset),
[leSymbolSize](#leSymbolSize), [leSymbolStrokeColor](#leSymbolStrokeColor),
[leSymbolStrokeWidth](#leSymbolStrokeWidth), [leSymbolType](#leSymbolType),
[leTickCount](#leTickCount), [leTemporalTickCount](#leTemporalTickCount),
[leTitle](#leTitle), [leTitleAlign](#leTitleAlign), [leTitleBaseline](#leTitleBaseline),
[leTitleColor](#leTitleColor), [leTitleFont](#leTitleFont), [leTitleFontSize](#leTitleFontSize),
[leTitleFontWeight](#leTitleFontWeight), [leTitleLimit](#leTitleLimit),
[leTitleOpacity](#leTitleOpacity) [leTitlePadding](#leTitlePadding),
[leValues](#leValues) and [leZIndex](#leZIndex). For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
type LegendProperty
    = LeType LegendType
    | LeDirection Orientation
    | LeOrient LegendOrientation
    | LeFill String
    | LeOpacity String
    | LeShape String
    | LeSize String
    | LeStroke String
    | LeStrokeDash String
    | LeEncode (List LegendEncoding)
    | LeFormat Str
    | LeGridAlign GridAlign
    | LeClipHeight Num
    | LeColumns Num
    | LeColumnPadding Num
    | LeRowPadding Num
    | LeCornerRadius Num
    | LeFillColor Str
    | LeOffset Value
    | LePadding Value
    | LeStrokeColor Str
    | LeStrokeWidth Num
    | LeGradientLabelLimit Num
    | LeGradientLabelOffset Num
    | LeGradientLength Num
    | LeGradientOpacity Num
    | LeGradientThickness Num
    | LeGradientStrokeColor Str
    | LeGradientStrokeWidth Num
    | LeLabelAlign HAlign
    | LeLabelBaseline VAlign
    | LeLabelColor Str
    | LeLabelFont Str
    | LeLabelFontSize Num
    | LeLabelFontWeight Value
    | LeLabelLimit Num
    | LeLabelOffset Num
    | LeLabelOpacity Num
    | LeLabelOverlap OverlapStrategy
    | LeSymbolBaseFillColor Str
    | LeSymbolBaseStrokeColor Str
    | LeSymbolDirection Orientation
    | LeSymbolFillColor Str
    | LeSymbolOpacity Num
    | LeSymbolOffset Num
    | LeSymbolSize Num
    | LeSymbolStrokeColor Str
    | LeSymbolStrokeWidth Num
    | LeSymbolType Symbol
    | LeTickCount Num
    | LeTemporalTickCount TimeUnit Num
    | LeTitle Str
    | LeTitleAlign HAlign
    | LeTitleBaseline VAlign
    | LeTitleColor Str
    | LeTitleOpacity Num
    | LeTitleFont Str
    | LeTitleFontSize Num
    | LeTitleFontWeight Value
    | LeTitleLimit Num
    | LeTitlePadding Value
    | LeValues (List Value)
    | LeZIndex Num


{-| Optional properties of a linkPath transform. Generated by [lpSourceY](#lpSourceY),
[lpTargetX](#lpTargetX), [lpTargetY](#lpTargetY), [lpOrient](#lpOrient),
[lpShape](#lpShape) and [lpAs](#lpAs). For details see the
[Vega linkpath transform documentation](https://vega.github.io/vega/docs/transforms/linkpath/).
-}
type LinkPathProperty
    = LPSourceX Field
    | LPSourceY Field
    | LPTargetX Field
    | LPTargetY Field
    | LPOrient Orientation
    | LPShape LinkShape
    | LPAs String


{-| Lookup references used in a lookup transform. Generated by [luValues](#luValues),
[luAs](#luAs) and [luDefault](#luDefault). For details see the
[Vega lookup transform documentation](https://vega.github.io/vega/docs/transforms/lookup/)
-}
type LookupProperty
    = LValues (List Field)
    | LAs (List String)
    | LDefault Value


{-| Indicates an individual property of a mark when encoding. Generated by [maX](#maX),
[maX2](#maX2), [maXC](#maXC), [maWidth](#maWidth), [maY](#maY), [maY2](#maY2), [maYC](#maYC),
[maHeight](#maHeight), [maOpacity](#maOpacity), [maFill](#maFill), [maFillOpacity](#maFillOpacity),
[maStroke](#maStroke), [maStrokeOpacity](#maStrokeOpacity), [maStrokeWidth](#maStrokeWidth),
[maStrokeCap](#maStrokeCap), [maStrokeDash](#maStrokeDash), [maStrokeDashOffset](#maStrokeDashOffset),
[maStrokeJoin](#maStrokeJoin), [maStrokeMiterLimit](#maStrokeMiterLimit), [maCursor](#maCursor),
[maHRef](#maHRef), [maTooltip](#maTooltip), [maZIndex](#maZIndex), [maAlign](#maAlign),
[maBaseline](#maBaseline), [maCornerRadius](#maCornerRadius), [maInterpolate](#maInterpolate),
[maTension](#maTension), [maDefined](#maDefined), [maSize](#maSize), [maStartAngle](#maStartAngle),
[maEndAngle](#maEndAngle), [maPadAngle](#maPadAngle), [maInnerRadius](#maInnerRadius),
[maOuterRadius](#maOuterRadius), [maOrient](#maOrient), [maGroupClip](#maGroupClip),
[maUrl](#maUrl), [maAspect](#maAspect), [maPath](#maPath), [maShape](#maShape),
[maSymbol](#maSymbol), [maAngle](#maAngle), [maDir](#maDir), [maDx](#maDx), [maDy](#maDy),
[maEllipsis](#maEllipsis), [maFont](#maFont), [maFontSize](#maFontSize),
[maFontWeight](#maFontWeight), [maFontStyle](#maFontStyle), [maLimit](#maLimit),
[maRadius](#maRadius), [maText](#maText) and [maTheta](#maTheta).

Additionally, custom mark properties may be created, such `xfocus` and `yfocus`
as used in this [Beeswarm plot](https://vega.github.io/vega/examples/beeswarm-plot/).
These can be created with [maCustom](#maCustom).

For further details see the
[Vega mark encoding documentation](https://vega.github.io/vega/docs/marks/#encode).

For details of properties associated with specific mark types, see the Vega documentation
for [arcs](https://vega.github.io/vega/docs/marks/arc/),
[areas](https://vega.github.io/vega/docs/marks/area/),
[groups](https://vega.github.io/vega/docs/marks/group/),
[images](https://vega.github.io/vega/docs/marks/image/),
[lines](https://vega.github.io/vega/docs/marks/line/),
[paths](https://vega.github.io/vega/docs/marks/path/),
[rects](https://vega.github.io/vega/docs/marks/rect/),
[rules](https://vega.github.io/vega/docs/marks/rule/),
[shapes](https://vega.github.io/vega/docs/marks/shape/),
[symbols](https://vega.github.io/vega/docs/marks/symbol/),
[text](https://vega.github.io/vega/docs/marks/text/) and
[trails](https://vega.github.io/vega/docs/marks/trail/).

-}
type MarkProperty
    = MX (List Value)
    | MX2 (List Value)
    | MXC (List Value)
    | MWidth (List Value)
    | MY (List Value)
    | MY2 (List Value)
    | MYC (List Value)
    | MHeight (List Value)
    | MOpacity (List Value)
    | MFill (List Value)
    | MFillOpacity (List Value)
    | MStroke (List Value)
    | MStrokeOpacity (List Value)
    | MStrokeWidth (List Value)
    | MStrokeCap (List Value)
    | MStrokeDash (List Value)
    | MStrokeDashOffset (List Value)
    | MStrokeJoin (List Value)
    | MStrokeMiterLimit (List Value)
    | MCursor (List Value)
    | MHRef (List Value)
    | MTooltip (List Value)
    | MZIndex (List Value)
      -- Properties shared by a subset of marks
    | MAlign (List Value)
    | MBaseline (List Value)
    | MCornerRadius (List Value)
    | MInterpolate (List Value)
    | MTension (List Value)
    | MDefined (List Value)
    | MSize (List Value)
      -- Arc mark specific:
    | MStartAngle (List Value)
    | MEndAngle (List Value)
    | MPadAngle (List Value)
    | MInnerRadius (List Value)
    | MOuterRadius (List Value)
      -- Area mark specific:
    | MOrient (List Value)
      -- Group mark specific:
    | MGroupClip (List Value)
      -- Image mark specific:
    | MUrl (List Value)
    | MAspect (List Value)
      -- Path mark specific:
    | MPath (List Value)
      -- Shape mark specific:
    | MShape (List Value)
      -- Symbol mark specific:
    | MSymbol (List Value)
      -- Text mark specific:
    | MAngle (List Value)
    | MDir (List Value)
    | MdX (List Value)
    | MdY (List Value)
    | MEllipsis (List Value)
    | MFont (List Value)
    | MFontSize (List Value)
    | MFontWeight (List Value)
    | MFontStyle (List Value)
    | MLimit (List Value)
    | MRadius (List Value)
    | MText (List Value)
    | MTheta (List Value)
    | MCustom String (List Value)


{-| Represents number-related values. Generated by [num](#num), [nums](#nums),
[numSignal](#numSignal), [numSignals](#numSignals), [numList](#numList),
[numExpr](#numExpr) and [numNull](#numNull)
-}
type Num
    = Num Float
    | Nums (List Float)
    | NumSignal String
    | NumSignals (List String)
    | NumList (List Num)
    | NumExpr Expr
    | NumNull


{-| Properties of the packing transformation. Generated by [paField](#paField),
[paSort](#paSort), [paSize](#paSize), [paRadius](#paRadius), [paPadding](#paPadding)
and [paAs](#paAs). For details see the
[Vega pack transform documentation](https://vega.github.io/vega/docs/transforms/pack)
-}
type PackProperty
    = PaField Field
    | PaSort (List ( Field, Order ))
    | PaSize Num
    | PaRadius (Maybe Field)
    | PaPadding Num
    | PaAs String String String String String


{-| Characteristic of a partition transform that will compute an adjacency diagram.
Generated by [ptField](#ptField), [ptSort](#ptSort), [ptPadding](#ptPadding),
[ptRound](#ptRound), [ptSize](#ptSize) and [ptAs](#ptAs). For details see the
[Vega partition transform documentation](https://vega.github.io/vega/docs/transforms/partition/).
-}
type PartitionProperty
    = PtField Field
    | PtSort (List ( Field, Order ))
    | PtPadding Num
    | PtRound Boo
    | PtSize Num
    | PtAs String String String String String String


{-| Properties of the pie chart transformation. Generated by [piField](#piField),
[piStartAngle](#piStartAngle), [piEndAngle](#piEndAngle), [piSort](#piSort) and
[piAs](#piAs). For details see the
[Vega pie transform documentation](https://vega.github.io/vega/docs/transforms/pie/)
-}
type PieProperty
    = PiField Field
    | PiStartAngle Num
    | PiEndAngle Num
    | PiSort Boo
    | PiAs String String


{-| Properties of the pivot chart transformation. Generated by [piGroupBy](#piGroupBy),
[piLimit](#piLimit) and [piOp](#piOp). For details see the
[Vega pivot transform documentation](https://vega.github.io/vega/docs/transforms/pivot/)
-}
type PivotProperty
    = PiGroupBy (List Field)
    | PiLimit Num
    | PiOp Operation


{-| Optional properties of a global map projection specification. Generated by
[prType](#prType), [prClipAngle](#prClipAngle), [prClipExtent](#prClipExtent),
[prScale](#prScale), [prTranslate](#prTranslate), [prCenter](#prCenter), [prRotate](#prRotate),
[prPointRadius](#prPointRadius), [prPrecision](#prPrecision), [prFit](#prFit),
[prExtent](#prExtent), [prSize](#prSize), [prCoefficient](#prCoefficient),
[prDistance](#prDistance), [prFraction](#prFraction), [prLobes](#prLobes),
[prParallel](#prParallel), [prRadius](#prRadius), [prRatio](#prRatio), [prSpacing](#prSpacing),
and [prTilt](#prTilt). For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties).
-}
type ProjectionProperty
    = PrType Projection
    | PrClipAngle Num
    | PrClipExtent Num
    | PrScale Num
    | PrTranslate Num
    | PrCenter Num
    | PrRotate Num
    | PrPointRadius Num
    | PrPrecision Num
    | PrFit Feature
    | PrExtent Num
    | PrSize Num
    | PrCoefficient Num
    | PrDistance Num
    | PrFraction Num
    | PrLobes Num
    | PrParallel Num
    | PrRadius Num
    | PrRatio Num
    | PrSpacing Num
    | PrTilt Num


{-| Describes the scale domain (type of data in scale). Generated by [doNums](#doNums),
[doStrs](#doStrs) and [doData](#doData). For full details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#domain).
-}
type ScaleDomain
    = DoNums Num
    | DoStrs Str
    | DoData (List DataReference)


{-| Individual scale property. Scale properties are related, but not identical,
to Vega-Lite's `ScaleProperty` which in Vega are more comprehensive and flexible.
Scale Properties characterise the fundamental data-to-visual transformations applied
by the `scale` function. Generated by [scType](#scType), [scDomain](#scDomain),
[scDomainMax](#scDomainMax), [scDomainMin](#scDomainMin), [scDomainMid](#scDomainMid),
[scDomainRaw](#scDomainRaw), [scRange](#scRange), [scReverse](#scReverse),
[scRound](#scRound), [scClamp](#scClamp), [scInterpolate](#scInterpolate),
[scPadding](#scPadding), [scNice](#scNice), [scZero](#scZero), [scExponent](#scExponent),
[scBase](#scBase), [scAlign](#scAlign), [scDomainImplicit](#scDomainImplicit),
[scPaddingInner](#scPaddingInner), [scPaddingOuter](#scPaddingOuter) and
[scRangeStep](#scRangeStep). For more details
see the [Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
type ScaleProperty
    = SType Scale
    | SDomain ScaleDomain
    | SDomainMax Num
    | SDomainMin Num
    | SDomainMid Num
    | SDomainRaw Value
    | SRange ScaleRange
    | SReverse Boo
    | SRound Boo
    | SClamp Boo
    | SInterpolate CInterpolate
    | SPadding Num
    | SNice ScaleNice
    | SZero Boo
    | SExponent Num
    | SBase Num
    | SAlign Num
    | SDomainImplicit Boo
    | SPaddingInner Num
    | SPaddingOuter Num
    | SRangeStep Num


{-| Describes a scale range of scale output values. In addition to the preset default
options (`RaWidth`, `RaHeight` etc.), scale ranges can be generated by [raNums](#raNums),
[raStrs](#raStrs), [raValues](#raValues), [raSignal](#raSignal), [raScheme](#raScheme),
[raData](#raData), [raStep](#raStep) and [raCustomDefault](#raCustomDefault). For full details
see the [Vega scale documentation](https://vega.github.io/vega/docs/scales/#range).
-}
type ScaleRange
    = RNums (List Float)
    | RStrs (List String)
    | RValues (List Value)
    | RSignal String
    | RScheme Str (List ColorSchemeProperty)
    | RData (List DataReference)
    | RStep Value
    | RCustom String
    | RaWidth
    | RaHeight
    | RaSymbol
    | RaCategory
    | RaDiverging
    | RaOrdinal
    | RaRamp
    | RaHeatmap
    | ScaleRangeSignal String


{-| Individual signal property. Generated by [siName](#siName), [siBind](#siBind),
[siDescription](#siDescription), [siOn](#siOn), [siUpdate](#siUpdate),
[siReact](#siReact), [siValue](#siValue) and [siPushOuter](#siPushOuter). For
details see the [Vega signal documentation](https://vega.github.io/vega/docs/signals).
-}
type SignalProperty
    = SiName String
    | SiBind Bind
    | SiDescription String
    | SiOn (List (List EventHandler))
    | SiUpdate String
    | SiReact Boo
    | SiValue Value
    | SiPushOuter


{-| The data source for a set of marks. Generated by [srData](#srData) and
[srFacet](#srFacet). For details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#from).
-}
type Source
    = SData Str
    | SFacet Str String (List Facet)


{-| A Vega specification. Specs can be (and usually are) nested.
They can range from a single Boolean value up to the entire Vega specification.
-}
type alias Spec =
    JE.Value


{-| Properties of the stacking transformation. Generated by [stField](#stField),
[stGroupBy](#stGroupBy), [stSort](#stSort), [stOffset](#stOffset) and
[stAs](#stAs). For details see the
[Vega stack transform documentation](https://vega.github.io/vega/docs/transforms/stack/)
-}
type StackProperty
    = StField Field
    | StGroupBy (List Field)
    | StSort (List ( Field, Order ))
    | StOffset StackOffset
    | StAs String String


{-| Represents string-related values. Generated by [str](#str), [strs](#strs),
[strList](#strList), [strSignal](#strSignal), [strSignals](#strSignals),
[strExpr](#strExpr) and [strNull](#strNull).
-}
type Str
    = Str String
    | Strs (List String)
    | StrSignal String
    | StrSignals (List String)
    | StrList (List Str)
    | StrExpr Expr
    | StrNull


{-| A visualization's title properties. Generated by [tiOrient](#tiOrient),
[tiAnchor](#tiAnchor), [tiAngle](#tiAngle), [tiBaseline](#tiBaseline), [tiColor](#tiColor),
[tiEncode](#tiEncode), [tiFont](#tiFont), [tiFontSize](#tiFontSize),
[tiFontWeight](#tiFontWeight), [tiFrame](#tiFrame), [tiInteractive](#tiInteractive),
[tiLimit](#tiLimit), [tiName](#tiName), [tiStyle](#tiStyle), [tiOffset](#tiOffset) and
[tiZIndex](#tiZIndex). For details, see the
[Vega title documentation](https://vega.github.io/vega/docs/title/)
-}
type TitleProperty
    = TText Str
    | TOrient Side
    | TAnchor Anchor
    | TAngle Num
    | TBaseline VAlign
    | TColor Str
    | TEncode (List EncodingProperty)
    | TFont Str
    | TFontSize Num
    | TFontWeight Value
    | TFrame TitleFrame
    | TInteractive Boo
    | TLimit Num
    | TName String
    | TStyle Str
    | TOffset Num
    | TZIndex Num


{-| Indicates the charactersitcs of a top-level mark. Generated by [mType](#mType),
[mClip](#mClip), [mDescription](#mDescription), [mEncode](#mEncode), [mFrom](#mFrom),
[mInteractive](#mInteractive), [mKey](#mKey), [mName](#mName), [mOn](#mOn),
[mSort](#mSort), [mTransform](#mTransform), [mRole](#mRole), [mStyle](#mStyle),
[mGroup](#mGroup) and [mZIndex](#mZIndex). For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks).
-}
type TopMarkProperty
    = MType Mark
    | MClip Clip
    | MDescription String
    | MEncode (List EncodingProperty)
    | MFrom (List Source)
    | MInteractive Boo
    | MKey Field
    | MName String
    | MOn (List Trigger)
    | MSort (List ( Field, Order ))
    | MTopZIndex Num
    | MTransform (List Transform)
    | MRole String -- Note: Vega docs recommend this is not set explicitly
    | MStyle (List String)
    | MGroup (List ( VProperty, Spec ))


{-| Defines a transformation that may be applied to a data stream or mark.
Generated by [trAggregate](#trAggregate), [trBin](#trBin), [trCollect](#trCollect),
[trContour](#trContour), [trCountPattern](#trCountPattern), [trCross](#trCross),
[trCrossFilter](#trCrossFilter), [trCrossFilterAsSignal](#trCrossFilterAsSignal),
[trDensity](#trDensity), [trExtent](#trExtent), [trExtentAsSignal](#trExtentAsSignal),
[trFilter](#trFilter), [trFlatten](#trFlatten), [trFlattenAs](#trFlattenAs),
[trFold](#trFold), [trFoldAs](#trFoldAs), [trForce](#trForce), [trFormula](#trFormula),
[trFormulaInitOnly](#trFormulaInitOnly), [trGeoJson](#trGeoJson), [trGeoPath](#trGeoPath),
[trGeoPoint](#trGeoPoint), [trGeoPointAs](#trGeoPointAs), [trGeoShape](#trGeoShape),
[trGraticule](#trGraticule), [trIdentifier](#trIdentifier), [trImpute](#trImpute),
[trJoinAggregate](#trJoinAggregate), [trLinkPath](#trLinkPath), [trLookup](#trLookup),
[trNest](#trNest), [trPack](#trPack), [trPartition](#trPartition), [trPie](#trPie),
[trPivot](#trPivot), [trProject](#trProject), [trResolveFilter](#trResolveFilter),
[trSample](#trSample), [trSequence](#trSequence), [trStack](#trStack),
[trStratify](#trStratify), [trTree](#trTree), [trTreeLinks](#trTreeLinks),
[trTreemap](#trTreemap), [trVoronoi](#trVoronoi), [trWindow](#trWindow) and
[trWordCloud](#trWordCloud).

For details see the
[Vega transform documentation](https://vega.github.io/vega/docs/transforms).

-}
type Transform
    = TAggregate (List AggregateProperty)
    | TBin Field Num (List BinProperty)
    | TCollect (List ( Field, Order ))
    | TContour Num Num (List ContourProperty)
    | TCountPattern Field (List CountPatternProperty)
    | TCross (List CrossProperty)
    | TCrossFilter (List ( Field, Num ))
    | TCrossFilterAsSignal (List ( Field, Num )) String
    | TDensity Distribution (List DensityProperty)
    | TExtent Field
    | TExtentAsSignal Field String
    | TFilter Expr
    | TFlatten (List Field)
    | TFlattenAs (List Field) (List String)
    | TFold (List Field)
    | TFoldAs (List Field) String String
    | TForce (List ForceSimulationProperty)
    | TFormula String String FormulaUpdate
    | TGeoJson (List GeoJsonProperty)
    | TGeoPath String (List GeoPathProperty)
    | TGeoPoint String Field Field
    | TGeoPointAs String Field Field String String
    | TGeoShape String (List GeoPathProperty)
    | TGraticule (List GraticuleProperty)
    | TIdentifier String
    | TImpute Field Field (List ImputeProperty)
    | TJoinAggregate (List JoinAggregateProperty)
    | TLinkPath (List LinkPathProperty)
    | TLookup String Field (List Field) (List LookupProperty)
    | TNest (List Field) Boo
    | TPack (List PackProperty)
    | TPartition (List PartitionProperty)
    | TPie (List PieProperty)
    | TPivot Field Field (List PivotProperty)
    | TProject (List ( Field, String ))
    | TResolveFilter String Num
    | TSample Num
    | TSequence Num Num Num
    | TStack (List StackProperty)
    | TStratify Field Field
    | TTree (List TreeProperty)
    | TTreeLinks
    | TTreemap (List TreemapProperty)
    | TVoronoi Field Field (List VoronoiProperty)
    | TWindow (List WindowOperation) (List WindowProperty)
    | TWordcloud (List WordcloudProperty)


{-| Characteristic of a treemap transform that will compute a hierarchical treemap
layout. Generated by [tmField](#tmField), [tmSort](#tmSort), [tmMethod](#tmMethod),
[tmPadding](#tmPadding), [tmPaddingInner](#tmPaddingInner), [tmPaddingOuter](#tmPaddingOuter),
[tmPaddingTop](#tmPaddingTop), [tmPaddingRight](#tmPaddingRight), [tmPaddingBottom](#tmPaddingBottom),
[tmPaddingLeft](#tmPaddingLeft), [tmRatio](#tmRatio), [tmRound](#tmRound), [tmSize](#tmSize)
and [tmAs](#tmAs). For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
type TreemapProperty
    = TmField Field
    | TmSort (List ( Field, Order ))
    | TmMethod TreemapMethod
    | TmPadding Num
    | TmPaddingInner Num
    | TmPaddingOuter Num
    | TmPaddingTop Num
    | TmPaddingRight Num
    | TmPaddingBottom Num
    | TmPaddingLeft Num
    | TmRatio Num
    | TmRound Boo
    | TmSize Num
    | TmAs String String String String String String


{-| Characteristic of a tree transform that will compute a node-link diagram layout.
Generated by [teField](#teField), [teSort](#teSort), [teMethod](#teMethod),
[teSize](#teSize), [teNodeSize](#teNodeSize) and [teAs](#teAs). For details see the
[Vega tree transform documentation](https://vega.github.io/vega/docs/transforms/tree/).
-}
type TreeProperty
    = TeField Field
    | TeSort (List ( Field, Order ))
    | TeMethod TreeMethod
    | TeSize Num
    | TeNodeSize Num
    | TeAs String String String String


{-| Represents a trigger enabling dynamic updates to data and marks. Generated
by [trigger](#trigger). For details see the
[Vega trigger documentation](https://vega.github.io/vega/docs/triggers/)
-}
type alias Trigger =
    Spec


{-| Characteristic of a trigger that can cause a data stream or mark to update.
Generated by [tgInsert](#tgInsert), [tgRemove](#tgRemove), [tgRemoveAll](#tgRemoveAll),
[tgToggle](#tgToggle) and [tgModifyValues](#tgModifyValues). For details see the
[Vega trigger documentation](https://vega.github.io/vega/docs/triggers).
-}
type TriggerProperty
    = TgTrigger String
    | TgInsert String
    | TgRemove String
    | TgRemoveAll
    | TgToggle String
    | TgModifyValues String String


{-| Represents a value such as a number or reference to a value such as a field label
or transformed value. Generated by [vStr](#vStr), [vStrs](#vStrs), [vNum](#vNum),
[vNums](#vNums), [vTrue](#vTrue), [vFalse](#vFalse), [vBoos](#vBoos),
[vObject](#vObject), [vKeyValue](#vKeyValue), [vValues](#vValues), [vSignal](#vSignal),
[vColor](#vColor), [vField](#vField), [vScale](#vScale), [vScaleField](#vScaleField),
[vBand](#vBand), [vExponent](#vExponent), [vMultiply](#vMultiply), [vOffset](#vOffset),
[vRound](#vRound), [vNull](#vNull) and [ifElse](#ifElse). For details, see the
[Vega value documentation](https://vega.github.io/vega/docs/types/#Value)
-}
type Value
    = VStr String
    | VStrs (List String)
    | VNum Float
    | VNums (List Float)
    | VBoo Bool
    | VBoos (List Bool)
    | VObject (List Value)
    | VKeyValue String Value
    | Values (List Value)
    | VSignal String
    | VColor ColorValue
    | VField Field
    | VScale Field
    | VBand Num
    | VExponent Value
    | VMultiply Value
    | VOffset Value
    | VRound Boo
    | VNull
    | VIfElse String (List Value) (List Value)


{-| Characteristic of a voronoi transformation.
Generated by [voExtent](#voExtent), [voSize](#voSize) and [voAs](#voAs).
For details see the
[Vega voronoi transform documentation](https://vega.github.io/vega/docs/transforms/voronoi/).
-}
type VoronoiProperty
    = VoExtent Num Num
    | VoSize Num
    | VoAs String


{-| Specify a window operation incliding the type of operation, a possible
operation parameter, the field to apply it to and its output field name. Generated
by [wnOperation](#wnOperation), [wnOperationOn](#wnOperationOn) and
[wnAggOperation](#wnAggOperation). For details see the
[Vega window transform documentation](https://vega.github.io/vega/docs/transforms/window/)
-}
type WindowOperation
    = WnOperation WOperation (Maybe Num) (Maybe Field) String
    | WnAggOperation Operation (Maybe Num) (Maybe Field) String


{-| Properties of the window transformation. Generated by [wnSort](#wnSort),
[wnGroupBy](#wnGroupBy), [wnFrame](#wnFrame) and [wnIgnorePeers](#wnIgnorePeers).
For details see the
[Vega window transform documentation](https://vega.github.io/vega/docs/transforms/window/)
-}
type WindowProperty
    = WnSort (List ( Field, Order ))
    | WnGroupBy (List Field)
    | WnFrame Num
    | WnIgnorePeers Boo


{-| Optional properties of a wordcloud transform. Generated by
[wcFont](#wcFont), [wcFontStyle](#wcFontStyle), [wcFontWeight](#wcFontWeight),
[wcFontSize](#wcFontSize), [wcFontSizeRange](#wcFontSizeRange), [wcPadding](#wcPadding),
[wcRotate](#wcRotate), [wcText](#wcText), [wcSize](#wcSize), [wcSprial](#wcSpiral)
and [wcAs](#wcAs). For details see the
[Vega wordcloud transform documentation](https://vega.github.io/vega/docs/transforms/wordcloud/).
-}
type WordcloudProperty
    = WcFont Str
    | WcFontStyle Str
    | WcFontWeight Str
    | WcFontSize Num
    | WcFontSizeRange Num
    | WcPadding Num
    | WcRotate Num
    | WcText Field
    | WcSize Num
    | WcSpiral Spiral
    | WcAs String String String String String String String



-- Exposed Types and Functions
-- ###########################


{-| The output field names generated when performing an aggregation transformation.
The list of field names should align with the fields operations provided by `agFields`
and `agOps`. If not provided, automatic names are generated by appending `_field`
to the operation name. For details see the
[Vega aggregate transform documentation](https://vega.github.io/vega/docs/transforms/aggregate/)
-}
agAs : List String -> AggregateProperty
agAs =
    AgAs


{-| Indicates if the full cross-product of all `groupby` values should be included
in the aggregate output when performing an aggregation transformation. For details
see the
[Vega aggregate transform documentation](https://vega.github.io/vega/docs/transforms/aggregate/)
-}
agCross : Boo -> AggregateProperty
agCross =
    AgCross


{-| Indicates if empty (zero count) groups should be dropped when performing an
aggregation transformation. For details see the
[Vega aggregate transform documentation](https://vega.github.io/vega/docs/transforms/aggregate/)
-}
agDrop : Boo -> AggregateProperty
agDrop =
    AgDrop


{-| The data fields for which to compute aggregate functions when performing an
aggregation transformation. The list of fields should align with the operations
and field names provided by `agOps` and `agAs`. If no fields and operations are
specified, a count aggregation will be used by default. For details see the
[Vega aggregate transform documentation](https://vega.github.io/vega/docs/transforms/aggregate/)
-}
agFields : List Field -> AggregateProperty
agFields =
    AgFields


{-| The data fields to group by when performing an aggregation transformation.
If not specified, a single group containing all data objects will be used when
aggregating. For details see the
[Vega aggregate transform documentation](https://vega.github.io/vega/docs/transforms/aggregate/)
-}
agGroupBy : List Field -> AggregateProperty
agGroupBy =
    AgGroupBy


{-| Specify a field to act as a unique key when performing an [agGroupBy](#agGroupBy)
aggregation. This can speed up the aggregation but should only be used when there
is redundancy in the list of groupBy fields (as there is when binning for example).

    transform
        [ trBin (field "examScore") (nums [ 0, 100 ]) []
        , trAggregate
            [ agKey (field "bin0")
            , agGroupBy [ field "bin0", field "bin1" ]
            , agOps [ Count ]
            , agAs [ "count" ]
            ]
        ]

Setting a group-by key is currently undocumented but for context see the
[Vega aggregate transform documentation](https://vega.github.io/vega/docs/transforms/aggregate/)

-}
agKey : Field -> AggregateProperty
agKey =
    AgKey


{-| The aggregation operations to apply to the fields when performing an
aggregation transformation. The list of operations should align with the fields
output field names provided by `agFields` and `agAs`. For details see the
[Vega aggregate transform documentation](https://vega.github.io/vega/docs/transforms/aggregate/)
-}
agOps : List Operation -> AggregateProperty
agOps =
    AgOps


{-| Represents an anchor position, as used for example, in placing title text.
-}
type Anchor
    = Start
    | Middle
    | End
    | AnchorSignal String


{-| Indicates an anchor position is to be determined by a named signal.
The signal should generate one of "start", "middle" or "end".
-}
anchorSignal : String -> Anchor
anchorSignal =
    AnchorSignal


{-| Indicates an auto-sizing rule is to be determined by a named signal. For details see the
[Vega autosize documentation](https://vega.github.io/vega/docs/specification/#autosize-types)
-}
autosizeSignal : String -> Autosize
autosizeSignal =
    AutosizeSignal


{-| Indicates the auto-sizing characteristics of the visualization such as amount
of padding, whether it should fill the parent container etc. For more details see the
[Vega autosize documentation](https://vega.github.io/vega/docs/specification/#autosize-types)
-}
type Autosize
    = AContent
    | AFit
    | AFitX
    | AFitY
    | ANone
    | APad
    | APadding
    | AResize
    | AutosizeSignal String


{-| Declare the way the view is sized. For details, see the
[Vega autosize documentation](https://vega.github.io/vega/docs/specification/#autosize-types)

    toVega
        [ width 500, padding 5, autosize [ AFit, AResize ], ds, mk [] ]

-}
autosize : List Autosize -> ( VProperty, Spec )
autosize aus =
    ( VAutosize, JE.object (List.map autosizeProperty aus) )


{-| Specify an interpolation fraction indicating where, for band scales, axis ticks
should be positioned. A value of 0 places ticks at the left edge of their bands.
A value of 0.5 places ticks in the middle of their bands. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axBandPosition : Num -> AxisProperty
axBandPosition =
    AxBandPosition


{-| Indicates if the domain (the axis baseline) should be included as part of
an axis. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axDomain : Boo -> AxisProperty
axDomain =
    AxDomain


{-| Specify the color of an axis domain line. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axDomainColor : Str -> AxisProperty
axDomainColor =
    AxDomainColor


{-| Specify the opacity of an axis domain line. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axDomainOpacity : Num -> AxisProperty
axDomainOpacity =
    AxDomainOpacity


{-| Specify the width in pixels of an axis domain line. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axDomainWidth : Num -> AxisProperty
axDomainWidth =
    AxDomainWidth


{-| Mark encodings for custom axis styling. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/#custom).
-}
axEncode : List ( AxisElement, List EncodingProperty ) -> AxisProperty
axEncode =
    AxEncode


{-| Create the axes used to visualize spatial scale mappings.

    ax =
        axes
            << axis "myXScale" SBottom [ axTitle (str "Population") ]
            << axis "myYScale" SLeft [ axTickCount (num 5) ]

For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).

-}
axes : List Spec -> ( VProperty, Spec )
axes axs =
    ( VAxes, JE.list axs )


{-| The format specifier pattern for axis labels. For numerical values, must be
a legal [d3-format specifier](https://github.com/d3/d3-format#locale_format).
For date-time values, must be a legal
[d3-time-format](https://github.com/d3/d3-time-format#locale_format) specifier.
For more details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axFormat : Str -> AxisProperty
axFormat =
    AxFormat


{-| Indicates if grid lines should be included as part of the axis. For details
see the [Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axGrid : Boo -> AxisProperty
axGrid =
    AxGrid


{-| Specify the color of an axis's grid lines. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axGridColor : Str -> AxisProperty
axGridColor =
    AxGridColor


{-| Specify the stroke dash of an axis's grid lines as a list of dash-gap lengths
or `[]` for a solid line (default). For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axGridDash : List Value -> AxisProperty
axGridDash =
    AxGridDash


{-| Specify the opacity of an axis's grid lines. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axGridOpacity : Num -> AxisProperty
axGridOpacity =
    AxGridOpacity


{-| Name of the scale to use for including grid lines. By default grid lines are
driven by the same scale as the ticks and labels. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axGridScale : String -> AxisProperty
axGridScale =
    AxGridScale


{-| Specify the width of an axis's grid lines in pixel units. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axGridWidth : Num -> AxisProperty
axGridWidth =
    AxGridWidth


{-| Create a single axis used to visualize a spatial scale mapping. The first
parameter is the name of the scale backing this axis, the second the position of
the axis relative to the data rectangle and the third a list of optional axis
properties. For example,

    axes
        << axis "xScale" SBottom [ axTitle "Population", axZIndex (num 1) ]

For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).

-}
axis : String -> Side -> List AxisProperty -> List Spec -> List Spec
axis scName side aps =
    (::) (JE.object (AxScale scName :: AxSide side :: aps |> List.map axisProperty))


{-| Encodable axis element. Used for customising some part of an axis. For details see
the [Vega custom axes documentation](https://vega.github.io/vega/docs/axes/#custom).
-}
type AxisElement
    = EAxis
    | ETicks
    | EGrid
    | ELabels
    | ETitle
    | EDomain


{-| Identifies the type of axis to be configured with [cfAxis](#cfAxis). For details,
see the [Vega axis configuration documentation](https://vega.github.io/vega/docs/config/#axes).
-}
type AxisType
    = AxAll
    | AxLeft
    | AxTop
    | AxRight
    | AxBottom
    | AxX
    | AxY
    | AxBand


{-| Specify how or if labels should be hidden if they exceed the axis range. If the
parameter is `NumNull`, no check for label size is made. A number specifies
the permitted overflow in pixels that can be tolerated. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelBound : Num -> AxisProperty
axLabelBound =
    AxLabelBound


{-| Specify the horizontal alignment of axis tick labels. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelAlign : HAlign -> AxisProperty
axLabelAlign =
    AxLabelAlign


{-| Specify the angle of text for an axis. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelAngle : Num -> AxisProperty
axLabelAngle =
    AxLabelAngle


{-| Specify the vertical alignment of axis tick labels. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelBaseline : VAlign -> AxisProperty
axLabelBaseline =
    AxLabelBaseline


{-| Specify the color of an axis label. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelColor : Str -> AxisProperty
axLabelColor =
    AxLabelColor


{-| Specify how labels at the beginning or end of the axis should be aligned
with the scale range. The parameter represents a pixel distance threshold. Labels
with anchor coordinates within this threshold distance for an axis end-point will be
flush-adjusted. If `NumNull`, no flush alignment will be applied. For details see
the [Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelFlush : Num -> AxisProperty
axLabelFlush =
    AxLabelFlush


{-| Specify the number of pixels by which to offset flush-adjusted labels
(default 0). For example, a value of 2 will push flush-adjusted labels 2 pixels
outward from the centre of the axis. Offsets can help the labels better visually
group with corresponding axis ticks. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelFlushOffset : Num -> AxisProperty
axLabelFlushOffset =
    AxLabelFlushOffset


{-| Specify the font name of an axis label. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelFont : Str -> AxisProperty
axLabelFont =
    AxLabelFont


{-| Specify the font size of an axis label. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelFontSize : Num -> AxisProperty
axLabelFontSize =
    AxLabelFontSize


{-| Specify the font weight of an axis label. This can be a number (e.g. `vNum 300`)
or text (e.g. `vStr "bold"`). For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelFontWeight : Value -> AxisProperty
axLabelFontWeight =
    AxLabelFontWeight


{-| Specify the maximum length in pixels of axis tick labels. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelLimit : Num -> AxisProperty
axLabelLimit =
    AxLabelLimit


{-| Specify the opacity of an axis label. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelOpacity : Num -> AxisProperty
axLabelOpacity =
    AxLabelOpacity


{-| Specify the strategy to use for resolving overlap of axis labels. For details
see the [Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelOverlap : OverlapStrategy -> AxisProperty
axLabelOverlap =
    AxLabelOverlap


{-| Specify the padding in pixels between labels and ticks. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabelPadding : Num -> AxisProperty
axLabelPadding =
    AxLabelPadding


{-| Specify whether or not if labels should be included as part of an axis.
For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axLabels : Boo -> AxisProperty
axLabels =
    AxLabels


{-| The maximum extent in pixels that axis ticks and labels should use. This
determines a maximum offset value for axis titles. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axMaxExtent : Value -> AxisProperty
axMaxExtent =
    AxMaxExtent


{-| The minimum extent in pixels that axis ticks and labels should use. This
determines a minimum offset value for axis titles. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axMinExtent : Value -> AxisProperty
axMinExtent =
    AxMinExtent


{-| The orthogonal offset in pixels by which to displace the axis from its position
along the edge of the chart. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axOffset : Value -> AxisProperty
axOffset =
    AxOffset


{-| The anchor position of the axis in pixels. For x-axes with top or bottom
orientation, this sets the axis group x coordinate. For y-axes with left or right
orientation, this sets the axis group y coordinate. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axPosition : Value -> AxisProperty
axPosition =
    AxPosition


{-| Specify the tick interval for a temporal axis. The first parameter is
the type of temporal interval to use and the second the number of steps of that
interval between ticks. For example to specify a tick is requested at 3 month
intervals (e.g. January, April, July, October):

    ax =
        axes
            << axis "xScale" SBottom [ axTemporalTickCount Month (num 3) ]

If the second parameter is not a positive value, the number of ticks will be
auto-generated for the given interval type. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).

-}
axTemporalTickCount : TimeUnit -> Num -> AxisProperty
axTemporalTickCount =
    AxTemporalTickCount


{-| Specify the color of an axis's ticks. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTickColor : Str -> AxisProperty
axTickColor =
    AxTickColor


{-| A desired number of ticks, for axes visualizing quantitative scales. The
resulting number may be different so that values are “nice” (multiples of 2, 5, 10)
and lie within the underlying scale’s range. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTickCount : Num -> AxisProperty
axTickCount =
    AxTickCount


{-| Specify whether or not an extra axis tick should be added for the initial
position of an axis. This is useful for styling axes for band scales such that
ticks are placed on band boundaries rather in the middle of a band.
For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTickExtra : Boo -> AxisProperty
axTickExtra =
    AxTickExtra


{-| Specify the offset in pixels of an axis's ticks, labels and gridlines. For
details see the [Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTickOffset : Num -> AxisProperty
axTickOffset =
    AxTickOffset


{-| Specify the opacity of an axis's ticks. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTickOpacity : Num -> AxisProperty
axTickOpacity =
    AxTickOpacity


{-| Specify whether or not pixel position values for an axis's ticks should be
rounded to the nearest integer. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTickRound : Boo -> AxisProperty
axTickRound =
    AxTickRound


{-| Specify whether or not ticks should be included as part of an axis.
For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTicks : Boo -> AxisProperty
axTicks =
    AxTicks


{-| Specify the size in pixels of axis ticks. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTickSize : Num -> AxisProperty
axTickSize =
    AxTickSize


{-| Specify the width in pixels of an axis's ticks. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTickWidth : Num -> AxisProperty
axTickWidth =
    AxTickWidth


{-| A title for an axis. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTitle : Str -> AxisProperty
axTitle =
    AxTitle


{-| Specify the horizontal alignment of an axis's title. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTitleAlign : HAlign -> AxisProperty
axTitleAlign =
    AxTitleAlign


{-| Specify the angle of an axis's title text. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTitleAngle : Num -> AxisProperty
axTitleAngle =
    AxTitleAngle


{-| Specify the vertical alignment of an axis's title. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTitleBaseline : VAlign -> AxisProperty
axTitleBaseline =
    AxTitleBaseline


{-| Specify the color of an axis's title. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTitleColor : Str -> AxisProperty
axTitleColor =
    AxTitleColor


{-| Specify the font to be used for an axis's title. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTitleFont : Str -> AxisProperty
axTitleFont =
    AxTitleFont


{-| Specify the size of font in pixels for an axis's title. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTitleFontSize : Num -> AxisProperty
axTitleFontSize =
    AxTitleFontSize


{-| Specify the font weight of an axis's title. This can be a number (e.g. `vNum 300`)
or text (e.g. `vStr "bold"`). For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTitleFontWeight : Value -> AxisProperty
axTitleFontWeight =
    AxTitleFontWeight


{-| Specify the maximum allowed length of an axis's title. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTitleLimit : Num -> AxisProperty
axTitleLimit =
    AxTitleLimit


{-| Specify the opacity of an axis's title. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTitleOpacity : Num -> AxisProperty
axTitleOpacity =
    AxTitleOpacity


{-| Specify an offset in pixels between an axis's labels and title. For details
see the [Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTitlePadding : Value -> AxisProperty
axTitlePadding =
    AxTitlePadding


{-| Specify the X position of an axis title relative to the axis group, overriding
the standard layout. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTitleX : Num -> AxisProperty
axTitleX =
    AxTitleX


{-| Specify the Y position of an axis title relative to the axis group, overriding
the standard layout. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axTitleY : Num -> AxisProperty
axTitleY =
    AxTitleY


{-| Explicitly set an axis tick and label values. For details
see the [Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axValues : Value -> AxisProperty
axValues =
    AxValues


{-| The z-index indicating the layering of an axis group relative to other axis,
mark and legend groups. The default value is 0 and axes and grid lines are drawn
behind any marks defined in the same specification level. Higher values (1) will
cause axes and grid lines to be drawn on top of marks. For details
see the [Vega axis documentation](https://vega.github.io/vega/docs/axes/).
-}
axZIndex : Num -> AxisProperty
axZIndex =
    AxZIndex


{-| The fill background color of a visualization. This should be specified as a
[color string](https://vega.github.io/vega/docs/types/#Color). For further details
see the [Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
background : Str -> ( VProperty, Spec )
background s =
    ( VBackground, strSpec s )


{-| Indicates a bounds calculation type is to be determined by a named signal.
-}
bcSignal : String -> BoundsCalculation
bcSignal =
    BoundsCalculationSignal


{-| Convenience function for specifying a black color setting for marks that can
be colored (e.g. with [maStroke](#maStroke))
-}
black : Value
black =
    vStr "black"


{-| Specify the value in the binned domain at which to anchor the bins of a bin
transform, shifting the bin boundaries if necessary to ensure that a boundary aligns
with the anchor value. If not specified, the minimum bin extent value serves as
the anchor. For details see the
[Vega bin transform documentation](https://vega.github.io/vega/docs/transforms/bin/)
-}
bnAnchor : Num -> BinProperty
bnAnchor =
    BnAnchor


{-| Specify the output fields to contain the extent of a binning transform
(its start and end bin values). If not specified these can be retrieved as the `bin0`
and `bin1` fields. For details see the
[Vega bin transform documentation](https://vega.github.io/vega/docs/transforms/bin/)
-}
bnAs : String -> String -> BinProperty
bnAs =
    BnAs


{-| Specify the number base to use for automatic bin determination in a bin transform.
If not specified, base 10 is assumed. For details see the
[Vega bin transform documentation](https://vega.github.io/vega/docs/transforms/bin/)
-}
bnBase : Num -> BinProperty
bnBase =
    BnBase


{-| Specify the allowable bin step sub-divisions when performing a binning transformation.
The parameter should evaluate to a list of numeric values. If not specified, the
default of [5, 2] is used, which indicates that for base 10 numbers automatic bin
determination can consider dividing bin step sizes by 5 and/or 2. For details see the
[Vega bin transform documentation](https://vega.github.io/vega/docs/transforms/bin/)
-}
bnDivide : Num -> BinProperty
bnDivide =
    BnDivide


{-| Specify the maximum number of bins to create with a bin transform. For details see
the [Vega bin transform documentation](https://vega.github.io/vega/docs/transforms/bin/)
-}
bnMaxBins : Num -> BinProperty
bnMaxBins =
    BnMaxBins


{-| Specify the minimum allowable bin step size between bins when performing a bin
transform. For details see the
[Vega bin transform documentation](https://vega.github.io/vega/docs/transforms/bin/)
-}
bnMinStep : Num -> BinProperty
bnMinStep =
    BnMinStep


{-| Specify whether or not the bin boundaries in a binning transform will use human-friendly
values such as multiples of ten. For details see the
[Vega bin transform documentation](https://vega.github.io/vega/docs/transforms/bin/)
-}
bnNice : Boo -> BinProperty
bnNice =
    BnNice


{-| Bind the specification of a binning transform (its start, step and stop properties)
to a signal with the given name. For details see the
[Vega bin transform documentation](https://vega.github.io/vega/docs/transforms/bin/)
-}
bnSignal : String -> BinProperty
bnSignal =
    BnSignal


{-| Specify the exact step size to use between bins in a bin transform. This overrides
some other options such as `bnMaxBins`. For details see the
[Vega bin transform documentation](https://vega.github.io/vega/docs/transforms/bin/)
-}
bnStep : Num -> BinProperty
bnStep =
    BnStep


{-| Specify a list of allowable step sizes between bins to choose from when performing
a bin transform. For details see the
[Vega bin transform documentation](https://vega.github.io/vega/docs/transforms/bin/)
-}
bnSteps : Num -> BinProperty
bnSteps =
    BnSteps


{-| An expression that will be evaluated as a Boolean value.
-}
booExpr : Expr -> Boo
booExpr =
    BooExpr


{-| A list of Boolean literals used for functions that can accept Boolean literals
or something that generates a list of Boolean values (e.g. a signal).
-}
boos : List Bool -> Boo
boos =
    Boos


{-| A signal that will provide a Boolean value.
-}
booSignal : String -> Boo
booSignal =
    BooSignal


{-| A list of signals that will provide Boolean values.
-}
booSignals : List String -> Boo
booSignals =
    BooSignals


{-| The bounds calculation method to determine the extent of a sub-plot in a grid
layout. `Full` indicates the entire calculated bounds (including axes, title, and
legend) will be used. `Flush` indicates only the specified width and height values
for the group mark will be used. The flush setting can be useful when attempting
to place sub-plots without axes or legends into a uniform grid structure.
-}
type BoundsCalculation
    = Full
    | Flush
    | BoundsCalculationSignal String


{-| Indicates a type of text case transformation. Used when pre-processing text as
part of a count pattern transformation.
-}
type Case
    = Lowercase
    | Uppercase
    | Mixedcase


{-| Specify the default autosizing properties of view. For details, see the
[Vega configuration documentation](https://vega.github.io/vega/docs/config/).
-}
cfAutosize : List Autosize -> ConfigProperty
cfAutosize =
    CfAutosize


{-| Specify the default properties of axes. For details, see the
[Vega axis configuration documentation](https://vega.github.io/vega/docs/config/#axes).
-}
cfAxis : AxisType -> List AxisProperty -> ConfigProperty
cfAxis =
    CfAxis


{-| Specify the default background of the view. For details, see the
[Vega configuration documentation](https://vega.github.io/vega/docs/config/).
-}
cfBackground : Str -> ConfigProperty
cfBackground =
    CfBackground


{-| Specify the default properties of the top-level group mark representing the
data rectangle of a chart. For details, see the
[Vega configuration documentation](https://vega.github.io/vega/docs/config/).
-}
cfGroup : List MarkProperty -> ConfigProperty
cfGroup =
    CfGroup


{-| Specify the default filtering of events. This can specified in the first parameter
as either a 'whitelist' (`Allow`) or 'blacklist' (`Prevent`) comprised the event types
to be considered in the second parameter. If that list is empty, all event types
will be placed in the black/white list. For details, see the
[Vega configuration documentation](https://vega.github.io/vega/docs/config/).
-}
cfEvents : EventFilter -> List EventType -> ConfigProperty
cfEvents =
    CfEvents


{-| Specify the default properties of legends. For details, see the
[Vega legend configuration documentation](https://vega.github.io/vega/docs/config/#legends).
-}
cfLegend : List LegendProperty -> ConfigProperty
cfLegend =
    CfLegend


{-| Specify the default properties of a given mark type. For details, see the
[Vega mark configuration documentation](https://vega.github.io/vega/docs/config/#mark).
-}
cfMark : Mark -> List MarkProperty -> ConfigProperty
cfMark =
    CfMark


{-| Specify the default properties of all marks. For details, see the
[Vega mark configuration documentation](https://vega.github.io/vega/docs/config/#mark).
-}
cfMarks : List MarkProperty -> ConfigProperty
cfMarks =
    CfMarks


{-| Specify the properties of a named style. The first property is the name to
give the style, the second its mark properties. For details, see the
[Vega style configuration documentation](https://vega.github.io/vega/docs/config/#style).
-}
cfStyle : String -> List MarkProperty -> ConfigProperty
cfStyle =
    CfStyle


{-| Specify the properties defining named range lists used as part of scale specification.
The first parameter is the named range label (e.g. `RaOrdinal`, `RaCategory`, `RaHeamap`
etc.). The second is the new range of values to be associated with the named range.

    cf =
        config [ cfScaleRange RaHeatmap (raScheme (str "greenblue") []) ]

For details, see the
[Vega scale range configuration documentation](https://vega.github.io/vega/docs/config/#scale-range).

-}
cfScaleRange : ScaleRange -> ScaleRange -> ConfigProperty
cfScaleRange =
    CfScaleRange


{-| Specify the default properties of a title. For details, see the
[Vega title configuration documentation](https://vega.github.io/vega/docs/config/#title).
-}
cfTitle : List TitleProperty -> ConfigProperty
cfTitle =
    CfTitle


{-| Define a color in HCL space. Each of the three triplet values can be a numeric
literal, a signal, or subject to some scale.
-}
cHCL : List Value -> List Value -> List Value -> ColorValue
cHCL =
    HCL


{-| Define a color in HSL space. Each of the three triplet values can be a numeric
literal, a signal, or subject to some scale.
-}
cHSL : List Value -> List Value -> List Value -> ColorValue
cHSL =
    HSL


{-| Indicates the type of color interpolation to apply, when mapping a data field
onto a color scale. Parameterised interpolation types generated by [cubeHelix](#cubeHelix),
[cubeHelixLong](#cubeHelixLong), [hclLong](#hclLong), [hslLong](#hslLong) and
[rgb](#rgb). For details see the
[Vega quantitative scales documentation](https://vega.github.io/vega/docs/scales/#quantitative).
-}
type CInterpolate
    = CubeHelix Float
    | CubeHelixLong Float
    | Hcl
    | HclLong
    | Hsl
    | HslLong
    | Lab
    | Rgb Float


{-| Define a color in CIELab space. Each of the three triplet values can be a numeric
literal, a signal, or subject to some scale.
-}
cLAB : List Value -> List Value -> List Value -> ColorValue
cLAB =
    LAB


{-| Specify whether or not clipping should be applied to a set of marks within a
group mark. For details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#clip).
-}
clEnabled : Boo -> Clip
clEnabled =
    ClEnabled


{-| Specify an arbitrary clipping path to be applied to a set of marks within a
region. The path should be a valid
[SVG path string](https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Paths).
For details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#clip).
-}
clPath : Str -> Clip
clPath =
    ClPath


{-| Specify a cartographic projection with which to clip all marks to a projected
sphere of the globe. This is useful in conjunction with map projections that
otherwise included projected content (such as graticule lines) outside the bounds
of the globe. For details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#clip).
-}
clSphere : Str -> Clip
clSphere =
    ClSphere


{-| Specify the kernel density estimation bandwidth used in a contour transformation.
For details see the
[Vega contour transform documentation](https://vega.github.io/vega/docs/transforms/contour/)
-}
cnBandwidth : Num -> ContourProperty
cnBandwidth =
    CnBandwidth


{-| Specify the size of cells used for density estimation in a contour transformation.
For details see the
[Vega contour transform documentation](https://vega.github.io/vega/docs/transforms/contour/)
-}
cnCellSize : Num -> ContourProperty
cnCellSize =
    CnCellSize


{-| Specify the desired number of contours used in a contour transformation. This
will be ignored if `cnThresholds` setting explicit contour values are provided.
For details see the
[Vega contour transform documentation](https://vega.github.io/vega/docs/transforms/contour/)
-}
cnCount : Num -> ContourProperty
cnCount =
    CnCount


{-| Specify whether or not contour threshold values should be automatically aligned
to “nice”, human-friendly values when performing a contour transformation. If true,
the number of thresholds may deviate from that provided by `cnCount`. For details see the
[Vega contour transform documentation](https://vega.github.io/vega/docs/transforms/contour/)
-}
cnNice : Boo -> ContourProperty
cnNice =
    CnNice


{-| Specify whether or not contour polygons should be smoothed in a contour transformation.
This will be ignored if kernel density estimation is used.
For details see the
[Vega contour transform documentation](https://vega.github.io/vega/docs/transforms/contour/)
-}
cnSmooth : Boo -> ContourProperty
cnSmooth =
    CnSmooth


{-| Specify the explicit contour values to be generated by a contour transformation.
For details see the
[Vega contour transform documentation](https://vega.github.io/vega/docs/transforms/contour/)
-}
cnThresholds : Num -> ContourProperty
cnThresholds =
    CnThresholds


{-| Specify a grid of values over which to compute contours. If not provided,
[trContour](#trContour) will instead compute contours of the kernel density
estimate of input data. For details see the
[Vega contour transform documentation](https://vega.github.io/vega/docs/transforms/contour/)
-}
cnValues : Num -> ContourProperty
cnValues =
    CnValues


{-| Specify the x-coordinate field used for density estimation in a contour
transformation. For details see the
[Vega contour transform documentation](https://vega.github.io/vega/docs/transforms/contour/)
-}
cnX : Field -> ContourProperty
cnX =
    CnX


{-| Specify the y-coordinate field used for density estimation in a contour
transformation. For details see the
[Vega contour transform documentation](https://vega.github.io/vega/docs/transforms/contour/)
-}
cnY : Field -> ContourProperty
cnY =
    CnY


{-| Combines a list of labelled specifications into a single specification that
may be passed to JavaScript for rendering. This is useful when you wish to create
a single page with multiple visualizations.

    combineSpecs
        [ ( "vis1", myFirstVis )
        , ( "vis2", mySecondVis )
        , ( "vis3", myOtherVis )
        ]

-}
combineSpecs : List LabelledSpec -> Spec
combineSpecs specs =
    JE.object specs


{-| Create a collection of configuration settings. This allows default stylings
to be defined for a collection of visualizations or visualization components.
For details, see the
[Vega configuration documentation](https://vega.github.io/vega/docs/config/)
for details.

    cf =
        config
            [ cfMark Text [ maFont [ vStr "Roboto Condensed, sans-serif" ] ]
            , cfTitle
                [ tiFont (str "Roboto Condensed, sans-serif")
                , tiFontWeight (vNum 500)
                , tiFontSize (num 17)
                ]
            , cfAxis AxAll
                [ axLabelFont (str "Roboto Condensed, sans-serif")
                , axLabelFontSize (num 12)
                ]
            ]

-}
config : List ConfigProperty -> ( VProperty, Spec )
config cps =
    ( VConfig, JE.object (List.map configProperty cps) )


{-| Specify the names of the two output fields generated by a count pattern transformation.
By default they are named `text` and `count`. For details see the
[Vega count pattern transform documentation](https://vega.github.io/vega/docs/transforms/countpattern/).
-}
cpAs : String -> String -> CountPatternProperty
cpAs =
    CPAs


{-| Specify how text case transformation to apply before performing a count pattern
transformation. The default of `Mixedcase` will leave text untransformed. For details see the
[Vega count pattern transform documentation](https://vega.github.io/vega/docs/transforms/countpattern/).
-}
cpCase : Case -> CountPatternProperty
cpCase =
    CPCase


{-| Specify a regular expression to define a match in a count pattern transformation.
The parameter should be a regular expression where any backslash symbols are escaped.

    transform [ trCountPattern (field "data") [ cpPattern (str "[\\w']{3,}") ] ]

For details see the
[Vega count pattern transform documentation](https://vega.github.io/vega/docs/transforms/countpattern/).

-}
cpPattern : Str -> CountPatternProperty
cpPattern =
    CPPattern


{-| Specify a regular expression to define the text to ignore when performing a
count pattern transformation. The parameter should be a regular expression where
any backslash symbols are escaped.

    transform
        [ trCountPattern (field "data")
            [ cpPattern (str "[\\w']{3,}")
            , cpStopwords (str "(a|the|she|it)")
            ]
        ]

For details see the
[Vega count pattern transform documentation](https://vega.github.io/vega/docs/transforms/countpattern/).

-}
cpStopwords : Str -> CountPatternProperty
cpStopwords =
    CPStopwords


{-| Specify the names of the two output fields of a cross-product transform. For
details see the
[Vega cross-product transform documentation](https://vega.github.io/vega/docs/transforms/cross/).
-}
crAs : String -> String -> CrossProperty
crAs =
    CrAs


{-| Specify an optional filter for limiting the results of a cross-product transform.
For details see the
[Vega cross-product transform documentation](https://vega.github.io/vega/docs/transforms/cross/).
-}
crFilter : Expr -> CrossProperty
crFilter =
    CrFilter


{-| Define a color in RGB space. Each of the three triplet values can be a numeric
literal, a signal, or subject to some scale.
-}
cRGB : List Value -> List Value -> List Value -> ColorValue
cRGB =
    RGB


{-| Specify the number of colors to use in a color scheme. This can be useful
for scale types such as quantize, which use the length of the scale range to
determine the number of discrete bins for the scale domain. For details see the
[Vega color scheme documentation](https://vega.github.io/vega/docs/schemes/).
-}
csCount : Num -> ColorSchemeProperty
csCount =
    SCount


{-| Specify the extent of the color range to use in sequential and diverging color
schemes. The parameter should evaluate to a two-element list representing the min
and max values of the extent. For example [0.2, 1] will rescale the color scheme
such that color values in the range [0, 0.2] are excluded from the scheme.
For details see the
[Vega color scheme documentation](https://vega.github.io/vega/docs/schemes/).
-}
csExtent : Num -> ColorSchemeProperty
csExtent =
    SExtent


{-| Specify the name of a color scheme to use. For details see the
[Vega color scheme documentation](https://vega.github.io/vega/docs/schemes/).
-}
csScheme : Str -> ColorSchemeProperty
csScheme =
    SScheme


{-| Cube-helix color interpolation. The parameter is a gamma value to control the
brightness of the color trajectory.
-}
cubeHelix : Float -> CInterpolate
cubeHelix =
    CubeHelix


{-| A long path cube-helix color interpolation. The parameter is a gamma value to control the
brightness of the color trajectory.
-}
cubeHelixLong : Float -> CInterpolate
cubeHelixLong =
    CubeHelixLong


{-| Represents the type of cursor to display. For an explanation of each type, see the
[CSS cursor documentation](https://developer.mozilla.org/en-US/docs/Web/CSS/cursor#Keyword%20values)
-}
type Cursor
    = CAuto
    | CDefault
    | CNone
    | CContextMenu
    | CHelp
    | CPointer
    | CProgress
    | CWait
    | CCell
    | CCrosshair
    | CText
    | CVerticalText
    | CAlias
    | CCopy
    | CMove
    | CNoDrop
    | CNotAllowed
    | CAllScroll
    | CColResize
    | CRowResize
    | CNResize
    | CEResize
    | CSResize
    | CWResize
    | CNEResize
    | CNWResize
    | CSEResize
    | CSWResize
    | CEWResize
    | CNSResize
    | CNESWResize
    | CNWSEResize
    | CZoomIn
    | CZoomOut
    | CGrab
    | CGrabbing


{-| A convenience function for generating a text string representing a given cursor
type. This can be used instead of specifying a cursor type as a literal string
to avoid problems of mistyping its name.

    mark Symbol
        [ mEncode
            [ enEnter
                [ maY [ vScale "yScale", vNum 0, vOffset (vNum 1) ]
                , maShape [ symbolValue SymTriangleDown ]
                , maSize [ vNum 400 ]
                ]
            , enUpdate
                [ maX [ vScale "xScale", vSignal "currentYear" ] ]
            , enHover
                [ maCursor [ cursorValue CPointer ] ]
            ]
        ]

-}
cursorValue : Cursor -> Value
cursorValue cur =
    case cur of
        CAuto ->
            vStr "auto"

        CDefault ->
            vStr "default"

        CNone ->
            vStr "none"

        CContextMenu ->
            vStr "context-menu"

        CHelp ->
            vStr "help"

        CPointer ->
            vStr "pointer"

        CProgress ->
            vStr "progress"

        CWait ->
            vStr "wait"

        CCell ->
            vStr "cell"

        CCrosshair ->
            vStr "crosshair"

        CText ->
            vStr "text"

        CVerticalText ->
            vStr "vertical-text"

        CAlias ->
            vStr "alias"

        CCopy ->
            vStr "copy"

        CMove ->
            vStr "move"

        CNoDrop ->
            vStr "no-drop"

        CNotAllowed ->
            vStr "not-allowed"

        CAllScroll ->
            vStr "all-scroll"

        CColResize ->
            vStr "col-resize"

        CRowResize ->
            vStr "row-resize"

        CNResize ->
            vStr "n-resize"

        CEResize ->
            vStr "e-resize"

        CSResize ->
            vStr "s-resize"

        CWResize ->
            vStr "w-resize"

        CNEResize ->
            vStr "ne-resize"

        CNWResize ->
            vStr "nw-resize"

        CSEResize ->
            vStr "se-resize"

        CSWResize ->
            vStr "sw-resize"

        CEWResize ->
            vStr "ew-resize"

        CNSResize ->
            vStr "ns-resize"

        CNESWResize ->
            vStr "nesw-resize"

        CNWSEResize ->
            vStr "nwse-resize"

        CZoomIn ->
            vStr "zoom-in"

        CZoomOut ->
            vStr "zoom-out"

        CGrab ->
            vStr "grab"

        CGrabbing ->
            vStr "grabbing"


{-| Reference a dataset with the given name. For details see the
[Vega data reference documentation](https://vega.github.io/vega/docs/scales/#dataref)
-}
daDataset : String -> DataReference
daDataset =
    DDataset


{-| Reference a data field with the given value. For details see the
[Vega data reference documentation](https://vega.github.io/vega/docs/scales/#dataref)
-}
daField : Field -> DataReference
daField =
    DField


{-| Reference a collection of data fields with the given values. For details see the
[Vega data reference documentation](https://vega.github.io/vega/docs/scales/#dataref)
-}
daFields : List Field -> DataReference
daFields =
    DFields


{-| Specify the data format when loading or generating a data set. For details see the
[Vega data documentation](https://vega.github.io/vega/docs/data/#properties)
-}
daFormat : List FormatProperty -> DataProperty
daFormat =
    DaFormat


{-| Specify updates to insert, remove, and toggle data values, or clear the data in a data set
when trigger conditions are met. For details see the
[Vega data documentation](https://vega.github.io/vega/docs/data/#properties)
-}
daOn : List Trigger -> DataProperty
daOn =
    DaOn


{-| Reference a collection of nested data references.

     scale "myScale"
         [ scDomain
             (doData
                 [ daReferences
                     [ [ daDataset "counts", daField (field "count") ]
                     , [ daDataset "nulls", daField (field "count") ]
                     ]
                 ]
             )
         ]

For details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#dataref)

-}
daReferences : List (List DataReference) -> DataReference
daReferences =
    DReferences


{-| Make a data reference with a signal. For details see the
[Vega data reference documentation](https://vega.github.io/vega/docs/scales/#dataref)
-}
daSignal : String -> DataReference
daSignal =
    DSignal


{-| Sort a data reference. For details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#dataref)
-}
daSort : List SortProperty -> DataReference
daSort =
    DSort


{-| Specify a named data source when generating a data set. For details see the
[Vega data documentation](https://vega.github.io/vega/docs/data/#properties)
-}
daSource : String -> DataProperty
daSource =
    DaSource


{-| Specify a collection of named data sources when generating a data set. For details see the
[Vega data documentation](https://vega.github.io/vega/docs/data/#properties)
-}
daSources : List String -> DataProperty
daSources =
    DaSources


{-| Declare a named data set. Depending on the properties provided this may be
from an external file, from a named data source or inline literal values. See the
[Vega data documentation](https://vega.github.io/vega/docs/data/#properties) for details.

      dataSource
          [ data "pop" [ daUrl "data/population.json" ]
          , data "popYear" [ daSource "pop" ] |> transform [ trFilter (expr "datum.year == year") ]
          ]

-}
data : String -> List DataProperty -> DataTable
data name dProps =
    ( "name", JE.string name ) :: List.map dataProperty dProps


{-| Create a column of data. A column has a name and a list of values. The final
parameter is the list of any other columns to which this is added.

     myData =
         dataFromColumns "animals" []
             << dataColumn "Animal" (vStrs [ "Fish", "Dog", "Cat" ])
             << dataColumn "Age" (vNums [ 28, 12, 6 ])

-}
dataColumn : String -> Value -> List DataColumn -> List DataColumn
dataColumn colName val =
    case val of
        VNums ns ->
            (::) (List.map (\n -> ( colName, JE.float n )) ns)

        VNum n ->
            (::) [ ( colName, JE.float n ) ]

        VBoos bs ->
            (::) (List.map (\b -> ( colName, JE.bool b )) bs)

        VBoo b ->
            (::) [ ( colName, JE.bool b ) ]

        VStrs ss ->
            (::) (List.map (\s -> ( colName, JE.string s )) ss)

        VStr s ->
            (::) [ ( colName, JE.string s ) ]

        VObject vals ->
            (::) [ ( colName, JE.object (List.concatMap valueProperties vals) ) ]

        Values vals ->
            (::) [ ( colName, JE.list (List.map valueSpec vals) ) ]

        _ ->
            (::) [ ( colName, JE.null ) ]


{-| Declare a data table from a provided list of column values. Each column contains
values of the same type, but columns each with a different type are permitted.
Columns should all contain the same number of items; if not the dataset will be
truncated to the length of the shortest column. The first parameter should be the
name given to the data table for later reference. An optional list for field
formatting instructions can be provided in the second parameter or an empty list
to use the default formatting. See the
[Vega data documentation](https://vega.github.io/vega/docs/data/#format)
for details.
The columns themselves are most easily generated with `dataColumn`

    myData =
        dataFromColumns "animals" [ parse [ ( "Year", foDate "%Y" ) ] ]
            << dataColumn "Animal" (vStrs [ "Fish", "Dog", "Cat" ])
            << dataColumn "Age" (vNums [ 28, 12, 6 ])
            << dataColumn "Year" (vStrs [ "2010", "2014", "2015" ])

-}
dataFromColumns : String -> List FormatProperty -> List DataColumn -> DataTable
dataFromColumns name fmts cols =
    let
        dataArray =
            cols
                |> transpose
                |> List.map JE.object
                |> JE.list

        fmt =
            if fmts == [] then
                []
            else
                [ ( "format", JE.object (List.concatMap formatProperty fmts) ) ]
    in
    [ ( "name", JE.string name ), ( "values", dataArray ) ] ++ fmt


{-| Declare a data source from a provided list of row values. Each row contains
a list of tuples where the first value is a string representing the column name, and the
second the column value for that row. Each column can have a value of a different type
but you must ensure that when subsequent rows are added, they match the types of previous
values with shared column names. An optional list for field formatting instructions can
be provided in the first parameter or an empty list to use the default formatting. See the
[Vega-Lite documentation](https://vega.github.io/vega-lite/docs/data.html#format)
for details.
The rows themselves are most easily generated with `dataRow`. Note though that generally
if you are creating data inline (as opposed to reading from a file), adding data by column
in more efficient and less error-prone.

    myData =
        dataFromRows "animals" [ parse [ ( "Year", foDate "%Y" ) ] ]
            << dataRow [ ( "Animal", vStr "Fish" ), ( "Age", vNum 28 ), ( "Year", vStr "2010" ) ]
            << dataRow [ ( "Animal", vStr "Dog" ), ( "Age", vNum 12 ), ( "Year", vStr "2014" ) ]
            << dataRow [ ( "Animal", vStr "Cat" ), ( "Age", vNum 6 ), ( "Year", vStr "2015" ) ]

-}
dataFromRows : String -> List FormatProperty -> List DataRow -> DataTable
dataFromRows name fmts rows =
    let
        fmt =
            if fmts == [] then
                []
            else
                [ ( "format", JE.object (List.concatMap formatProperty fmts) ) ]
    in
    [ ( "name", JE.string name ), ( "values", JE.list rows ) ] ++ fmt


{-| Specify a property to customise data loading. In addition to declaring `DaSphere`
for a global sphere, they are more usually generated by the functions
[daFormat](#daFormat), [daSource](#daSource), [daSources](#daSources),
[daValue](#daValue),[daOn](#daOn) and [daUrl](#daUrl). For details, see the
[Vega data properties documentation](https://vega.github.io/vega/docs/data/#properties)
-}
type DataProperty
    = DaFormat (List FormatProperty)
    | DaSource String
    | DaSources (List String)
    | DaValue Value
    | DaSphere
    | DaOn (List Trigger)
    | DaUrl String


{-| Create a row of data. A row comprises a list of (columnName,value) pairs.
The final parameter is the list of any other rows to which this is added.

    myData =
        dataFromRows "animals" []
            << dataRow [ ( "Animal", vStr "Fish" ), ( "Age", vNum 28 ) ]
            << dataRow [ ( "Animal", vStr "Dog" ), ( "Age", vNum 12 ) ]

-}
dataRow : List ( String, Value ) -> List DataRow -> List DataRow
dataRow row =
    (::) (JE.object (List.map (\( colName, val ) -> ( colName, valueSpec val )) row))


{-| Specify a data source to be used in the visualization. A data source is a collection
of data tables which themselves may be generated inline, loaded from a URL or the
result of a transformation. For details see the
[Vega data documentation](https://vega.github.io/vega/docs/data).

      dataSource
          [ data "pop" [ daUrl "data/population.json" ]
          , data "popYear" [ daSource "pop" ] |> transform [ trFilter (expr "datum.year == year") ]
          , data "males" [ daSource "popYear" ] |> transform [ trFilter (expr "datum.sex == 1") ]
          , data "females" [ daSource "popYear" ] |> transform [ trFilter (expr "datum.sex == 2") ]
          , data "ageGroups" [ daSource "pop" ] |> transform [ trAggregate [ agGroupBy [ field "age" ] ] ]
          ]

-}
dataSource : List DataTable -> Data
dataSource dataTables =
    ( VData, JE.list (List.map JE.object dataTables) )


{-| Indicates the type of data to be parsed when reading input data. Parameterised
data type format specifications generated by [foDate](#foDate) and [foUtc](#foUtc).
-}
type DataType
    = FoNum
    | FoBoo
    | FoDate String
    | FoUtc String


{-| Specify the name of a data file to be loaded when generating a data set. For details see the
[Vega data documentation](https://vega.github.io/vega/docs/data/#properties)
-}
daUrl : String -> DataProperty
daUrl =
    DaUrl


{-| Specify some inline data value(s) when generating a data set. For details see the
[Vega data documentation](https://vega.github.io/vega/docs/data/#properties)
-}
daValue : Value -> DataProperty
daValue =
    DaValue


{-| Create a data reference from a list of literals. Useful when combining with
data references from existing data streams. For example

    scale "myScale"
      [ scDomain
          (doData
              [ daReferences
                  [ [ daValues (vNums [ 2, 4 ]) ]
                  , [ daDataset "myData", daField (field "myField") ]
                  ]
              ]
          )
      ]

For details see the
[Vega data reference documentation](https://vega.github.io/vega/docs/scales/#dataref)

-}
daValues : Value -> DataReference
daValues =
    DValues


{-| Specifies a density function as either a Probability Density Function (PDF)
or a Cumulative Density Function (CDF).
For details see the
[Vega density transform documentation](https://vega.github.io/vega/docs/transforms/density/).
-}
type DensityFunction
    = PDF
    | CDF
    | DensityFunctionSignal String


{-| Specifies a density function based on the value in the named signal. For details see the
[Vega density transform documentation](https://vega.github.io/vega/docs/transforms/density/).
-}
densityFunctionSignal : String -> DensityFunction
densityFunctionSignal =
    DensityFunctionSignal


{-| Provide a text description of the visualization.
-}
description : String -> ( VProperty, Spec )
description s =
    ( VDescription, JE.string s )


{-| Specifies a kernel density estimate (smoothed probability distribution)
for a set of numerical values. The first parameter is the data set containing
the source data (or empty string if not to be specified explicitly), the second
the name of the field containing the numerical values and the third the bandwidth
of the kernel. If the bandwidth is 0, it will be estimated from the input data.
For details see the
[Vega distribution documentation](https://vega.github.io/vega/docs/transforms/density/#distributions).
-}
diKde : String -> Field -> Num -> Distribution
diKde =
    DiKde


{-| Specifies a weighted mixture of probability distributions. The parameter should
be a list of tuples representing the component distributions and their corresponding
weights. For details see the
[Vega distribution documentation](https://vega.github.io/vega/docs/transforms/density/#distributions).
-}
diMixture : List ( Distribution, Num ) -> Distribution
diMixture =
    DiMixture


{-| Specifies a normal (Gaussian) probability distribution with a given mean (first
parameter) and standard deviation (second parameter). For details see the
[Vega distribution documentation](https://vega.github.io/vega/docs/transforms/density/#distributions).
-}
diNormal : Num -> Num -> Distribution
diNormal =
    DiNormal


{-| Specifies a uniform probability distribution with given minimum (first
parameter) and maximum (second parameter) bounds. For details see the
[Vega distribution documentation](https://vega.github.io/vega/docs/transforms/density/#distributions).
-}
diUniform : Num -> Num -> Distribution
diUniform =
    DiUniform


{-| Specify the output fields to contain a density transform's values (assigned
to a field with a name given by the first parameter) and probabilities (field
named in the second parameter). If not specified, the output will allocated to
fields named `value` and `probability`. For details see the
[Vega density transform documentation](https://vega.github.io/vega/docs/transforms/density/).
-}
dnAs : String -> String -> DensityProperty
dnAs =
    DnAs


{-| Specify a [min, max] domain from which to sample a distribution as part of a
density transform. The only distribution method that does not require an extent to
be defined is `diKde`. For details see the
[Vega density transform documentation](https://vega.github.io/vega/docs/transforms/density/).
-}
dnExtent : Num -> DensityProperty
dnExtent =
    DnExtent


{-| Specify the type of distribution to generate for a density transform. For details see the
[Vega density transform documentation](https://vega.github.io/vega/docs/transforms/density/).
-}
dnMethod : DensityFunction -> DensityProperty
dnMethod =
    DnMethod


{-| Specify the number of uniformly spaced steps to take along an extent domain
during a density transform. For details see the
[Vega density transform documentation](https://vega.github.io/vega/docs/transforms/density/).
-}
dnSteps : Num -> DensityProperty
dnSteps =
    DnSteps


{-| A [data reference object](https://vega.github.io/vega/docs/scales/#dataref)
that specifies field values in one or more data sets to define a scale domain.
For details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#domain)
-}
doData : List DataReference -> ScaleDomain
doData =
    DoData


{-| A numeric list literal (`Nums`) representing a scale domain. For details see
the [Vega scale documentation](https://vega.github.io/vega/docs/scales/#domain)
-}
doNums : Num -> ScaleDomain
doNums =
    DoNums


{-| A signal representing a scale domain. For details see
the [Vega scale documentation](https://vega.github.io/vega/docs/scales/#domain)
-}
doSignal : String -> ScaleDomain
doSignal s =
    DoStrs (StrSignal s)


{-| A list of signals representing a scale domain. For details see
the [Vega scale documentation](https://vega.github.io/vega/docs/scales/#domain)
-}
doSignals : List String -> ScaleDomain
doSignals ss =
    DoStrs (StrSignals ss)


{-| A string list literal (`Strs`) representing a scale domain. For details see
the [Vega scale documentation](https://vega.github.io/vega/docs/scales/#domain)
-}
doStrs : Str -> ScaleDomain
doStrs =
    DoStrs


{-| Indicates a DSV (delimited separated value) format with a custom delimiter.
Typically used when specifying a data URL.
-}
dsv : String -> FormatProperty
dsv =
    DSV


{-| The properties with a named custom encoding set. To invoke the custom set a
signal event handler with an `encode` directive should be defined. For further
details see the
[Vega mark encoding documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
enCustom : String -> List MarkProperty -> EncodingProperty
enCustom name =
    Custom name


{-| The properties to be encoded when a mark item is first instantiated or a
visualization is resized. For further details see the
[Vega mark encoding documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
enEnter : List MarkProperty -> EncodingProperty
enEnter =
    Enter


{-| Specify the encoding directives for the visual properties of the top-level
group mark representing a chart’s data rectangle. For example, this can be used
to set a background fill color for the plotting area, rather than the entire view.
-}
encode : List EncodingProperty -> ( VProperty, Spec )
encode eps =
    ( VEncode, JE.object (List.map encodingProperty eps) )


{-| The properties to be encoded when the data backing a mark item is removed.
For further details see the
[Vega mark encoding documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
enExit : List MarkProperty -> EncodingProperty
enExit =
    Exit


{-| Custom encoding for gradient (continuous) legends. For more details see the
[Vega legend encoding documentation](https://vega.github.io/vega/docs/legends/#custom)
-}
enGradient : List EncodingProperty -> LegendEncoding
enGradient =
    EnGradient


{-| Specify whether or not a custom legend encoding set is to be interactive.
For further details see the
[Vega custom legend encoding documentation](https://vega.github.io/vega/docs/legends/#custom).
-}
enInteractive : Boo -> EncodingProperty
enInteractive =
    EnInteractive


{-| The properties to be encoded when a pointer hovers over a mark item.
For further details see the
[Vega mark encoding documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
enHover : List MarkProperty -> EncodingProperty
enHover =
    Hover


{-| Custom encoding for legend labels. For more details see the
[Vega legend encoding documentation](https://vega.github.io/vega/docs/legends/#custom)
-}
enLabels : List EncodingProperty -> LegendEncoding
enLabels =
    EnLabels


{-| Custom encoding for a legend group mark. For more details see the
[Vega legend encoding documentation](https://vega.github.io/vega/docs/legends/#custom)
-}
enLegend : List EncodingProperty -> LegendEncoding
enLegend =
    EnLegend


{-| Specify a name for a custom legend encoding set.
For further details see the
[Vega custom legend encoding documentation](https://vega.github.io/vega/docs/legends/#custom).
-}
enName : String -> EncodingProperty
enName =
    EnName


{-| Custom encoding for symbol (discrete) legends. For more details see the
[Vega legend encoding documentation](https://vega.github.io/vega/docs/legends/#custom)
-}
enSymbols : List EncodingProperty -> LegendEncoding
enSymbols =
    EnSymbols


{-| Custom ecoding for a legend title. For more details see the
[Vega legend encoding documentation](https://vega.github.io/vega/docs/legends/#custom)
-}
enTitle : List EncodingProperty -> LegendEncoding
enTitle =
    EnTitle


{-| The properties to be encoded when a mark item is updated such as in response
to a signal change. For further details see the
[Vega mark encoding documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
enUpdate : List MarkProperty -> EncodingProperty
enUpdate =
    Update


{-| Specify an event stream filter that lets only events that occur between the
two given event streams from being handled. This is useful, for example, for
capturing pointer dragging as it is a pointer movement event stream that occurs
between `MouseDown` and `MouseUp` events.

    << signal "myDrag"
        [ siValue (vNums [ 200, 200 ])
        , siOn
            [ evHandler
                [esObject
                    [ esBetween [ esMark Rect, esType MouseDown ] [ esSource ESView, esType MouseUp ]
                    , esSource ESView
                    , esType MouseMove
                    ]
                ]
                [ evUpdate "xy()" ]
            ]
        ]

The `esObject` specified above is equivalent to the more compact, but more error-prone
event stream selector:

    esSelector (str "[rect:mousedown, view:mouseup] > view:mousemove")

For more details see the
[Vega event stream object documentation](http://vega.github.io/vega/docs/event-streams/#object).

-}
esBetween : List EventStreamProperty -> List EventStreamProperty -> EventStreamProperty
esBetween =
    ESBetween


{-| Specify whether or not an event stream is consumed once it has been captured.
If false, the event is made available for subsequent event handling. For more
details see the [Vega event stream documentation](http://vega.github.io/vega/docs/event-streams/#object).
-}
esConsume : Boo -> EventStreamProperty
esConsume =
    ESConsume


{-| Specify the minimum time to wait between event occurrence and processing. If
a new event arrives during a debouncing window, the debounce timer will restart
and only the new event will be captured. For more details see the
[Vega event stream documentation](http://vega.github.io/vega/docs/event-streams/#object).
-}
esDebounce : Num -> EventStreamProperty
esDebounce =
    ESDebounce


{-| Specify a DOM node as the source for an event selector. This should be referenced
with a standard [CSS selector](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Selectors).
For details see the
[Vega event stream selector documentation](http://vega.github.io/vega/docs/event-streams/#selector).
-}
esDom : String -> EventSource
esDom =
    ESDom


{-| Specify the filter expressions that must evaluate to `True` in order for an
event to be captured. If multiple filters are provided they must all be satisfied
(`and` operator) for the event to be captured. For more details see the
[Vega event stream documentation](http://vega.github.io/vega/docs/event-streams/#object).
-}
esFilter : List String -> EventStreamProperty
esFilter =
    ESFilter


{-| Specify a mark type as the source for an event stream. For details see the
[Vega event stream selector documentation](http://vega.github.io/vega/docs/event-streams/#selector).
-}
esMark : Mark -> EventStreamProperty
esMark =
    ESMark


{-| Specify a named mark as the source for an event stream. The name given here
must correspond to the name provided to a mark via `mName`. For details see the
[Vega event stream documentation](http://vega.github.io/vega/docs/event-streams/#object).
-}
esMarkName : String -> EventStreamProperty
esMarkName =
    ESMarkName


{-| Specify a single event stream merging the given list of event streams. See the
[Vega event stream documentation](http://vega.github.io/vega/docs/event-streams/#object) for details.
-}
esMerge : List EventStream -> EventStream
esMerge =
    ESMerge


{-| Represents an event stream for modelling user input. This function expects a
stream object definition which provides a more self-explanatory and robust
form of specification than using a selector string. For details see the
[Vega event stream documentation](<http://vega.github.io/vega/docs/event-streams/#object>.
-}
esObject : List EventStreamProperty -> EventStream
esObject =
    ESObject


{-| Specify an event stream for modelling user input. This function expects a
shorthand event stream selector string, which is a more compact way of specifying
a stream than with `eventStream` but is more vulnerable to mistakes (as
it is simply a string). For event stream selector details see the
[Vega event stream selector documentation](http://vega.github.io/vega/docs/event-streams/#selector).
-}
esSelector : Str -> EventStream
esSelector =
    ESSelector


{-| Specify the name of a signal that triggers an event stream. This will allow
an update to be triggered whenever the given signal changes. For more details, see the
[Vega event stream signal documentation](https://vega.github.io/vega/docs/event-streams/#signal).
-}
esSignal : String -> EventStream
esSignal =
    ESSignal


{-| Specify a source for an event selector. For details see the
[Vega event stream selector documentation](http://vega.github.io/vega/docs/event-streams/#selector).
-}
esSource : EventSource -> EventStreamProperty
esSource =
    ESSource


{-| Specify an event stream that is to be used as input into a derived event stream.
This can be useful if several event streams have a common element, for example:

    si =
        let
            esStart =
                esMerge
                    [ esObject [ esType MouseDown ]
                    , esObject [ esType TouchStart ]
                    ]

            esEnd =
                esObject [ esType TouchEnd ]
        in
        signals
            << signal "down"
                [ siValue vNull
                , siOn
                    [ evHandler [ esEnd ] [ evUpdate "null" ]
                    , evHandler [ esStart ] [ evUpdate "xy()" ]
                    ]
                ]
            << signal "xCur"
                [ siValue vNull
                , siOn
                    [ evHandler [ esObject [ esStream esStart, esType TouchEnd ] ]
                        [ evUpdate "slice(xDom)" ]
                    ]
                ]
            << signal "yCur"
                [ siValue vNull
                , siOn
                    [ evHandler [ esObject [ esStream esStart, esType TouchEnd ] ]
                        [ evUpdate "slice(yDom)" ]
                    ]
                ]

For more details see the
[Vega event stream documentation](http://vega.github.io/vega/docs/event-streams/#object).

-}
esStream : EventStream -> EventStreamProperty
esStream =
    ESDerived


{-| Specify the minimum time in milliseconds between captured events (default 0).
New events that arrive within the throttling window will be ignored. For timer events,
this property determines the interval between timer ticks. For more details see the
[Vega event stream documentation](http://vega.github.io/vega/docs/event-streams/#object).
-}
esThrottle : Num -> EventStreamProperty
esThrottle =
    ESThrottle


{-| Specify an event stream type used when handling user interaction events. See the
[Vega event stream documentation](http://vega.github.io/vega/docs/event-streams/#types) for details.
-}
esType : EventType -> EventStreamProperty
esType =
    ESType


{-| Name of a mark property encoding set to re-evaluate for the mark item that is
the source of an input event. This is required if `evUpdate` is not specified. For
details see the [Vega event handler documentation](https://vega.github.io/vega/docs/signals/#handlers).
-}
evEncode : String -> EventHandler
evEncode =
    EEncode


{-| Used to configure default event handling. Can be used to prevent or allow a
set of event types from being handled. For details see the
[Vega event configuration documentation](https://vega.github.io/vega/docs/config/#event).
-}
type EventFilter
    = Prevent
    | Allow


{-| A source for an event selector. To specify a DOM node as a source (using a
CSS selector string), see [esDom](#esDom). For details see the
[Vega event stream selector documentation](http://vega.github.io/vega/docs/event-streams/#selector).
-}
type EventSource
    = ESAll
    | ESView
    | ESScope
    | ESWindow
    | ESDom String


{-| Event types used when handling user interaction events. The `Timer` type will
fire an event at a regular interval determined by the number of milliseconds provided
to the `esThrottle` function. For details see the
[Vega event stream type documentation](http://vega.github.io/vega/docs/event-streams/#types).
-}
type EventType
    = Click
    | DblClick
    | DragEnter
    | DragLeave
    | DragOver
    | KeyDown
    | KeyPress
    | KeyUp
    | MouseDown
    | MouseMove
    | MouseOut
    | MouseOver
    | MouseUp
    | MouseWheel
    | TouchEnd
    | TouchMove
    | TouchStart
    | Wheel
    | Timer


{-| Indicates whether or not updates that do not change a signal value should propagate.
For example, if true and an input stream update sets the signal to its current value,
downstream signals will still be notified of an update. For details see the
[Vega event handler documentation](https://vega.github.io/vega/docs/signals/#handlers).
-}
evForce : Boo -> EventHandler
evForce =
    EForce


{-| Specify an event event handler. The first parameter represents the stream(s) of
events to respond to. The second, a list of handlers that respond to the event stream.
For example,

    signal "tooltip"
        [ siValue (vObject [])
        , siOn
            [ evHandler [esObject [esMark Rect, esType MouseOver] ] [ evUpdate "datum" ]
            , evHandler [esObject [esMark Rect, esType MouseOut] ] [ evUpdate "" ]
            ]
        ]

For details see the
[Vega event stream documentation](https://vega.github.io/vega/docs/event-streams/).

-}
evHandler : List EventStream -> List EventHandler -> List EventHandler
evHandler ess eHandlers =
    EEvents ess :: eHandlers


{-| Specify an event selector used to generate an event stream. For details see the
[Vega event stream selector documentation](https://vega.github.io/vega/docs/event-streams/#selector).
-}
evStreamSelector : Str -> EventStream
evStreamSelector =
    ESSelector


{-| Expression to be evaluated when an event occurs, the result of which becomes
the new signal value. For details see the
[Vega event handler documentation](https://vega.github.io/vega/docs/signals/#handlers).
-}
evUpdate : String -> EventHandler
evUpdate =
    EUpdate


{-| A field lookup that forms a Vega [Expr](https://vega.github.io/vega/docs/types/#Expr).
In contrast to an expression generated by `expr`, a field lookup is applied once
to an entire field rather than evaluated once per datum.
-}
exField : String -> Expr
exField =
    ExField


{-| Represents an expression to enable custom calculations. This should be text
in the Vega expression language. In contrast to field reference or signal,
the expression generated by `expr` is evaluated once per datum behaving like
anonymous (or lambda) functions. For details see the
[Vega expression documentation](https://vega.github.io/vega/docs/expressions).
-}
expr : String -> Expr
expr =
    Expr


{-| For data-driven facets, a list aggregate transform properties for the
aggregate data values generated for each facet group item.
-}
faAggregate : List AggregateProperty -> Facet
faAggregate =
    FaAggregate


{-| For pre-faceted data, the name of the data field containing a list of data
values to use as the local partition. This is required if using pre-faceted data.
-}
faField : Field -> Facet
faField =
    FaField


{-| For data-driven facets, specify a list of field names by which to partition
the data. This is required if using pre-faceted data.
-}
faGroupBy : List Field -> Facet
faGroupBy =
    FaGroupBy


{-| A false value used for functions that can accept a Boolean literal or a
reference to something that generates a Boolean value (e.g. a signal).
-}
false : Boo
false =
    Boo False


{-| Perform a lookup on the current data object using the given field.
Once evaluated this is similar to simply providing a string value. For details
see the [Vega data type documentation](https://vega.github.io/vega/docs/types/#FieldValue)
-}
fDatum : Field -> Field
fDatum =
    FDatum


{-| Specify the name of a geoJSON feature. Can be used with [prFit](#prFit) to
fit a map projection scaling and centre to a given geoJSON feature or feature
collection.

    pr =
        projections
            << projection "myProjection"
                [ prType Orthographic
                , prSize (numSignal "[width,height]")
                , prFit (feName "mapData")
                ]

-}
feName : String -> Feature
feName =
    FeName


{-| Specify the signal that generates a geoJSON feature. Can be used with
[prFit](#prFit) to fit a map projection scaling and centre to a given geoJSON
feature or feature collection.

    ds =
        dataSource
            [ data "myLongLatData" []
                |> transform
                    [ trGeoJson
                        [ gjFields (field "longitude") (field "latitude")
                        , gjSignal "feature"
                        ]
                    ]
            ]

    pr =
        projections
            << projection "myProjection"
                [ prType Orthographic
                , prSize (numSignal "[width,height]")
                , prFit (featureSignal "feature")
                ]

-}
featureSignal : String -> Feature
featureSignal =
    FeatureSignal


{-| An expression that references a field but can perform calculations on each
datum in the field. For example

    fExpr "scale('xScale', datum.Horsepower)"

-}
fExpr : String -> Field
fExpr =
    FExpr


{-| Reference a property of the enclosing group mark instance as a field value. For
details see the
[Vega data type documentation](https://vega.github.io/vega/docs/types/#FieldValue)
-}
fGroup : Field -> Field
fGroup =
    FGroup


{-| The name of a field to reference. For details see the
[Vega data type documentation](https://vega.github.io/vega/docs/types/#FieldValue)
-}
field : String -> Field
field =
    FName


{-| Specify a force that pulls all nodes towards a shared centre point in a force
simulation. The two parameters specify the x and y coordinates of the centre point.
For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/#center)
-}
foCenter : Num -> Num -> Force
foCenter x y =
    FCenter [ FpCx x, FpCy y ]


{-| Specify a collision detection force that pushes apart nodes whose circular
radii overlap in a force simulation. The first parameter specifies the radius of
the node to which it applies. The second parameter enables the strength and number
of iterations to be specified. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/#collide)
-}
foCollide : Num -> List ForceProperty -> Force
foCollide r fps =
    FCollide (FpRadius r :: fps)


{-| Indicate a date format for parsing data. For details of how to specify a date, see
[D3's formatting specifiers](https://github.com/d3/d3-time-format#locale_format). An empty
string will indicate default date formatting should be applied, but note that care should be
taken as different browsers may have different default date parsing. Being explicit about the
date format is usually safer.
-}
foDate : String -> DataType
foDate =
    FoDate


{-| Specify the link constraints that cause nodes to be pushed apart towards a target
separation distance. The first parameter is the name of the data set containing the
link objects, each of which should contain `source` and `target` fields indicating
node objects. The second parameter enables the id, distance, strength and number
of iterations to be specified. If an id field parameter is provided, it is used
to relate link objects and node objects. Otherwise, the source and target fields
should provide indices into the array of node objects. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/#link)
-}
foLink : Str -> List ForceProperty -> Force
foLink links fps =
    FLink (FpLinks links :: fps)


{-| Specify an n-body force that causes nodes to either attract or repel each other
in a force simulation. The parameter enables the strength, theta value, and min/max
distances over which the force acts to be specified. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/#nbody)
-}
foNBody : List ForceProperty -> Force
foNBody =
    FNBody


{-| Specifies the type of format a data source uses. `ParseAuto` can be used for
performing automatic type inference on data types. If more explicit control is needed
then `parse` can be used to specify the type for named fields. For details see the
[Vega data format documentation](https://vega.github.io/vega/docs/data/#format).
-}
type FormatProperty
    = JSON
    | JSONProperty String
    | CSV
    | TSV
    | DSV String
    | TopojsonFeature String
    | TopojsonMesh String
    | Parse (List ( String, DataType ))
    | ParseAuto


{-| Indicate a utc date format for parsing data. For details of how to specify a date, see
[D3's formatting specifiers](https://github.com/d3/d3-time-format#locale_format). An empty
string will indicate default date formatting should be applied, but note that care should be
taken as different browsers may have different default date parsing. Being explicit about the
date format is usually safer.
-}
foUtc : String -> DataType
foUtc =
    FoUtc


{-| Specify a force attraction towards a particular x-coordinate (first parameter),
with a given strength (second parameter) on a per-node basis. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/#x)
-}
foX : Field -> List ForceProperty -> Force
foX x fps =
    FX x fps


{-| Specify a force attraction towards a particular y-coordinate (first parameter),
with a given strength (second parameter) on a per-node basis. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/#y)
-}
foY : Field -> List ForceProperty -> Force
foY y fps =
    FY y fps


{-| Reference a field of the enclosing group mark’s data object as a field.
For details see the
[Vega data type documentation](https://vega.github.io/vega/docs/types/#FieldValue)
-}
fParent : Field -> Field
fParent =
    FParent


{-| Specify the distance in pixels by which the link constraint should separate
nodes (default 30). For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/#link)
-}
fpDistance : Num -> ForceProperty
fpDistance =
    FpDistance


{-| Specify the maximum distance over which an n-body force acts. If two nodes
exceed this value, they will not exert forces on each other. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/#nbody)
-}
fpDistanceMax : Num -> ForceProperty
fpDistanceMax =
    FpDistanceMax


{-| Specify the minimum distance over which an n-body force acts. If two nodes
are closer than this value, the exerted forces will be as if they are distanceMin
apart (default 1). For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/#nbody)
-}
fpDistanceMin : Num -> ForceProperty
fpDistanceMin =
    FpDistanceMin


{-| Specify an optional data field for a node’s unique identifier. If provided,
the source and target fields of each link should use these values to indicate
nodes. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/#link)
-}
fpId : Field -> ForceProperty
fpId =
    FpId


{-| Specify the number of iterations to run collision detection or link constraints
(default 1) in a force directed simulation. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/#collide)
-}
fpIterations : Num -> ForceProperty
fpIterations =
    FpIterations


{-| Specify the relative strength of a force or link constraint in a force
simulation. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/#collide)
-}
fpStrength : Num -> ForceProperty
fpStrength =
    FpStrength


{-| Specify the approximation parameter for aggregating more distance forces in
a force-directed simulation (default 0.9). For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/#nbody)
-}
fpTheta : Num -> ForceProperty
fpTheta =
    FpTheta


{-| Specify the energy level or “temperature” of a simulation under a force transform.
Alpha values lie in the range [0, 1]. Internally, the simulation will decrease the
alpha value over time, causing the magnitude of updates to diminish. For details
see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/)
-}
fsAlpha : Num -> ForceSimulationProperty
fsAlpha =
    FsAlpha


{-| Specify the minimum amount by which to lower the alpha value on each simulation
iteration under a force transform. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/)
-}
fsAlphaMin : Num -> ForceSimulationProperty
fsAlphaMin =
    FsAlphaMin


{-| Specify the target alpha value to which a simulation converges under a force
transformation. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/)
-}
fsAlphaTarget : Num -> ForceSimulationProperty
fsAlphaTarget =
    FsAlphaTarget


{-| Specify the names of the output fields to which node positions and velocities
are written after a force transformation. The default is ["x", "y", "vx", "vy"]
corresponding to the order of parameter names to be provided. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/)
-}
fsAs : String -> String -> String -> String -> ForceSimulationProperty
fsAs x y vx vy =
    FsAs x y vx vy


{-| Specify the forces to include in a force-directed simulation resulting from
a force transform. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/)
-}
fsForces : List Force -> ForceSimulationProperty
fsForces =
    FsForces


{-| A signal to evaluate which should generate a field name to reference.
For details see the
[Vega data type documentation](https://vega.github.io/vega/docs/types/#FieldValue)
-}
fSignal : String -> Field
fSignal =
    FSignal


{-| Specify the number of iterations in a force transformation when in static
mode (default 300). For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/)
-}
fsIterations : Num -> ForceSimulationProperty
fsIterations =
    FsIterations


{-| Specify whether a simulation in a force transformation should restart when
node object fields are modified. For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/)
-}
fsRestart : Boo -> ForceSimulationProperty
fsRestart =
    FsRestart


{-| Specify whether a simulation in a force transformation should be computed in
batch to produce a static layout (true) or should be animated (false). For details
see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/)
-}
fsStatic : Boo -> ForceSimulationProperty
fsStatic =
    FsStatic


{-| Specify the 'friction' to be applied to a simulation in a force transformation.
This is applied after the application of any forces during an iteration, each node’s
velocity is multiplied by 1 - velocityDecay (default 0.4). For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/)
-}
fsVelocityDecay : Num -> ForceSimulationProperty
fsVelocityDecay =
    FsVelocityDecay


{-| Specify the field containing the GeoJSON objects to be consolidated into a feature
collection by a geoJSON transform. For details see the
[Vega geojson transform documentation](https://vega.github.io/vega/docs/transforms/geojson/).
-}
gjFeature : Field -> GeoJsonProperty
gjFeature =
    GjFeature


{-| Specify the fields containing longitude (first parameter) and latitude (second
parameter) to be consolidated into a feature collection by a geoJSON transform.
For details see the
[Vega geojson transform documentation](https://vega.github.io/vega/docs/transforms/geojson/).
-}
gjFields : Field -> Field -> GeoJsonProperty
gjFields =
    GjFields


{-| Specify the name of the a new signal to capture the output of generated by
a geoJSON transform. For details see the
[Vega geojson transform documentation](https://vega.github.io/vega/docs/transforms/geojson/).
-}
gjSignal : String -> GeoJsonProperty
gjSignal =
    GjSignal


{-| Specify the output field in which to write a generated shape instance following
a geoShape or geoPath transformation. For details see the
[Vega geopath transform documentation](https://vega.github.io/vega/docs/transforms/geopath/)
-}
gpAs : String -> GeoPathProperty
gpAs =
    GeAs


{-| Specify the data field containing GeoJSON data when applying a geoShape or
geoPath transformation. If unspecified, the full input data object will be used.
For details see the
[Vega geopath transform documentation](https://vega.github.io/vega/docs/transforms/geopath/)
-}
gpField : Field -> GeoPathProperty
gpField =
    GeField


{-| Specify the default radius (in pixels) to use when drawing GeoJSON Point and
MultiPoint geometries following a geoShape or geoPath transformation. An expression
value may be used to set the point radius as a function of properties of the input
GeoJSON. For details see the
[Vega geopath transform documentation](https://vega.github.io/vega/docs/transforms/geopath/)
-}
gpPointRadius : Num -> GeoPathProperty
gpPointRadius =
    GePointRadius


{-| Specify a type of layout alignment to apply to grid columns. This can be used in
cases when alignment rules are different for rows and columns. For details, see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/).
-}
grAlignColumn : GridAlign -> GridAlign
grAlignColumn =
    AlignColumn


{-| Specify a type of layout alignment to apply to grid rows. This can be used in
cases when alignment rules are different for rows and columns. For details, see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/).
-}
grAlignRow : GridAlign -> GridAlign
grAlignRow =
    AlignRow


{-| Specify a type of layout alignment to apply to grid rows and columns. `AlignNone`
indicates a flow layout will be used, in which adjacent plots are simply placed
one after the other. `AlignEach` indicates elements will be aligned into a clean
grid structure, but each row or column may be of variable size. `AlignAll` indicates
elements will be aligned and each row or column will be sized identically based
on the maximum observed size. To used different row and column layouts, use `grAlignRow`
and `grAlignColumn`. For details, see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/).
-}
type GridAlign
    = AlignAll
    | AlignEach
    | AlignNone
    | AlignRow GridAlign
    | AlignColumn GridAlign
    | AlignSignal String


{-| Specify a type of layout alignment based on the value of the given signal.
For details of available alignment option names, see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/).
-}
gridAlignSignal : String -> GridAlign
gridAlignSignal =
    AlignSignal


{-| Specify both the major and minor extents of a graticule to be the same values.
Should be a two-element list representing longitude and latitude extents. For details see the
[Vega graticule documentation](https://vega.github.io/vega/docs/transforms/graticule/)
-}
grExtent : Num -> GraticuleProperty
grExtent =
    GrExtent


{-| Specify the major extent of a graticule. Should be a two-element list representing
longitude and latitude extents. For details see the
[Vega graticule documentation](https://vega.github.io/vega/docs/transforms/graticule/)
-}
grExtentMajor : Num -> GraticuleProperty
grExtentMajor =
    GrExtentMajor


{-| Specify the minor extent of a graticule. Should be a two-element list representing
longitude and latitude extents. For details see the
[Vega graticule documentation](https://vega.github.io/vega/docs/transforms/graticule/)
-}
grExtentMinor : Num -> GraticuleProperty
grExtentMinor =
    GrExtentMinor


{-| Specify the field used to bin when generating a graticule. For details see the
[Vega graticule documentation](https://vega.github.io/vega/docs/transforms/graticule/)
-}
grField : Field -> GraticuleProperty
grField =
    GrField


{-| Specify the precision in degrees with which graticule arcs are generated. The
default value is 2.5 degrees. For details see the
[Vega graticule documentation](https://vega.github.io/vega/docs/transforms/graticule/)
-}
grPrecision : Num -> GraticuleProperty
grPrecision =
    GrPrecision


{-| Specify both the major and minor step angles of a graticule to be the same values.
Should be a two-element list representing longitude and latitude spacing. For details see the
[Vega graticule documentation](https://vega.github.io/vega/docs/transforms/graticule/)
-}
grStep : Num -> GraticuleProperty
grStep =
    GrStep


{-| Specify the major step angles of a graticule. Should be a two-element list
representing longitude and latitude spacing. For details see the
[Vega graticule documentation](https://vega.github.io/vega/docs/transforms/graticule/)
-}
grStepMajor : Num -> GraticuleProperty
grStepMajor =
    GrStepMajor


{-| Specify the minor step angles of a graticule. Should be a two-element list
representing longitude and latitude spacing. For details see the
[Vega graticule documentation](https://vega.github.io/vega/docs/transforms/graticule/)
-}
grStepMinor : Num -> GraticuleProperty
grStepMinor =
    GrStepMinor


{-| Indicates the horizontal alignment of some text such as on an axis or legend.
-}
type HAlign
    = AlignCenter
    | AlignLeft
    | AlignRight
    | HAlignSignal String


{-| Indicates the horizontal alignment of some text based on the value of the
given signal.
-}
hAlignSignal : String -> HAlign
hAlignSignal =
    HAlignSignal


{-| Convenience function for indicating a central horizontal alignment.
-}
hCenter : Value
hCenter =
    vStr "center"


{-| Convenience function for indicating a left horizontal alignment.
-}
hLeft : Value
hLeft =
    vStr "left"


{-| Convenience function for indicating a right horizontal alignment.
-}
hRight : Value
hRight =
    vStr "right"


{-| A long-path hue-chroma-luminance color interpolation.
-}
hclLong : CInterpolate
hclLong =
    HclLong


{-| Override the default height of the visualization. If not specified the height
will be calculated based on the content of the visualization.
-}
height : Float -> ( VProperty, Spec )
height w =
    ( VHeight, JE.float w )


{-| A long-path hue-saturation-lightness color interpolation.
-}
hslLong : CInterpolate
hslLong =
    HslLong


{-| A checkbox input element.
-}
iCheckbox : List InputProperty -> Bind
iCheckbox =
    ICheckbox


{-| A color selector input element.
-}
iColor : List InputProperty -> Bind
iColor =
    IColor


{-| A date selector input element.
-}
iDate : List InputProperty -> Bind
iDate =
    IDate


{-| A local data time selector input element.
-}
iDateTimeLocal : List InputProperty -> Bind
iDateTimeLocal =
    IDateTimeLocal


{-| A conditional list of values depending on whether an expression (first parameter)
evaluates as true. The second and third parameters represent the 'then' and 'else'
branches of the test.
-}
ifElse : String -> List Value -> List Value -> Value
ifElse condition thenVals elseVals =
    VIfElse condition thenVals elseVals


{-| A month selector input element.
-}
iMonth : List InputProperty -> Bind
iMonth =
    IMonth


{-| Specify a list of fields by which to group values in an impute transform.
Imputation is then performed on a per-group basis, such as a within group mean
rather than global mean. For details see the
[Vega impute transform documentation](https://vega.github.io/vega/docs/transforms/impute/).
-}
imGroupBy : List Field -> ImputeProperty
imGroupBy =
    ImGroupBy


{-| Specify an additional collection of key values that should be considered for
imputation as part of an impute transform. For details see the
[Vega impute transform documentation](https://vega.github.io/vega/docs/transforms/impute/).
-}
imKeyVals : Value -> ImputeProperty
imKeyVals =
    ImKeyVals


{-| Specify the imputation method to be used as part of an impute transform. If
not specified the default `ByMean` method will be used. For details see the
[Vega impute transform documentation](https://vega.github.io/vega/docs/transforms/impute/).
-}
imMethod : ImputeMethod -> ImputeProperty
imMethod =
    ImMethod


{-| Specify the value to use when an imputation method is set to `ByValue` in an
impute transform. For details see the
[Vega impute transform documentation](https://vega.github.io/vega/docs/transforms/impute/).
-}
imValue : Value -> ImputeProperty
imValue =
    ImValue


{-| Determines if autocomplete should be turned on or off for input elements that
support it. For more details see the
[Vega signal binding documentation](https://vega.github.io/vega/docs/signals/#bind)
-}
inAutocomplete : Bool -> InputProperty
inAutocomplete =
    InAutocomplete


{-| Specify that event handling should be delayed until the specified milliseconds
have elapsed since the last event was fired. This helps to limit event broadcasting.
For more details see the
[Vega signal binding documentation](https://vega.github.io/vega/docs/signals/#bind)
-}
inDebounce : Float -> InputProperty
inDebounce =
    InDebounce


{-| A CSS selector string indicating the parent element to which the input element
should be added. This allows the option of the input element to be outside the
visualization container, which could be used for linking separate visualizations.
For more details see the
[Vega signal binding documentation](https://vega.github.io/vega/docs/signals/#bind)
-}
inElement : String -> InputProperty
inElement =
    InElement


{-| The maximum value for a range slider input element. For more details see the
[Vega signal binding documentation](https://vega.github.io/vega/docs/signals/#bind)
-}
inMax : Float -> InputProperty
inMax =
    InMax


{-| The minimum value for a range slider input element. For more details see the
[Vega signal binding documentation](https://vega.github.io/vega/docs/signals/#bind)
-}
inMin : Float -> InputProperty
inMin =
    InMin


{-| A collection of options to be selected from by Radio or Select input elements.
For more details see the
[Vega signal binding documentation](https://vega.github.io/vega/docs/signals/#bind)
-}
inOptions : Value -> InputProperty
inOptions =
    InOptions


{-| The place-holding text for input elements before any value has been entered
(for example initial text in a text field). For more details see the
[Vega signal binding documentation](https://vega.github.io/vega/docs/signals/#bind)
-}
inPlaceholder : String -> InputProperty
inPlaceholder =
    InPlaceholder


{-| The step value (increment between adjacent selectable values) for a range
slider input element. For more details see the
[Vega signal binding documentation](https://vega.github.io/vega/docs/signals/#bind)
-}
inStep : Float -> InputProperty
inStep =
    InStep


{-| A numeric input element.
-}
iNumber : List InputProperty -> Bind
iNumber =
    INumber


{-| A radio buttons input element.
-}
iRadio : List InputProperty -> Bind
iRadio =
    IRadio


{-| A slider input element.
-}
iRange : List InputProperty -> Bind
iRange =
    IRange


{-| A drop-down list input element.
-}
iSelect : List InputProperty -> Bind
iSelect =
    ISelect


{-| A telephone number input element.
-}
iTel : List InputProperty -> Bind
iTel =
    ITel


{-| A free text input element.
-}
iText : List InputProperty -> Bind
iText =
    IText


{-| A time selector input element.
-}
iTime : List InputProperty -> Bind
iTime =
    ITime


{-| A week selector input element.
-}
iWeek : List InputProperty -> Bind
iWeek =
    IWeek


{-| Specify a join aggregate transform.
For details see the
[Vega join aggregation transform documentation](https://vega.github.io/vega/docs/transforms/joinaggregate/).
-}
jaAs : List String -> JoinAggregateProperty
jaAs =
    JAAs


{-| Specify a join aggregate transform.
For details see the
[Vega join aggregation transform documentation](https://vega.github.io/vega/docs/transforms/joinaggregate/).
-}
jaFields : List Field -> JoinAggregateProperty
jaFields =
    JAFields


{-| Specify a join aggregate transform.
For details see the
[Vega join aggregation transform documentation](https://vega.github.io/vega/docs/transforms/joinaggregate/).
-}
jaGroupBy : List Field -> JoinAggregateProperty
jaGroupBy =
    JAGroupBy


{-| Specify a join aggregate transform.
For details see the
[Vega join aggregation transform documentation](https://vega.github.io/vega/docs/transforms/joinaggregate/).
-}
jaOps : List Operation -> JoinAggregateProperty
jaOps =
    JAOps


{-| Indicates a JSON file format from which a given property is to be extracted
when it it has some surrounding structure or meta-data. For example, specifying
the property `values.features` is equivalent to retrieving `json.values.features`
from the loaded JSON object with a custom delimiter. For details, see the
[Vega data formatting documentation](https://vega.github.io/vega/docs/data/#format).
-}
jsonProperty : String -> FormatProperty
jsonProperty =
    JSONProperty


{-| Represents a custom key-value pair to be stored in an object.
-}
keyValue : String -> Value -> Value
keyValue =
    VKeyValue


{-| Create a layout used in the visualization. For example the following creates
a three-column layout with 20 pixel padding between columns:

    lo =
        layout [ loColumns (num 3), loPadding (num 20) ]

-}
layout : List LayoutProperty -> ( VProperty, Spec )
layout lps =
    ( VLayout, JE.object (List.map layoutProperty lps) )


{-| Specify the height in pixels to clip a symbol legend entries and limit its size.
By default no clipping is performed. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leClipHeight : Num -> LegendProperty
leClipHeight =
    LeClipHeight


{-| Specify the horizontal padding between entries in a symbol legend. For more
details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leColumnPadding : Num -> LegendProperty
leColumnPadding =
    LeColumnPadding


{-| Specify the number of columns in which to arrange symbol legend entries. A
value of 0 or lower indicates a single row with one column per entry. The default
is 0 for horizontal symbol legends and 1 for vertical symbol legends. For more
details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leColumns : Num -> LegendProperty
leColumns =
    LeColumns


{-| Specify the corner radius for an enclosing legend rectangle. For more details
see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leCornerRadius : Num -> LegendProperty
leCornerRadius =
    LeCornerRadius


{-| Specify the direction of a legend. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leDirection : Orientation -> LegendProperty
leDirection =
    LeDirection


{-| Mark encodings for custom legend styling. For example, to create a horizontal
dash symbol (using a simple SVG path) for each legend item:

    legend
        [ leEncode [ enSymbols [ enEnter [ maShape [ vStr "M-0.5,0H1" ] ] ] ]
        , leStroke "myColourScale"
        ]

For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)

-}
leEncode : List LegendEncoding -> LegendProperty
leEncode =
    LeEncode


{-| The name of the scale that maps to the legend symbols' fill colors. For more
details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leFill : String -> LegendProperty
leFill =
    LeFill


{-| Specify the background color of an enclosing legend rectangle. For more
details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leFillColor : Str -> LegendProperty
leFillColor =
    LeFillColor


{-| The format specifier pattern for legend labels. For numerical values this should
be a [d3-format specifier](https://github.com/d3/d3-format#locale_format). For
date-time values this should be a
[d3-time-format specifier](https://github.com/d3/d3-time-format#locale_format).
For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leFormat : Str -> LegendProperty
leFormat =
    LeFormat


{-| Create a single legend used to visualize a color, size or shape mapping.

    legends
        << legend
            [ leTitle (str "Percentage of Obese Adults")
            , leOrient BottomRight
            , leType LSymbol
            , leSize "mySizeScale"
            , leFill "myColorScale"
            ]

-}
legend : List LegendProperty -> List Spec -> List Spec
legend lps =
    (::) (JE.object (List.map legendProperty lps))


{-| Create legends used to visualize color, size and shape mappings. Commonly the
functional composition operator (`<<`) is used to combine multiple legend
specifications. For example,

    lg =
        legends
            << legend
                [ leTitle (str "Income")
                , leOrient BottomRight
                , leType LSymbol
                , leSize "mySizeScale"
                ]
            << legend
                [ leTitle (str "Nationality")
                , leOrient TopRight
                , leType LSymbol
                , leFill "myColorScale"
                ]

-}
legends : List Spec -> ( VProperty, Spec )
legends lgs =
    ( VLegends, JE.list lgs )


{-| Indicates the position of a legend relative to the visualization it describes.
For details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/#orientation)
-}
type LegendOrientation
    = Left
    | TopLeft
    | Top
    | TopRight
    | Right
    | BottomRight
    | Bottom
    | BottomLeft
    | None
    | LegendOrientationSignal String


{-| Specify a signal that indicates the position of a legend relative to the
visualization it describes of options for the signal see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/#orientation)
-}
legendOrientationSignal : String -> LegendOrientation
legendOrientationSignal =
    LegendOrientationSignal


{-| Type of legend. `LSymbol` representing legends with discrete items and `LGradient`
for those representing continuous data.
-}
type LegendType
    = LSymbol
    | LGradient
    | LegendTypeSignal String


{-| Specify a type of legend is to be determined by the given signal. Valid values
generated by the signal are `symbol` and `gradient`.
-}
legendTypeSignal : String -> LegendType
legendTypeSignal =
    LegendTypeSignal


{-| Specify the opacity of a color gradient in a legend. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leGradientOpacity : Num -> LegendProperty
leGradientOpacity =
    LeGradientOpacity


{-| Specify the maximum allowed length of gradient labels in a legend. For more
details see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leGradientLabelLimit : Num -> LegendProperty
leGradientLabelLimit =
    LeGradientLabelLimit


{-| Specify the vertical offset in pixels for gradient labels in a legend. For more
details see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leGradientLabelOffset : Num -> LegendProperty
leGradientLabelOffset =
    LeGradientLabelOffset


{-| Specify the color of a legend's color gradient border. For more
details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leGradientStrokeColor : Str -> LegendProperty
leGradientStrokeColor =
    LeGradientStrokeColor


{-| Specify the width of a legend's color gradient border. For more
details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leGradientStrokeWidth : Num -> LegendProperty
leGradientStrokeWidth =
    LeGradientStrokeWidth


{-| Specify the thickness in pixels of the color gradient in a legend. This value
corresponds to the width of a vertical gradient or the height of a horizontal
gradient. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leGradientThickness : Num -> LegendProperty
leGradientThickness =
    LeGradientThickness


{-| Specify the length in pixels of the primary axis of a color gradient in a
legend. This value corresponds to the height of a vertical gradient or the width
of a horizontal gradient. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leGradientLength : Num -> LegendProperty
leGradientLength =
    LeGradientLength


{-| Specify the alignment to apply to symbol legends rows and columns. For more
details see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leGridAlign : GridAlign -> LegendProperty
leGridAlign =
    LeGridAlign


{-| Specify the horizontal text alignment for a legend label. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leLabelAlign : HAlign -> LegendProperty
leLabelAlign =
    LeLabelAlign


{-| Specify the vertical text alignment for a legend label. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leLabelBaseline : VAlign -> LegendProperty
leLabelBaseline =
    LeLabelBaseline


{-| Specify the text color for legend labels. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leLabelColor : Str -> LegendProperty
leLabelColor =
    LeLabelColor


{-| Specify the text font for legend labels. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leLabelFont : Str -> LegendProperty
leLabelFont =
    LeLabelFont


{-| Specify the font size in pixels for legend labels. For more details see
the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leLabelFontSize : Num -> LegendProperty
leLabelFontSize =
    LeLabelFontSize


{-| Specify the font weight for legend labels. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leLabelFontWeight : Value -> LegendProperty
leLabelFontWeight =
    LeLabelFontWeight


{-| Specify the maximum allowed length in pixels of a legend label. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leLabelLimit : Num -> LegendProperty
leLabelLimit =
    LeLabelLimit


{-| Specify the opacity for a legend's labels. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leLabelOpacity : Num -> LegendProperty
leLabelOpacity =
    LeLabelOpacity


{-| Specify the horizontal pixel offset for a legend's symbols. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leLabelOffset : Num -> LegendProperty
leLabelOffset =
    LeLabelOffset


{-| Specify the strategy to use for resolving overlap of labels in gradient
legends. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leLabelOverlap : OverlapStrategy -> LegendProperty
leLabelOverlap =
    LeLabelOverlap


{-| The offset in pixels by which to displace the legend from the data rectangle
and axes. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leOffset : Value -> LegendProperty
leOffset =
    LeOffset


{-| The name of the scale that maps to the legend symbols' opacities. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leOpacity : String -> LegendProperty
leOpacity =
    LeOpacity


{-| The orientation of the legend, determining where the legend is placed
relative to a chart’s data rectangle. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leOrient : LegendOrientation -> LegendProperty
leOrient =
    LeOrient


{-| The padding between the border and content of the legend group. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
lePadding : Value -> LegendProperty
lePadding =
    LePadding


{-| The vertical padding between entries in a symbol legend. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leRowPadding : Num -> LegendProperty
leRowPadding =
    LeRowPadding


{-| The name of the scale that maps to the legend symbols' shapes. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leShape : String -> LegendProperty
leShape =
    LeShape


{-| The name of the scale that maps to the legend symbols' sizes. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leSize : String -> LegendProperty
leSize =
    LeSize


{-| The name of the scale that maps to the legend symbols' strokes. For more
details see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leStroke : String -> LegendProperty
leStroke =
    LeStroke


{-| Specify the border color of an enclosing legend rectangle. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leStrokeColor : Str -> LegendProperty
leStrokeColor =
    LeStrokeColor


{-| Specify the stroke width of the color of a legend's gradient border. For more
details see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leStrokeWidth : Num -> LegendProperty
leStrokeWidth =
    LeStrokeWidth


{-| Specify the default fill color for legend symbols. This is only applied if there
is no fill scale color encoding for the legend. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leSymbolBaseFillColor : Str -> LegendProperty
leSymbolBaseFillColor =
    LeSymbolBaseFillColor


{-| Specify the default stroke color for legend symbols. This is only applied if
there is no stroke scale color encoding for the legend. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leSymbolBaseStrokeColor : Str -> LegendProperty
leSymbolBaseStrokeColor =
    LeSymbolBaseStrokeColor


{-| Specify the default direction for legend symbols. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leSymbolDirection : Orientation -> LegendProperty
leSymbolDirection =
    LeSymbolDirection


{-| Specify the fill color for legend symbols. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leSymbolFillColor : Str -> LegendProperty
leSymbolFillColor =
    LeSymbolFillColor


{-| Specify the offset in pixels between legend labels their corresponding symbol
or gradient. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leSymbolOffset : Num -> LegendProperty
leSymbolOffset =
    LeSymbolOffset


{-| Specify the opacity for a legend's symbols. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leSymbolOpacity : Num -> LegendProperty
leSymbolOpacity =
    LeSymbolOpacity


{-| Specify the default symbol area size in square pixel units. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leSymbolSize : Num -> LegendProperty
leSymbolSize =
    LeSymbolSize


{-| Specify the border color for legend symbols. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leSymbolStrokeColor : Str -> LegendProperty
leSymbolStrokeColor =
    LeSymbolStrokeColor


{-| Specify the default symbol border width used in a legend. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leSymbolStrokeWidth : Num -> LegendProperty
leSymbolStrokeWidth =
    LeSymbolStrokeWidth


{-| Specify the default symbol shape used in a legend. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leSymbolType : Symbol -> LegendProperty
leSymbolType =
    LeSymbolType


{-| The name of the scale that maps to the legend symbols' stroke dashing. For more
details see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leStrokeDash : String -> LegendProperty
leStrokeDash =
    LeStrokeDash


{-| Specify a desired number of ticks for a temporal legend. The first parameter
is the type of temporal interval to use and the second the number of steps of that
interval between ticks. For example to specify a tick is requested at six-month
intervals (e.g. January, July):

    lg =
        legends
            << legend
                [ leFill "cScale"
                , leType LGradient
                , leFormat (str "%b %Y")
                , leTemporalTickCount Month (num 6)
                ]

If the second parameter is not a positive value, the number of ticks will be
auto-generated for the given interval type. For details see the
[Vega axis documentation](https://vega.github.io/vega/docs/axes/).

-}
leTemporalTickCount : TimeUnit -> Num -> LegendProperty
leTemporalTickCount =
    LeTemporalTickCount


{-| The desired number of tick values for quantitative legends. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leTickCount : Num -> LegendProperty
leTickCount =
    LeTickCount


{-| Specify the title for the legend (none by default). For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leTitle : Str -> LegendProperty
leTitle =
    LeTitle


{-| Specify the horizontal alignment for a legend title. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leTitleAlign : HAlign -> LegendProperty
leTitleAlign =
    LeTitleAlign


{-| Specify the vertical alignment for a legend title. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leTitleBaseline : VAlign -> LegendProperty
leTitleBaseline =
    LeTitleBaseline


{-| Specify the text color for a legend title. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leTitleColor : Str -> LegendProperty
leTitleColor =
    LeTitleColor


{-| Specify the text font for a legend title. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leTitleFont : Str -> LegendProperty
leTitleFont =
    LeTitleFont


{-| Specify the font size in pixel units for a legend title. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leTitleFontSize : Num -> LegendProperty
leTitleFontSize =
    LeTitleFontSize


{-| Specify the font weight for a legend title. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leTitleFontWeight : Value -> LegendProperty
leTitleFontWeight =
    LeTitleFontWeight


{-| Specify the maximum allowed length in pixels of a legend title. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leTitleLimit : Num -> LegendProperty
leTitleLimit =
    LeTitleLimit


{-| Specify the opacity for a legend's title. For more details
see the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leTitleOpacity : Num -> LegendProperty
leTitleOpacity =
    LeTitleOpacity


{-| Specify the padding between the legend title and entries. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leTitlePadding : Value -> LegendProperty
leTitlePadding =
    LeTitlePadding


{-| The type of legend to specify. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leType : LegendType -> LegendProperty
leType =
    LeType


{-| Explicitly set visible legend values. For more details see the
[Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leValues : List Value -> LegendProperty
leValues =
    LeValues


{-| The integer z-index indicating the layering of the legend group relative to
other axis, mark and legend groups. The default value is 0.For more details see
the [Vega legend documentation](https://vega.github.io/vega/docs/legends/)
-}
leZIndex : Num -> LegendProperty
leZIndex =
    LeZIndex


{-| Shape of a line indicating path between nodes. For details see the `shape` parameter
in the [Vega link path documentation](https://vega.github.io/vega/docs/transforms/linkpath/)
-}
type LinkShape
    = LinkLine
    | LinkArc
    | LinkCurve
    | LinkDiagonal
    | LinkOrthogonal
    | LinkShapeSignal String


{-| Specify the shape of a line indicating path between nodes using the given signal.
For shape options see the `shape` parameter in the
[Vega link path documentation](https://vega.github.io/vega/docs/transforms/linkpath/)
-}
linkShapeSignal : String -> LinkShape
linkShapeSignal =
    LinkShapeSignal


{-| Specify the alignment to apply to grid rows and columns in a grid layout.
For details see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/)
-}
loAlign : GridAlign -> LayoutProperty
loAlign =
    LAlign


{-| Specify the bounds calculation method to use for determining the extent of a
sub-plot in a grid layout. For details see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/)
-}
loBounds : BoundsCalculation -> LayoutProperty
loBounds =
    LBounds


{-| Specify the number of columns to include in a grid layout. If unspecified, a
single row with unlimited columns will be assumed. For details see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/)
-}
loColumns : Num -> LayoutProperty
loColumns =
    LColumns


{-| Specify the band positioning in the interval [0,1] indicating where in a cell
a footer should be placed in a grid layout. For a column footer, 0 maps to the left
edge of the footer cell and 1 to right edge. For a row footer, the range maps from
top to bottom. For details see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/)
-}
loFooterBand : Num -> LayoutProperty
loFooterBand =
    LFooterBand


{-| Specify the band positioning in the interval [0,1] indicating where in a cell
a footer should be placed in a grid layout. For a column footer, 0 maps to the left
edge of the footer cell and 1 to right edge. For a row footer, the range maps from
top to bottom. This version allows row and column settings to be specified separately.
For details see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/)
-}
loFooterBandRC : Num -> Num -> LayoutProperty
loFooterBandRC r c =
    LFooterBandRC r c


{-| Specify the band positioning in the interval [0,1] indicating where in a cell
a header should be placed in a grid layout. For a column header, 0 maps to the left
edge of the header cell and 1 to right edge. For a row footer, the range maps from
top to bottom. For details see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/)
-}
loHeaderBand : Num -> LayoutProperty
loHeaderBand =
    LHeaderBand


{-| Specify the band positioning in the interval [0,1] indicating where in a cell
a header should be placed in a grid layout. For a column header, 0 maps to the left
edge of the footer cell and 1 to right edge. For a row header, the range maps from
top to bottom. This version allows row and column settings to be specified separately.
For details see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/)
-}
loHeaderBandRC : Num -> Num -> LayoutProperty
loHeaderBandRC r c =
    LHeaderBandRC r c


{-| Specify the orthogonal offset in pixels by which to displace grid header, footer
and title cells from their position along the edge of a grid layout.
For details see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/)
-}
loOffset : Num -> LayoutProperty
loOffset =
    LOffset


{-| Specify the orthogonal offset in pixels by which to displace grid header, footer
and title cells from their position along the edge of a grid layout. This version
allows row and column settings to be specified separately. For details see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/)
-}
loOffsetRC : Num -> Num -> LayoutProperty
loOffsetRC r c =
    LOffsetRC r c


{-| Specify the padding in pixels to add between elements within rows and columns
of a grid layout. For details see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/)
-}
loPadding : Num -> LayoutProperty
loPadding =
    LPadding


{-| Specify the padding in pixels to add between elements within rows and columns
of a grid layout. This version allows row and column settings to be specified
separately. For details see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/)
-}
loPaddingRC : Num -> Num -> LayoutProperty
loPaddingRC r c =
    LPaddingRC r c


{-| Specify where in a cell of a grid layout, a title should be placed. For a
column title, 0 maps to the left edge of the title cell and 1 to right edge. The
default value is 0.5, indicating a centred position. For details see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/)
-}
loTitleBand : Num -> LayoutProperty
loTitleBand =
    LTitleBand


{-| Specify where in a cell of a grid layout, a title should be placed. For a
column title, 0 maps to the left edge of the title cell and 1 to right edge. The
default value is 0.5, indicating a centred position. This version allows row
and column settings to be specified separately. For details see the
[Vega layout documentation](https://vega.github.io/vega/docs/layout/)
-}
loTitleBandRC : Num -> Num -> LayoutProperty
loTitleBandRC r c =
    LTitleBandRC r c


{-| Specify the name for the output field of a link path in a linkPath transformation.
If not specified, the default is "path". For details, see the
[Vega linkpath transform documentation](https://vega.github.io/vega/docs/transforms/linkpath/)
-}
lpAs : String -> LinkPathProperty
lpAs =
    LPAs


{-| Specify the orientation of a link path in a linkPath transformation. If a radial
orientation is specified, x and y coordinate parameters will be interpreted as an
angle (in radians) and radius, respectively. For details, see the
[Vega linkpath transform documentation](https://vega.github.io/vega/docs/transforms/linkpath/)
-}
lpOrient : Orientation -> LinkPathProperty
lpOrient =
    LPOrient


{-| Specify the shape of a link path in a linkPath transformation. For details, see the
[Vega linkpath transform documentation](https://vega.github.io/vega/docs/transforms/linkpath/)
-}
lpShape : LinkShape -> LinkPathProperty
lpShape =
    LPShape


{-| Specify the data field for the source x-coordinate in a linkPath transformation.
The default is `source.x`. For details, see the
[Vega linkpath transform documentation](https://vega.github.io/vega/docs/transforms/linkpath/)
-}
lpSourceX : Field -> LinkPathProperty
lpSourceX =
    LPSourceX


{-| Specify the data field for the source y-coordinate in a linkPath transformation.
The default is `source.y`. For details, see the
[Vega linkpath transform documentation](https://vega.github.io/vega/docs/transforms/linkpath/)
-}
lpSourceY : Field -> LinkPathProperty
lpSourceY =
    LPSourceY


{-| Specify the data field for the target x-coordinate in a linkPath transformation.
The default is `target.x`. For details, see the
[Vega linkpath transform documentation](https://vega.github.io/vega/docs/transforms/linkpath/)
-}
lpTargetX : Field -> LinkPathProperty
lpTargetX =
    LPTargetX


{-| Specify the data field for the target y-coordinate in a linkPath transformation.
The default is `target.y`. For details, see the
[Vega linkpath transform documentation](https://vega.github.io/vega/docs/transforms/linkpath/)
-}
lpTargetY : Field -> LinkPathProperty
lpTargetY =
    LPTargetY


{-| Specify the output fields in which to write data found in the secondary
stream of a lookup. For details see the
[Vega lookup transform documentation](https://vega.github.io/vega/docs/transforms/lookup/)
-}
luAs : List String -> LookupProperty
luAs =
    LAs


{-| Specify the default value to assign if lookup fails in a lookup transformation.
For details see the
[Vega lookup transform documentation](https://vega.github.io/vega/docs/transforms/lookup/)
-}
luDefault : Value -> LookupProperty
luDefault =
    LDefault


{-| Specify the data fields to copy from the secondary stream to the primary
stream in a lookup transformation. If not specified, a reference to the full data
record is copied.. For details see the
[Vega lookup transform documentation](https://vega.github.io/vega/docs/transforms/lookup/)
-}
luValues : List Field -> LookupProperty
luValues =
    LValues


{-| The horizontal alignment of a text or image mark. This may be specified directly,
via a field, a signal or any other text-generating value. To guarantee valid
alignment type names, use `hCenter`, `hLeft` etc. For example:

    << mark Text
        [ mEncode
            [ enEnter [ maAlign [ hCenter ] ] ]
        ]

For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).

-}
maAlign : List Value -> MarkProperty
maAlign =
    MAlign


{-| The rotation angle of the text in degrees in a text mark. This may be specified
directly, via a field, a signal or any other number-generating value. For further
details see the [Vega text mark documentation](https://vega.github.io/vega/docs/marks/text/).
-}
maAngle : List Value -> MarkProperty
maAngle =
    MAngle


{-| Indicates whether the image aspect ratio should be preserved in an image mark.
This may be specified directly, via a field, a signal or any other Boolean-generating
value. For further details see the
[Vega image mark documentation](https://vega.github.io/vega/docs/marks/image/).
-}
maAspect : List Value -> MarkProperty
maAspect =
    MAspect


{-| The vertical baseline of a text or image mark. This may be specified directly,
via a field, a signal or any other text-generating value. To guarantee valid
alignment type names, use `vTop`, `vMiddle` etc. For example:

    << mark Text
        [ mEncode
            [ enEnter [ maBaseline [ vTop ] ] ]
        ]

For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).

-}
maBaseline : List Value -> MarkProperty
maBaseline =
    MBaseline


{-| The corner radius in pixels of an arc or rect mark. This may be specified directly,
via a field, a signal or any other number-generating value. For further details
see the [Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maCornerRadius : List Value -> MarkProperty
maCornerRadius =
    MCornerRadius


{-| The cursor to be displayed over a mark. This may be specified directly, via a
field, a signal or any other text-generating value. To guarantee valid cursor type
names, use `cursorValue`. For example:

    marks
        << mark Symbol
            [ mFrom [ srData (str "myData") ]
            , mEncode [ enUpdate [ maCursor [ cursorValue CPointer ] ] ]
            ]

For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).

-}
maCursor : List Value -> MarkProperty
maCursor =
    MCursor


{-| Create a custom mark property. For example:

    mEncode
        [ enEnter
            [ maFill [ vScale "cScale", vField (field "group") ]
            , maCustom "myName" [ vScale "xScale", vField (field "group") ]
            ]
        ]

For further details see the
[Vega Beeswarm plot example](https://vega.github.io/vega/examples/beeswarm-plot/).

-}
maCustom : String -> List Value -> MarkProperty
maCustom =
    MCustom


{-| Indicates if the current data point in a linear mark is defined. If false, the
corresponding line/trail segment will be omitted, creating a “break”. This may be
specified directly, via a field, a signal or any other Boolean-generating value.
For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maDefined : List Value -> MarkProperty
maDefined =
    MDefined


{-| The direction text is rendered in a text mark. This determines which side is
truncated in response to the text size exceeding the value of the limit parameter.
This may be specified directly, via a field, a signal or any other string-generating
value. To guarantee valid direction type names, use `textDirectionValue`. For example:

    << mark Text
        [ mFrom [ srData (str "table") ]
        , mEncode
            [ enEnter
                [ maText [ vField (field "date") ]
                , maDir [ textDirectionValue RightToLeft ]
                ]
        ]

For further details see the
[Vega text mark documentation](https://vega.github.io/vega/docs/marks/text/).

-}
maDir : List Value -> MarkProperty
maDir =
    MDir


{-| The horizontal offset in pixels (before rotation), between the text and anchor
point of a text mark. This may be specified directly, via a field, a signal or any
other number-generating value. For further details see the
[Vega text mark documentation](https://vega.github.io/vega/docs/marks/text/).
-}
maDx : List Value -> MarkProperty
maDx =
    MdX


{-| The vertical offset in pixels (before rotation), between the text and anchor
point of a text mark. This may be specified directly, via a field, a signal or any
other number-generating value. For further details see the
[Vega text mark documentation](https://vega.github.io/vega/docs/marks/text/).
-}
maDy : List Value -> MarkProperty
maDy =
    MdY


{-| The ellipsis string for text truncated in response to the limit parameter of
a text mark. This may be specified directly, via a field, a signal or any other
string-generating value. For further details see the
[Vega text mark documentation](https://vega.github.io/vega/docs/marks/text/).
-}
maEllipsis : List Value -> MarkProperty
maEllipsis =
    MEllipsis


{-| The end angle in radians clockwise from north for an arc mark. This may be
specified directly, via a field, a signal or any other number-generating value.
For further details see the
[Vega arc documentation](https://vega.github.io/vega/docs/marks/arc/).
-}
maEndAngle : List Value -> MarkProperty
maEndAngle =
    MEndAngle


{-| The fill color of a mark. This may be specified directly, via a field,
a signal or any other color-generating value. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maFill : List Value -> MarkProperty
maFill =
    MFill


{-| The fill opacity of a mark in the range [0 1]. This may be specified directly,
via a field, a signal or any other number-generating value. For further details
see the [Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maFillOpacity : List Value -> MarkProperty
maFillOpacity =
    MFillOpacity


{-| The typeface used by a text mark. This can be a generic font description such
as `sans-serif`, `monospace` or any specific font name made accessible via a css
font definition. This may be specified directly, via a field, a signal or any other
string-generating value. For further details see the
[Vega text mark documentation](https://vega.github.io/vega/docs/marks/text/).
-}
maFont : List Value -> MarkProperty
maFont =
    MFont


{-| The font size in pixels used by a text mark. This may be specified directly,
via a field, a signal or any other number-generating value. For further details
see the [Vega text mark documentation](https://vega.github.io/vega/docs/marks/text/).
-}
maFontSize : List Value -> MarkProperty
maFontSize =
    MFontSize


{-| The font style, such as `normal` or `italic` used by a text mark. This may be
specified directly, via a field, a signal or any other string-generating value.
For further details see the
[Vega text mark documentation](https://vega.github.io/vega/docs/marks/text/).
-}
maFontStyle : List Value -> MarkProperty
maFontStyle =
    MFontStyle


{-| The font weight, such as `normal` or `bold` used by a text mark. This may be
specified directly, via a field, a signal or any other string- or number-generating
value. For further details see the
[Vega text mark documentation](https://vega.github.io/vega/docs/marks/text/).
-}
maFontWeight : List Value -> MarkProperty
maFontWeight =
    MFontWeight


{-| Indicates if the visible group content should be clipped to the group’s
specified width and height. This may be specified directly, via a field, a signal
or any other Boolean-generating value. For further details see the
[Vega group mark documentation](https://vega.github.io/vega/docs/marks/group/).
-}
maGroupClip : List Value -> MarkProperty
maGroupClip =
    MGroupClip


{-| The width of a mark in pixels. This may be specified directly, via a field,
a signal or any other number-generating value. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maHeight : List Value -> MarkProperty
maHeight =
    MHeight


{-| A URL to load upon mouse click. If defined, the mark acts as a hyperlink. This
may be specified directly, via a field, a signal or any other text-generating value.
For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maHRef : List Value -> MarkProperty
maHRef =
    MHRef


{-| The inner radius in pixel units of an arc mark. This may be
specified directly, via a field, a signal or any other number-generating value.
For further details see the
[Vega arc documentation](https://vega.github.io/vega/docs/marks/arc/).
-}
maInnerRadius : List Value -> MarkProperty
maInnerRadius =
    MInnerRadius


{-| The interpolation style of a linear mark. This may be specified directly,
via a field, a signal or any other text-generating value. To guarantee valid
interpolation type names, use [markInterpolationValue](#markInterpolationValue).
For example:

    mark Area
        [ mFrom [ srData (str "myData") ]
        , mEncode
            [ enEnter
                [ maInterpolate [ markInterpolationValue CatmullRom ] ]
            ]
        ]

For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).

-}
maInterpolate : List Value -> MarkProperty
maInterpolate =
    MInterpolate


{-| The maximum length of a text mark in pixels (default 0, indicating no limit).
The text value will be automatically truncated if the rendered size exceeds this
limit. It may be specified directly, via a field, a signal or any other
number-generating value. For further details see the
[Vega text mark documentation](https://vega.github.io/vega/docs/marks/text/).
-}
maLimit : List Value -> MarkProperty
maLimit =
    MLimit


{-| The opacity of a mark in the range [0 1]. This may be specified directly,
via a field, a signal or any other number-generating value. For further details
see the [Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maOpacity : List Value -> MarkProperty
maOpacity =
    MOpacity


{-| The orientation of an area mark. With a vertical orientation, an area mark is
defined by the x, y, and (y2 or height) properties; with a horizontal orientation,
the y, x and (x2 or width) properties must be specified instead. The orientation
may be specified directly, via a field, a signal or any other text-generating value.
To guarantee valid orientation type names, use [orientationValue](#orientationValue).
For example:

    mark Area
        [ mFrom [ srData (str "myData") ]
        , mEncode
            [ enEnter
                [ maOrient [ orientationValue Horizontal ]
                , maX [ vScale "xScale", vField (field "age") ]
                , maY [ vScale "yScale", vField (field "value") ]
                , maX2 [ vScale "xScale", vNum 0 ]
                ]
            ]
        ]

For further details see the
[Vega area mark documentation](https://vega.github.io/vega/docs/marks/area/).

-}
maOrient : List Value -> MarkProperty
maOrient =
    MOrient


{-| The outer radius in pixel units of an arc mark. This may be
specified directly, via a field, a signal or any other number-generating value.
For further details see the
[Vega arc documentation](https://vega.github.io/vega/docs/marks/arc/).
-}
maOuterRadius : List Value -> MarkProperty
maOuterRadius =
    MOuterRadius


{-| The padding angle in radians clockwise from north for an arc mark. This may be
specified directly, via a field, a signal or any other number-generating value.
For further details see the
[Vega arc documentation](https://vega.github.io/vega/docs/marks/arc/).
-}
maPadAngle : List Value -> MarkProperty
maPadAngle =
    MPadAngle


{-| The [SVG path string](https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Paths)
describing the geometry of a path mark. This may be specified directly, via a field,
a signal or any other text-generating value. For further details see the
[Vega path mark documentation](https://vega.github.io/vega/docs/marks/path/).
-}
maPath : List Value -> MarkProperty
maPath =
    MPath


{-| Polar coordinate radial offset in pixels, relative to the origin determined
by the x and y properties of a text mark. This may be specified directly,
via a field, a signal or any other number-generating value. For further details
see the [Vega text mark documentation](https://vega.github.io/vega/docs/marks/text/).
-}
maRadius : List Value -> MarkProperty
maRadius =
    MRadius


{-| Type of visual mark used to represent data in the visualization. For further
details see the
[Vega mark type documentation](https://vega.github.io/vega/docs/marks/#types).
-}
type Mark
    = Arc
    | Area
    | Image
    | Group
    | Line
    | Path
    | Rect
    | Rule
    | Shape
    | Symbol
    | Text
    | Trail


{-| Create a single mark definition. Marks form the visible components of a visualization.
For available mark types see [Mark](#mark). Each mark specification can include
a list of mark properties (second parameter) that customise the appearance of the
mark and relate its appearance to data streams or signals. Commonly multiple marks
are combined with the composition operator (`<<`), for example:

      mk =
          marks
              << mark Rect
                  [ mFrom [ srData (str "myData") ]
                  , mEncode
                      [ enEnter
                          [ maX [ vScale "xScale", vField (field "age") ]
                          , maWidth [ vNum 17 ]
                          , maY [ vScale "yScale", vField (field "value") ]
                          , maY2 [ vScale "yScale", vNum 0 ]
                          ]
                      ]
                  ]
              << mark Area
                  [ mFrom [ srData (str "myOtherData") ]
                  , mEncode
                      [ enEnter
                          [ maX [ vScale "xScale", vField (field "age") ]
                          , maY [ vScale "yScale", vField (field "anotherValue") ]
                          , maY2 [ vScale "yScale", vNum 0 ]
                          , maFill [ vStr "#b3d9e6" ]
                          ]
                      ]
                  ]

-}
mark : Mark -> List TopMarkProperty -> List Spec -> List Spec
mark mark mps =
    (::) (JE.object (MType mark :: mps |> List.concatMap topMarkProperty))


{-| Indicates mark interpolation style.
-}
type MarkInterpolation
    = Basis
    | Bundle
    | Cardinal
    | CatmullRom
    | Linear
    | Monotone
    | Natural
    | Stepwise
    | StepAfter
    | StepBefore


{-| A convenience function for generating a value representing a given mark
interpolation type. This can be used instead of specifying an interpolation type
as a literal string to avoid problems of mistyping the interpolation name.

    signals
       << signal "interp" [ siValue (markInterpolationValue Linear) ]

-}
markInterpolationValue : MarkInterpolation -> Value
markInterpolationValue interp =
    case interp of
        Basis ->
            vStr "basis"

        Bundle ->
            vStr "bundle"

        Cardinal ->
            vStr "cardinal"

        CatmullRom ->
            vStr "catmull-rom"

        Linear ->
            vStr "linear"

        Monotone ->
            vStr "monotone"

        Natural ->
            vStr "natural"

        Stepwise ->
            vStr "step"

        StepAfter ->
            vStr "step-after"

        StepBefore ->
            vStr "step-before"


{-| A convenience function for generating a value representing a given mark
orientation type. This can be used instead of specifying an orientation type as
a literal string to avoid problems of mistyping its name.

     maOrient [ orientationValue Horizontal ]

-}
orientationValue : Orientation -> Value
orientationValue orient =
    case orient of
        Horizontal ->
            vStr "horizontal"

        Vertical ->
            vStr "vertical"

        Radial ->
            vStr "radial"

        OrientationSignal sig ->
            vSignal sig


{-| Create the marks used in the visualization. Multiple mark specifications are
commonly combined using the functional composition operator (`<<`). For example,

      mk =
          marks
              << mark Line
                  [ mFrom [ srData (str "myData") ]
                  , mEncode
                      [ enEnter
                          [ maX [ vScale "xScale", vField (field "distance") ]
                          , maY [ vScale "yScale", vField (field "energy") ]
                          , maStroke [ black ]
                          ]
                      ]
                  ]
              << mark Symbol
                  [ mFrom [ srData (str "myData") ]
                  , mEncode
                      [ enEnter
                          [ maX [ vScale "xScale", vField (field "distance") ]
                          , maY [ vScale "yScale", vField (field "energy") ]
                          , maFill [ white ]
                          , maStroke [ black ]
                          ]
                      ]
                  ]

-}
marks : List Spec -> ( VProperty, Spec )
marks axs =
    ( VMarks, JE.list axs )


{-| A shape instance that provides a drawing method to invoke within the renderer.
Shape instances cannot be specified directly, instead they must be generated by
a data transform such as symbol generation or a geoshape. For further details see
the [Vega shape documentation](https://vega.github.io/vega/docs/marks/shape/).
For example,

    shapeEncoding =
        [ maShape [ symbolValue SymSquare ]
        , maStroke [ black ]
        ]

    lg =
        legends
            << legend
                [ leFill "cScale"
                , leOrient BottomRight
                , leEncode [ enSymbols [ enUpdate shapeEncoding ] ]
                ]

-}
maShape : List Value -> MarkProperty
maShape =
    MShape


{-| The area in pixels of the bounding box of point-based mark such as a symbol.
Note that this value sets the area of the mark; the side lengths will increase with
the square root of this value. This may be specified directly, via a field, a signal
or any other number-generating value. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maSize : List Value -> MarkProperty
maSize =
    MSize


{-| The start angle in radians clockwise from north for an arc mark. This may be
specified directly, via a field, a signal or any other number-generating value.
For further details see the
[Vega arc documentation](https://vega.github.io/vega/docs/marks/arc/).
-}
maStartAngle : List Value -> MarkProperty
maStartAngle =
    MStartAngle


{-| The stroke color of a mark. This may be specified directly, via a field,
a signal or any other color-generating value. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maStroke : List Value -> MarkProperty
maStroke =
    MStroke


{-| The stroke cap ending style for a mark. This may be specified directly, via a
field, a signal or any other text-generating value. To guarantee valid stroke cap
names, use [strokeCapValue](#strokeCapValue). For example:

      maStrokeCap [ strokeCapValue CRound ]

For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).

-}
maStrokeCap : List Value -> MarkProperty
maStrokeCap =
    MStrokeCap


{-| The stroke dash style of a mark. This may be specified directly, via a
field, a signal or any other numeric list-generating value. The list should consist
of alternating dash-gap lengths in pixels. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maStrokeDash : List Value -> MarkProperty
maStrokeDash =
    MStrokeDash


{-| A mark's offset of the first stroke dash in pixels. This may be specified
directly, via a field, a signal or any other number-generating value. For further
details see the [Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maStrokeDashOffset : List Value -> MarkProperty
maStrokeDashOffset =
    MStrokeDashOffset


{-| The stroke join method for a mark. This may be specified directly, via a
field, a signal or any other text-generating value. To guarantee valid stroke join
names, use `strokeJoinLabel`. For example:

    strokeCapValue CButt

For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).

-}
maStrokeJoin : List Value -> MarkProperty
maStrokeJoin =
    MStrokeJoin


{-| The miter limit at which to bevel a line join for a mark. This may be specified
directly, via a field, a signal or any other number-generating value. For further
details see the [Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maStrokeMiterLimit : List Value -> MarkProperty
maStrokeMiterLimit =
    MStrokeMiterLimit


{-| The stroke opacity of a mark in the range [0 1]. This may be specified directly,
via a field, a signal or any other number-generating value. For further details
see the [Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maStrokeOpacity : List Value -> MarkProperty
maStrokeOpacity =
    MStrokeOpacity


{-| The stroke width of a mark in pixels. This may be specified directly, via a
field, a signal or any other number-generating value. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maStrokeWidth : List Value -> MarkProperty
maStrokeWidth =
    MStrokeWidth


{-| A symbol shape that describes a symbol mark. For preset shapes, use
[symbolValue](#symbolValue). For correct sizing of custom shape paths, define
coordinates within a square ranging from -1 to 1 along both the x and y dimensions.
Symbol definitions may be specified directly, via a field, a signal or any other
text-generating value. For example, to generate a preset shape:

    maShape [ symbolValue SymTriangleLeft ]

or a custom shape with an SVG path:

    maShape [ symbolValue (symPath "M-1,-1H1V1H-1Z") ]

For further details see the
[Vega symbol documentation](https://vega.github.io/vega/docs/marks/symbol/).

-}
maSymbol : List Value -> MarkProperty
maSymbol =
    MSymbol


{-| The interpolation tension in the range [0, 1] of a linear mark. Applies only
to cardinal and catmull-rom interpolators. This may be specified directly, via a
field, a signal or any other number-generating value. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maTension : List Value -> MarkProperty
maTension =
    MTension


{-| The text to display in a text mark. This may be specified directly,
via a field, a signal or any other string-generating value. For further details
see the [Vega text mark documentation](https://vega.github.io/vega/docs/marks/text/).
-}
maText : List Value -> MarkProperty
maText =
    MText


{-| Polar coordinate angle in radians, relative to the origin determined by the
x and y properties of a text mark. This may be specified directly, via a field,
a signal or any other number-generating value. For further details see the
[Vega text mark documentation](https://vega.github.io/vega/docs/marks/text/).
-}
maTheta : List Value -> MarkProperty
maTheta =
    MTheta


{-| The tooltip text to show upon mouse hover over a mark. This may be specified
directly, via a field, a signal or any other text-generating value. For further
details see the [Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maTooltip : List Value -> MarkProperty
maTooltip =
    MTooltip


{-| The URL of an image file to be displayed as an image mark. This may be specified
directly, via a field, a signal or any other text-generating value. For further
details see the [Vega image mark documentation](https://vega.github.io/vega/docs/marks/image/).
-}
maUrl : List Value -> MarkProperty
maUrl =
    MUrl


{-| The width of a mark in pixels. This may be specified directly, via a field,
a signal or any other number-generating value. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maWidth : List Value -> MarkProperty
maWidth =
    MWidth


{-| The primary x-coordinate of a mark in pixels. This may be specified directly,
via a field, a signal or any other number-generating value. For further details
see the [Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maX : List Value -> MarkProperty
maX =
    MX


{-| The secondary x-coordinate of a mark in pixels. This may be specified directly,
via a field, a signal or any other number-generating value. For further details
see the [Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maX2 : List Value -> MarkProperty
maX2 =
    MX2


{-| The centre x-coordinate of a mark in pixels. This is an alternative to `maX`
or `maX2`, not an addition. It may be specified directly, via a field, a signal
or any other number-generating value. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maXC : List Value -> MarkProperty
maXC =
    MXC


{-| The primary y-coordinate of a mark in pixels. This may be specified directly,
via a field, a signal or any other number-generating value. For further details
see the [Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maY : List Value -> MarkProperty
maY =
    MY


{-| The secondary y-coordinate of a mark in pixels. This may be specified directly,
via a field, a signal or any other number-generating value. For further details
see the [Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maY2 : List Value -> MarkProperty
maY2 =
    MY2


{-| The centre y-coordinate of a mark in pixels. This is an alternative to `maY`
or `maY2`, not an addition. It may be specified directly, via a field, a signal
or any other number-generating value. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maYC : List Value -> MarkProperty
maYC =
    MYC


{-| An integer z-index indicating the layering order of sibling mark items. The
default value is 0. Higher values (1) will cause marks to be drawn on top of those
with lower z-index values. Setting the z-index as an encoding property only affects
ordering among sibling mark items; it will not change the layering relative to other
mark definitions. The z-index may be specified directly, via a field, a signal or
any other number-generating value. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#encode).
-}
maZIndex : List Value -> MarkProperty
maZIndex =
    MZIndex


{-| Indicates whether or how marks should be clipped to a specified shape.
For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks).
-}
mClip : Clip -> TopMarkProperty
mClip =
    MClip


{-| Specify a description of a mark, useful for inline comments. For further
details see the [Vega mark documentation](https://vega.github.io/vega/docs/marks).
-}
mDescription : String -> TopMarkProperty
mDescription =
    MDescription


{-| Specify a set of visual encoding rules for a mark. For further details see
the [Vega mark documentation](https://vega.github.io/vega/docs/marks).
-}
mEncode : List EncodingProperty -> TopMarkProperty
mEncode =
    MEncode


{-| Specify the data source to be visualized by a mark. If not specified, a single
element data set containing an empty object is assumed. The source can either be
a data set to use or a faceting directive to subdivide a data set across a set
of group marks. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks).
-}
mFrom : List Source -> TopMarkProperty
mFrom =
    MFrom


{-| Assemble a group of top-level marks. This can be used to create nested groups
of marks within a `Group` mark (including further nested group specifications) by
suppyling the specification as a series of properties. For example,

    marks
        << mark Group
            [ mFrom [ srData (str "myData") ]
            , mGroup [ mkGroup1 [], mkGroup2 [] ]
            ]

For details on the group mark see the
[Vega group mark documentation](https://vega.github.io/vega/docs/marks/group/).

-}
mGroup : List ( VProperty, Spec ) -> TopMarkProperty
mGroup =
    MGroup


{-| Specify whether a mark can serve as an input event source. If false, no
mouse or touch events corresponding to the mark will be generated. For further
details see the [Vega mark documentation](https://vega.github.io/vega/docs/marks).
-}
mInteractive : Boo -> TopMarkProperty
mInteractive =
    MInteractive


{-| Specify a data field to use as a unique key for data binding. When a
visualization’s data is updated, the key value will be used to match data elements
to existing mark instances. Use a key field to enable object constancy for
transitions over dynamic data. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks).
-}
mKey : Field -> TopMarkProperty
mKey =
    MKey


{-| Specify a unique name for a mark. This name can be used to refer to the mark
in another mark or within an event stream definition. SVG renderers will add this
name value as a CSS class name on the enclosing SVG group (g) element containing
the mark instances. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks).
-}
mName : String -> TopMarkProperty
mName =
    MName


{-| Specify a set of triggers for modifying a mark's properties in response to
signal changes. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks).
-}
mOn : List Trigger -> TopMarkProperty
mOn =
    MOn


{-| Specify the Fields and sort order for sorting mark items. The sort order will
determine the default rendering order. This is defined over generated scenegraph
items and sorting is performed after encodings are computed, allowing items to be
sorted by size or position. To sort by underlying data properties in addition to
mark item properties, append the prefix `datum` to a field name.

    mSort [ ( field "datum.y", Ascend ) ]

For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks).

-}
mSort : List ( Field, Order ) -> TopMarkProperty
mSort =
    MSort


{-| Specify the names of custom styles to apply to a mark. A style is a named
collection of mark property defaults defined within the configuration. These
properties will be applied to the mark’s enter encoding set, with later styles
overriding earlier styles. Any properties explicitly defined within the mark’s
`encode` block will override a style default. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks).
-}
mStyle : List String -> TopMarkProperty
mStyle =
    MStyle


{-| Specify a set of post-encoding transforms to be applied after any encode
blocks, that operate directly on mark scenegraph items (not backing data objects).
These can be useful for performing layout with transforms that can set x, y,
width, height, etc. properties. Only data transforms that do not generate or
filter data objects should be used. For further details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks).
-}
mTransform : List Transform -> TopMarkProperty
mTransform =
    MTransform


{-| Specify the z-index (draw order) of a mark. Marks with higher values are drawn
'on top' of marks with lower numbers. This can be useful, for example, when drawing
node-link diagrams and the node symbol should sit on top of connected edge lines.
-}
mZIndex : Num -> TopMarkProperty
mZIndex =
    MTopZIndex


{-| Specify a desired 'nice' temporal interval between labelled tick points. For
full details see the [Vega scale documentation](https://vega.github.io/vega/docs/scales/).
-}
nInterval : TimeUnit -> Int -> ScaleNice
nInterval tu step =
    NInterval tu step


{-| Specify a desired tick count for a human-friendly 'nice' scale range. For full
details see the [Vega scale documentation](https://vega.github.io/vega/docs/scales/).
-}
nTickCount : Int -> ScaleNice
nTickCount =
    NTickCount


{-| A numeric literal used for functions that can accept a literal or signal.
-}
num : Float -> Num
num =
    Num


{-| An expression that will be evaluated as a numeric value.
-}
numExpr : Expr -> Num
numExpr =
    NumExpr


{-| A list of potentially mixed numeric types. This can be useful when, for example,
a domain is specified as being bounded by 0 and some signal:

    scDomain (doNums (numList [ num 0, numSignal "mySignal" ] ) )

-}
numList : List Num -> Num
numList =
    NumList


{-| Represents an absence of a numeric value.
-}
numNull : Num
numNull =
    NumNull


{-| A list of numeric literals used for functions that can accept literals or signal.
For lists that contain a mixture of numeric literals and signals use
[numList])(#numList) instead.
-}
nums : List Float -> Num
nums =
    Nums


{-| A signal that will provide a numeric value.
-}
numSignal : String -> Num
numSignal =
    NumSignal


{-| A list of signals that will provide numeric values.
-}
numSignals : List String -> Num
numSignals =
    NumSignals


{-| Adds list of triggers to the given data table.
For details see the [Vega trigger documentation](https://vega.github.io/vega/docs/triggers).
-}
on : List Trigger -> DataTable -> DataTable
on triggerSpecs dTable =
    dTable ++ [ ( "on", JE.list triggerSpecs ) ]


{-| Type of aggregation operation. See the
[Vega aggregate documentation](https://vega.github.io/vega/docs/transforms/aggregate/#ops)
for more details.
-}
type Operation
    = ArgMax
    | ArgMin
    | Average
    | CI0
    | CI1
    | Count
    | Distinct
    | Max
    | Mean
    | Median
    | Min
    | Missing
    | Q1
    | Q3
    | Stderr
    | Stdev
    | Stdevp
    | Sum
    | Valid
    | Variance
    | Variancep
    | OperationSignal String


{-| Indicates an aggregation operation is to be determined by a named signal. The
signal should generate the name of a valid operation (e.g. `average`). For details see the
[Vega aggregate documentation](https://vega.github.io/vega/docs/transforms/aggregate/#ops)
-}
operationSignal : String -> Operation
operationSignal =
    OperationSignal


{-| Indicate an ordering, usually when sorting.
-}
type Order
    = Ascend
    | Descend
    | OrderSignal String


{-| Indicates a sort order determined by a named signal for comparison operations.
For details see the [Vega type comparison documentation](https://vega.github.io/vega/docs/types/#Compare).
-}
orderSignal : String -> Order
orderSignal =
    OrderSignal


{-| Indicates desired orientation of a mark, legend or link path (e.g. horizontally or vertically
oriented bars). Note that not all can use `Radial` orientation.
-}
type Orientation
    = Horizontal
    | Vertical
    | Radial
    | OrientationSignal String


{-| Indicates an orientation for marks, legends and link paths is determined by a named signal.
For details see the [Vega type comparison documentation](https://vega.github.io/vega/docs/types/#Compare).
-}
orientationSignal : String -> Orientation
orientationSignal =
    OrientationSignal


{-| Type of overlap strategy to be applied when there is not space to show all
items on an axis. See the
[Vega axes documentation](https://vega.github.io/vega/docs/axes)
for more details.
-}
type OverlapStrategy
    = ONone
    | OParity
    | OGreedy
    | OverlapStrategySignal String


{-| Indicates an axis overlap strategy is determined by a named signal.
For valid signal values see the
[Vega axes documentation](https://vega.github.io/vega/docs/axes)
-}
overlapStrategySignal : String -> OverlapStrategy
overlapStrategySignal =
    OverlapStrategySignal


{-| The names to give the output fields of a packing transform. The default is
["x", "y", "r", "depth", "children"], where x and y are the layout coordinates,
r is the node radius, depth is the tree depth, and children is the count of a
node’s children in the tree. For more details, see the
[Vega pack transform documentation](https://vega.github.io/vega/docs/transforms/pack/)
-}
paAs : String -> String -> String -> String -> String -> PackProperty
paAs x y r depth children =
    PaAs x y r depth children


{-| Represents padding dimensions of a rectangular area in pixel units.
-}
type Padding
    = PSize Float
    | PEdges Float Float Float Float


{-| Set the padding around the visualization in pixel units. The way padding is
interpreted will depend on the `autosize` properties. See the
[Vega specification documentation](https://vega.github.io/vega/docs/specification/)
for details.
-}
padding : Float -> ( VProperty, Spec )
padding p =
    ( VPadding, paddingSpec (PSize p) )


{-| Set the padding around the visualization in pixel units in _left_, _top_,
_right_, _bottom_ order. The way padding is interpreted will depend on the
`autosize` properties. See the
[Vega specification documentation](https://vega.github.io/vega/docs/specification/)
for details.
-}
paddings : Float -> Float -> Float -> Float -> ( VProperty, Spec )
paddings l t r b =
    ( VPadding, paddingSpec (PEdges l t r b) )


{-| The data field corresponding to a numeric value for the node in a packing
transform. The sum of values for a node and all its descendants is available on
the node object as the value property. If radius is null, this field determines
the node size. For details, see the
[Vega pack transform documentation](https://vega.github.io/vega/docs/transforms/pack/)
-}
paField : Field -> PackProperty
paField =
    PaField


{-| The approximate padding to include between packed circles. For details, see
the [Vega pack transform documentation](https://vega.github.io/vega/docs/transforms/pack/)
-}
paPadding : Num -> PackProperty
paPadding =
    PaPadding


{-| Specify an explicit node radius to use in a packing transform. If `Nothing` (the
default), the radius of each leaf circle is derived from the field value. For details, see
the [Vega pack transform documentation](https://vega.github.io/vega/docs/transforms/pack/)
-}
paRadius : Maybe Field -> PackProperty
paRadius =
    PaRadius


{-| Indicates the parsing rules when processing some data text. The parameter is
a list of tuples where each corresponds to a field name paired with its desired
data type. This is only necessary if there is some ambiguity that could prevent
correct type inference, such as time text:

    dataSource
        [ data "timeData"
            [ daUrl "data/timeSeries.json"
            , daFormat [ parse [ ( "timestamp", foDate "%d/%m/%y %H:%M" ) ] ]
            ]
        ]

-}
parse : List ( String, DataType ) -> FormatProperty
parse =
    Parse


{-| The size of a packing layout, provided as a two-element list in [width, height]
order (or a signal that generates such a list). For details, see the
[Vega pack transform documentation](https://vega.github.io/vega/docs/transforms/pack/)
-}
paSize : Num -> PackProperty
paSize n =
    PaSize n


{-| Specify how sorting of sibling nodes is supported in a packing transform.
The inputs to subject to sorting are tree node objects, not input data objects.

    transform
        [ trPack
            [ paField (field "size")
            , paSort [ ( field "value", Ascend ) ]
            ]
        ]

For details, see the
[Vega pack transform documentation](https://vega.github.io/vega/docs/transforms/pack/)

-}
paSort : List ( Field, Order ) -> PackProperty
paSort =
    PaSort


{-| The output fields for the computed start and end angles for each arc in a pie
transform. For details see the
[Vega pie transform documentation](https://vega.github.io/vega/docs/transforms/pie/)
-}
piAs : String -> String -> PieProperty
piAs start end =
    PiAs start end


{-| The end angle in radians in a pie chart transform. The default is 2 PI
indicating the final slice ends 'north'. For details see the
[Vega pie transform documentation](https://vega.github.io/vega/docs/transforms/pie/)
-}
piEndAngle : Num -> PieProperty
piEndAngle =
    PiEndAngle


{-| The field to encode with angular spans in a pie chart transform. For details
see the [Vega pie transform documentation](https://vega.github.io/vega/docs/transforms/pie/)
-}
piField : Field -> PieProperty
piField =
    PiField


{-| Specify the fields to group by when performing a pivot transform. If not specified,
a single group containing all data objects will be used. For details see the
[Vega pivot transform documentation](https://vega.github.io/vega/docs/transforms/pivot/)
-}
piGroupBy : List Field -> PivotProperty
piGroupBy =
    PiGroupBy


{-| Specify the maximum number of fields to generate when performing a pivot transform
or 0 for no limit. For details see the
[Vega pivot transform documentation](https://vega.github.io/vega/docs/transforms/pivot/)
-}
piLimit : Num -> PivotProperty
piLimit =
    PiLimit


{-| Specify the aggregation operation to use by when performing a pivot transform.
If not specified, fields will be aggregated by their sum. For details see the
[Vega pivot transform documentation](https://vega.github.io/vega/docs/transforms/pivot/)
-}
piOp : Operation -> PivotProperty
piOp =
    PiOp


{-| Indicates whether or not pie slices should be stored in angular size order.
For details see the
[Vega pie transform documentation](https://vega.github.io/vega/docs/transforms/pie/)
-}
piSort : Boo -> PieProperty
piSort =
    PiSort


{-| The starting angle in radians in a pie chart transform. The default is 0
indicating that the first slice starts 'north'. For details see the
[Vega pie transform documentation](https://vega.github.io/vega/docs/transforms/pie/)
-}
piStartAngle : Num -> PieProperty
piStartAngle =
    PiStartAngle


{-| Specify a projection’s centre as a two-element list of longitude and latitude
in degrees. The default value is [0, 0].

    pr =
        projections
            << projection "myProjection"
                [ prType Mercator
                , prCenter (nums [ 40, -20 ])
                ]

For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)

-}
prCenter : Num -> ProjectionProperty
prCenter =
    PrCenter


{-| Specify a projection’s clipping circle radius to the specified angle in degrees.
A value of zero indicates antimeridian cutting should be applied rather than
small-circle clipping. For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prClipAngle : Num -> ProjectionProperty
prClipAngle =
    PrClipAngle


{-| Specify a projection’s viewport clip extent to the specified bounds in pixels.
The extent bounds should be specified as a list of four numbers in [x0, y0, x1, y1]
order where x0 is the left-side of the viewport, y0 is the top, x1 is the right
and y1 is the bottom. For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prClipExtent : Num -> ProjectionProperty
prClipExtent =
    PrClipExtent


{-| Specify a Hammer map projection's coefficient (defaults to 2). For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prCoefficient : Num -> ProjectionProperty
prCoefficient =
    PrCoefficient


{-| Specify a custom map projection. Custom names need to be registered with the
Vega runtime. For details, see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#register)
-}
prCustom : Str -> Projection
prCustom =
    Proj


{-| Specify a Satellite map projection's distance value. Values are expressed as a
proportion of the Earth's radius (defaults to 2). For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prDistance : Num -> ProjectionProperty
prDistance =
    PrDistance


{-| Specify the display region into which the projection should be automatically fit.
Used in conjunction with [prFit](#prFit). The region bounds should be specified
as a list of four numbers in [x0, y0, x1, y1] order where x0 is the left-side,
y0 is the top, x1 is the right and y1 is the bottom. For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prExtent : Num -> ProjectionProperty
prExtent =
    PrExtent


{-| Specify the GeoJSON data to which a projection should attempt to automatically
fit by setting its translate and scale values.

    ds =
        dataSource [ data "mapData" [ daUrl "myGeoJson.json" ] ]

    pr =
        projections
            << projection "myProjection"
                [ prType Orthographic
                , prSize (numSignal "[width,height]")
                , prFit (feName "mapData")
                ]

For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)

-}
prFit : Feature -> ProjectionProperty
prFit =
    PrFit


{-| Specify a Bottomley map projection's fraction parameter (defaults to 0.5).
For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prFraction : Num -> ProjectionProperty
prFraction =
    PrFraction


{-| Specify the number of lobes in radial map projections such as the Berghaus Star.
For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prLobes : Num -> ProjectionProperty
prLobes =
    PrLobes


{-| Represents a global map projection type. For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections).
-}
type Projection
    = Albers
    | AlbersUsa
    | AzimuthalEqualArea
    | AzimuthalEquidistant
    | ConicConformal
    | ConicEqualArea
    | ConicEquidistant
    | Equirectangular
    | Gnomonic
    | Mercator
    | NaturalEarth1
    | Orthographic
    | Stereographic
    | TransverseMercator
    | Proj Str
    | ProjectionSignal String


{-| Create a single map projection for transforming geo data onto a plane.

    pr =
        projections
            << projection "myProjection"
                [ prType AlbersUsa
                , prScale (num 1100)
                , prTranslate (numSignals [ "width / 2", "height / 2" ])
                ]

-}
projection : String -> List ProjectionProperty -> List Spec -> List Spec
projection name pps =
    (::) (JE.object (( "name", JE.string name ) :: List.map projectionProperty pps))


{-| A convenience function for generating a value representing a given projection
type. Useful when generating signals representing projection types.

    standardProjections : Value
    standardProjections =
        List.map projectionValue
            [ Albers
            , AzimuthalEqualArea
            , AzimuthalEquidistant
            , ConicConformal
            , ConicEqualArea
            , Equirectangular
            , Mercator
            , Orthographic
            ]
            |> vValues

    si =
        signals
            << signal "pType"
                [ siValue (projectionValue Mercator)
                , siBind (iSelect [ inOptions standardProjections ])
                ]

-}
projectionValue : Projection -> Value
projectionValue proj =
    vStr (projectionLabel proj)


{-| Create the projections used to map geographic data onto a plane.

    pr =
        projections
            << projection "myProj" [ prType Orthographic ]
            << projection "myProj2" [ prType Albers, prRotate (nums [ -20, 15 ]) ]

-}
projections : List Spec -> ( VProperty, Spec )
projections prs =
    ( VProjections, JE.list prs )


{-| Specify a global map projection type is to be determined by a signal. For
details of valid projection values see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections).
-}
projectionSignal : String -> Projection
projectionSignal =
    ProjectionSignal


{-| Specify the type of global map projection to use in a projection transformation.

    pr =
        projections
            << projection "myProj" [ prType Orthographic ]

If the projection type is to be generated from a signal, use `projectionSignal`
and specify the label of the signal to use.

    << projection "myProj" [ prType (projectionSignal "mySignal") ]

For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#types)

-}
prType : Projection -> ProjectionProperty
prType =
    PrType


{-| Specify a the parallel used for map projections such as the Armadillo (defaults
to 20 degrees N). For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prParallel : Num -> ProjectionProperty
prParallel =
    PrParallel


{-| Specify the default radius (in pixels) to use when drawing projected GeoJSON
Point and MultiPoint geometries. The default value is 4.5. For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prPointRadius : Num -> ProjectionProperty
prPointRadius =
    PrPointRadius


{-| Specify a threshold for the projection’s adaptive resampling in pixels. This
corresponds to the Douglas–Peucker distance. If precision is not specified, the
projection’s current resampling precision which defaults to √0.5 ≅ 0.70710 is used.
For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prPrecision : Num -> ProjectionProperty
prPrecision =
    PrPrecision


{-| Specify the radius for the Gingery map projection. Defaults to 30 degrees.
For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prRadius : Num -> ProjectionProperty
prRadius =
    PrRadius


{-| Specify a Hill map projection's ratio allowing it to vary continuously between
Maurer 73 (0) and Eckert IV projections (infinity). Defaults to 1. For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prRatio : Num -> ProjectionProperty
prRatio =
    PrRatio


{-| Specify a projection’s three-axis rotation angle. This should be a two- or
three-element list of numbers [lambda, phi, gamma] specifying the rotation angles
in degrees about each spherical axis. (These correspond to yaw, pitch and roll.).
For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prRotate : Num -> ProjectionProperty
prRotate =
    PrRotate


{-| Specify a projection’s the projection’s scale factor to the specified value.
The default scale is projection-specific. The scale factor corresponds linearly
to the distance between projected points; however, scale factor values are not
equivalent across projections. For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prScale : Num -> ProjectionProperty
prScale =
    PrScale


{-| Specify the width and height of the display region into which the projection
should be automatically fit. Used in conjunction with [prFit](#prFit) this is equivalent
to calling [prExtent](#prExtent) with the top-left position set to (0,0). The region
size should be specified as a list of two numbers in [width, height] order (or
a signal that generates such a list). For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prSize : Num -> ProjectionProperty
prSize =
    PrSize


{-| Specify the spacing for a Lagrange conformal map projection (defaults to 0.5).
For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prSpacing : Num -> ProjectionProperty
prSpacing =
    PrSpacing


{-| Specify the tilt angle for a Satellite map projection (defaults to 0 degrees).
For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prTilt : Num -> ProjectionProperty
prTilt =
    PrTilt


{-| Specify a translation offset to the specified two-element list [tx, ty]. If
not specified as a two-element list, returns the current translation offset which
defaults to [480, 250]. The translation offset determines the pixel coordinates
of the projection’s centre. The default translation offset places (0°,0°) at the
centre of a 960×500 area. For details see the
[Vega map projection documentation](https://vega.github.io/vega/docs/projections/#properties)
-}
prTranslate : Num -> ProjectionProperty
prTranslate =
    PrTranslate


{-| Specify the output field names for the output of a partition layout transform.
The parameters correspond to the (default name) fields `x0`, `y0`, `x1`, `y1`,
`depth` and `children`. For details see the
[Vega partition transform documentation](https://vega.github.io/vega/docs/transforms/partition/).
-}
ptAs : String -> String -> String -> String -> String -> String -> PartitionProperty
ptAs =
    PtAs


{-| Specify the data field corresponding to a numeric value for a partition node.
The sum of values for a node and all its descendants is available on the node object
as the `value` property. This field determines the size of a node. For details see the
[Vega partition transform documentation](https://vega.github.io/vega/docs/transforms/partition/).
-}
ptField : Field -> PartitionProperty
ptField =
    PtField


{-| Specify the padding between adjacent nodes for a partition layout transform.
For details see the
[Vega partition transform documentation](https://vega.github.io/vega/docs/transforms/partition/).
-}
ptPadding : Num -> PartitionProperty
ptPadding =
    PtPadding


{-| Specify whether or not node layout values should be rounded in a partition transform.
The default is false. For details see the
[Vega partition transform documentation](https://vega.github.io/vega/docs/transforms/partition/).
-}
ptRound : Boo -> PartitionProperty
ptRound =
    PtRound


{-| Specify the size of a partition layout as two-element list corresponding to
[width, height] (or a signal that generates such a list). For details see the
[Vega partition transform documentation](https://vega.github.io/vega/docs/transforms/partition/).
-}
ptSize : Num -> PartitionProperty
ptSize =
    PtSize


{-| Specify how sorting of sibling nodes is performed during a partition layout
transform. For details see the
[Vega partition transform documentation](https://vega.github.io/vega/docs/transforms/partition/).
-}
ptSort : List ( Field, Order ) -> PartitionProperty
ptSort =
    PtSort


{-| Provide a custom range default scheme. This can be use when a new named default
has been created as part of a config setting is required. For details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#range).
-}
raCustomDefault : String -> ScaleRange
raCustomDefault =
    RCustom


{-| A scale range specified as a data reference object. This is used for specifying
ordinal scale ranges as a series of distinct field values.

    scale "myScale"
        [ scType ScOrdinal
        , scDomain (doData [ daDataset "clusters", daField (field "id") ])
        , scRange (raData [ daDataset "clusters", daField (field "name") ])
        ]

For details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#range).

-}
raData : List DataReference -> ScaleRange
raData =
    RData


{-| A scale range specified as a list of numbers. For details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#range).
-}
raNums : List Float -> ScaleRange
raNums =
    RNums


{-| A scale range specified as a list of color schemes. The first parameter is
the name of the colour scheme to use, the second any customising properties.
For details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#range).
-}
raScheme : Str -> List ColorSchemeProperty -> ScaleRange
raScheme =
    RScheme


{-| A signal name used to generate a scale range. For details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#range).
-}
raSignal : String -> ScaleRange
raSignal =
    RSignal


{-| The step size for a band scale range. For details see the
[Vega band scale documentation](https://vega.github.io/vega/docs/scales/).
-}
raStep : Value -> ScaleRange
raStep =
    RStep


{-| A scale range specified as a list of strings. For details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#range).
-}
raStrs : List String -> ScaleRange
raStrs =
    RStrs


{-| A scale range specified as a list of values. For details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#range).
-}
raValues : List Value -> ScaleRange
raValues =
    RValues


{-| RGB color interpolation. The parameter is a gamma value to control the
brightness of the color trajectory.
-}
rgb : Float -> CInterpolate
rgb =
    Rgb


{-| Used to indicate the type of scale transformation to apply. See the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#types) for more details.
-}
type Scale
    = ScLinear
    | ScPow
    | ScSqrt
    | ScLog
    | ScTime
    | ScUtc
    | ScSequential
    | ScOrdinal
    | ScBand
    | ScPoint
    | ScQuantile
    | ScQuantize
    | ScBinLinear
    | ScBinOrdinal
    | ScCustom String
    | ScaleSignal String


{-| Create a single scale used to map data values to visual properties.

    scale "xScale"
        [ scType ScLinear
        , scDomain (doData [ daDataset "myData", daField (field "myField") ])
        , scRange RaWidth
        ]

-}
scale : String -> List ScaleProperty -> List Spec -> List Spec
scale name sps =
    (::) (JE.object (( "name", JE.string name ) :: List.map scaleProperty sps))


{-| Describes the way a scale can be rounded to 'nice' numbers. For full details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/).
-}
type ScaleNice
    = NMillisecond
    | NSecond
    | NMinute
    | NHour
    | NDay
    | NWeek
    | NMonth
    | NYear
    | NInterval TimeUnit Int
    | NTrue
    | NFalse
    | NTickCount Int
    | ScaleNiceSignal String


{-| Specify that the type of 'nice' scale generation is to be determined by a signal
with the given name. For valid values of the signal see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/).
-}
scaleNiceSignal : String -> ScaleNice
scaleNiceSignal =
    ScaleNiceSignal


{-| Specify that a default scaling (`width`, `category`, `heatmap` etc.) is to be
determined by a signal with the given name. For valid values of the signal see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#range).
-}
scaleRangeSignal : String -> ScaleRange
scaleRangeSignal =
    ScaleRangeSignal


{-| Create the scales used to map data values to visual properties.

    sc =
        scales
            << scale "xScale"
                [ scType ScLinear
                , scDomain (doData [ daDataset "myData", daField (field "x") ])
                , scRange RaWidth
                ]
            << scale "yScale"
                [ scType ScLinear
                , scDomain (doData [ daDataset "myData", daField (field "y") ])
                , scRange RaHeight
                ]

-}
scales : List Spec -> ( VProperty, Spec )
scales scs =
    ( VScales, JE.list scs )


{-| Specify a type of scale transformation is to be determined by a signal. For
valid values of the signal, see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#types).
-}
scaleSignal : String -> Scale
scaleSignal =
    ScaleSignal


{-| Specify the alignment of elements within each step of a band scale, as a
fraction of the step size. Should be in the range [0,1]. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scAlign : Num -> ScaleProperty
scAlign =
    SAlign


{-| Specify the base of the logorithm used in a logarithmic scale. For more details
see the [Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scBase : Num -> ScaleProperty
scBase =
    SBase


{-| Specify whether output values should be clamped to when using a quantitative
scale range (default false). If clamping is disabled and the scale is passed a
value outside the domain, the scale may return a value outside the range through
extrapolation. If clamping is enabled, the output value of the scale is always
within the scale’s range. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scClamp : Boo -> ScaleProperty
scClamp =
    SClamp


{-| Specify a custom named scale. For details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#types)
-}
scCustom : String -> Scale
scCustom =
    ScCustom


{-| Specify the domain of input data values for a scale. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scDomain : ScaleDomain -> ScaleProperty
scDomain =
    SDomain


{-| Specify whether or not ordinal domains should be implicitly extended with new
values. If false, a scale will return `undefined` for values not included in the
domain; if true, new values will be appended to the domain and an updated range
value will be returned. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scDomainImplicit : Boo -> ScaleProperty
scDomainImplicit =
    SDomainImplicit


{-| Specify the maximum value of a scale domain, overriding a `scDomain` setting.
This is only intended for use with scales having continuous domains. For more details
see the [Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scDomainMax : Num -> ScaleProperty
scDomainMax =
    SDomainMax


{-| Specify the minimum value of a scale domain, overriding a `scDomain` setting.
This is only intended for use with scales having continuous domains. For more details
see the [Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scDomainMin : Num -> ScaleProperty
scDomainMin =
    SDomainMin


{-| Insert a single mid-point value into a two-element scale domain. The mid-point
value must lie between the domain minimum and maximum values. This can be useful
for setting a midpoint for diverging color scales. It is only intended for use
with scales having continuous, piecewise domains. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scDomainMid : Num -> ScaleProperty
scDomainMid =
    SDomainMid


{-| Specify a list value that directly overrides the domain of a scale. This is
useful for supporting interactions such as panning or zooming a scale. The scale
may be initially determined using a data-driven domain, then modified in response
to user input by using this rawDomain function.

    scales
        << scale "xDetail"
            [ scType ScTime
            , scRange RaWidth
            , scDomain (doData [ daDataset "sp500", daField (field "date") ])
            , scDomainRaw (vSignal "detailDomain")
            ]

For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)

-}
scDomainRaw : Value -> ScaleProperty
scDomainRaw =
    SDomainRaw


{-| Specify the exponent to be used in power scale. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scExponent : Num -> ScaleProperty
scExponent =
    SExponent


{-| Specify the interpolation method for a quantitative scale. For more details
see the [Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scInterpolate : CInterpolate -> ScaleProperty
scInterpolate =
    SInterpolate


{-| Extend the range of a scale domain so it starts and ends on 'nice' round
values. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scNice : ScaleNice -> ScaleProperty
scNice =
    SNice


{-| Expand a scale domain to accommodate the specified number of pixels on each
end of a quantitative scale range or the padding between bands in a band scale.
For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scPadding : Num -> ScaleProperty
scPadding =
    SPadding


{-| Expand a scale domain to accommodate the specified number of pixels
between inner bands in a band scale. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scPaddingInner : Num -> ScaleProperty
scPaddingInner =
    SPaddingInner


{-| Expand a scale domain to accommodate the specified number of pixels
outside the outer bands in a band scale. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scPaddingOuter : Num -> ScaleProperty
scPaddingOuter =
    SPaddingOuter


{-| Specify the range of a scale representing the set of visual values. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scRange : ScaleRange -> ScaleProperty
scRange =
    SRange


{-| Specify the step size for band and point scales. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scRangeStep : Num -> ScaleProperty
scRangeStep =
    SRangeStep


{-| Reverse the order of a scale range. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scReverse : Boo -> ScaleProperty
scReverse =
    SReverse


{-| Specify whether to round numeric output values to integers. Helpful for
snapping to the pixel grid. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scRound : Boo -> ScaleProperty
scRound =
    SRound


{-| Specify the type of a named scale. For more details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scType : Scale -> ScaleProperty
scType =
    SType


{-| Specify whether or not a scale domain should include zero. The default is
true for linear, sqrt and power scales and false for all others. For more details
see the [Vega scale documentation](https://vega.github.io/vega/docs/scales/#properties)
-}
scZero : Boo -> ScaleProperty
scZero =
    SZero


{-| Bind a signal to an external input element such as a slider, selection list
or radio button group. For details see the
[Vega signal documentation](https://vega.github.io/vega/docs/signals).
-}
siBind : Bind -> SignalProperty
siBind =
    SiBind


{-| Indicates a rectangular side. Can be used to specify an axis position.
See the
[Vega axes documentation](https://vega.github.io/vega/docs/axes/#orientation)
for more details.
-}
type Side
    = SLeft
    | SRight
    | STop
    | SBottom
    | SideSignal String


{-| Specify that an axis position is to be determined by a signal with the given
name. For valid values of the signal see the
[Vega axes documentation](https://vega.github.io/vega/docs/axes/#orientation).
-}
sideSignal : String -> Side
sideSignal =
    SideSignal


{-| Specify a text description of a signal, useful for inline documentation.
For details see the
[Vega signal documentation](https://vega.github.io/vega/docs/signals).
-}
siDescription : String -> SignalProperty
siDescription =
    SiDescription


{-| Create the signals used to add dynamism to the visualization.
For further details see the
[Vega signal documentation](https://vega.github.io/vega/docs/signals)

    si =
        signals
            << signal "chartSize" [ siValue (vNum 120) ]
            << signal "chartPad" [ siValue (vNum 15) ]
            << signal "chartStep" [ siUpdate "chartSize + chartPad" ]
            << signal "width" [ siUpdate "chartStep * 4" ]

-}
signals : List Spec -> ( VProperty, Spec )
signals sigs =
    ( VSignals, JE.list sigs )


{-| Create a single signal used to add a dynamic component to a visualization.
For further details see the
[Vega signal documentation](https://vega.github.io/vega/docs/signals)

    signal "mySignal"
        [ siValue (vNum 20)
        , siBind (iRange [ inMin 5, inMax 50, inStep 1 ])
        ]

-}
signal : String -> List SignalProperty -> List Spec -> List Spec
signal sigName sps =
    (::) (JE.object (SiName sigName :: sps |> List.map signalProperty))


{-| A unique name to be given to a signal. Signal names should be contain only
alphanumeric characters (or “$”, or “_”) and may not start with a digit. Reserved
keywords that may not be used as signal names are "datum", "event", "item", and
"parent". For details see the
[Vega signal documentation](https://vega.github.io/vega/docs/signals).
-}
siName : String -> SignalProperty
siName =
    SiName


{-| Specify event stream handlers for updating a signal value in response to
input events. For details see the
[Vega signal documentation](https://vega.github.io/vega/docs/signals).
-}
siOn : List (List EventHandler) -> SignalProperty
siOn =
    SiOn


{-| Specify that a signal updates should target a signal in an enclosing scope.
Used when creating nested signals in a group mark. For details see the
[Vega signal documentation](https://vega.github.io/vega/docs/signals).
-}
siPushOuter : SignalProperty
siPushOuter =
    SiPushOuter


{-| Specify whether a signal update expression should be automatically re-evaluated
when any upstream signal dependencies update. If false, the update expression will
only be run upon initialization. For details see the
[Vega signal documentation](https://vega.github.io/vega/docs/signals).
-}
siReact : Boo -> SignalProperty
siReact =
    SiReact


{-| Specify an update expression for a signal which may include other signals,
in which case the signal will automatically update in response to upstream signal
changes, so long as its react property is not false. For details see the
[Vega signal documentation](https://vega.github.io/vega/docs/signals).
-}
siUpdate : String -> SignalProperty
siUpdate =
    SiUpdate


{-| Specify the initial value of a signal. For details see the
[Vega signal documentation](https://vega.github.io/vega/docs/signals).
-}
siValue : Value -> SignalProperty
siValue =
    SiValue


{-| The field to be used when sorting.
-}
soByField : Str -> SortProperty
soByField =
    ByField


{-| A sorting operation.
-}
soOp : Operation -> SortProperty
soOp =
    Op


{-| Allow type of sorting to be customised. For details see the
[Vega sort documentation](https://vega.github.io/vega/docs/scales/#sort).
-}
type SortProperty
    = Ascending
    | Descending
    | Op Operation
    | ByField Str
    | SortPropertySignal String


{-| Specify that a sorting order is to be determined by a signal with the given
name. The value of the signal should be either `ascending` or `descending`.
For details see the
[Vega sort documentation](https://vega.github.io/vega/docs/scales/#sort).
-}
sortPropertySignal : String -> SortProperty
sortPropertySignal =
    SortPropertySignal


{-| Specify a spiraling type. Used for the sequential positioning of words in a wordcloud.
-}
type Spiral
    = Archimedean
    | Rectangular
    | SpiralSignal String


{-| Specify that a spiral type for wordcloud allocation is to be determined by a
signal with the given name. The value of the signal should be either `archimedean`
or `rectangular`.
-}
spiralSignal : String -> Spiral
spiralSignal =
    SpiralSignal


{-| Name of the source for a set of marks. For details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#from)
-}
srData : Str -> Source
srData =
    SData


{-| Create a facet directive for a set of marks. The first parameter is the name
of the source data set from which the facet partitions are to be generated. The
second parameter is the name to be given to the generated facet source. Marks
defined with the faceted `group` mark can reference this data source name to
visualize the local data partition.

    mark Group
        [ mFrom [ srFacet (str "table") "facet" [ faGroupBy [ field "category" ] ] ]
        , mEncode [ enEnter [ maY [ vScale "yScale", vField (field "category") ] ] ]
        , mGroup [ nestedMk [] ]
        ]

    nestedMk =
        marks
            << mark Rect
                [ mName "bars"
                , mFrom [ srData (str "facet") ]
                , mEncode
                    [ enEnter
                        [ maY [ vScale "pos", vField (field "position") ]
                        , maHeight [ vScale "pos", vBand (num 1) ]
                        , maX [ vScale "xScale", vField (field "value") ]
                        , maX2 [ vScale "xScale", vBand (num 0) ]
                        , maFill [ vScale "cScale", vField (field "position") ]
                        ]
                    ]
                ]

For details see the
[Vega mark documentation](https://vega.github.io/vega/docs/marks/#from)

-}
srFacet : Str -> String -> List Facet -> Source
srFacet d name =
    SFacet d name


{-| Indicates the type of offsetting to apply when stacking. `OfZero` uses a baseline
at the foot of a stack, `OfCenter` uses a central baseline with stacking both above
and below it. `OfNormalize` rescales the stack to a common height while preserving
the relative size of stacked quantities. For details see the
[Vega stack transform documentation](https://vega.github.io/vega/docs/transforms/stack)
-}
type StackOffset
    = OfZero
    | OfCenter
    | OfNormalize
    | StackOffsetSignal String


{-| Specify a named signal to drive the type of offsetting to apply when
performing a stack transform. For details see the
[Vega stack transform documentation](https://vega.github.io/vega/docs/transforms/stack)
-}
stackOffsetSignal : String -> StackOffset
stackOffsetSignal =
    StackOffsetSignal


{-| Specify the names of the output fields for the computed start and end stack
values of a stack transform. For details see the
[Vega stack transform documentation](https://vega.github.io/vega/docs/transforms/stack/)
-}
stAs : String -> String -> StackProperty
stAs y0 y1 =
    StAs y0 y1


{-| Specify the data field that determines the stack heights in a stack transform.
For details see the
[Vega stack transform documentation](https://vega.github.io/vega/docs/transforms/stack/)
-}
stField : Field -> StackProperty
stField =
    StField


{-| Specify a grouping of fields with which to partition data into separate stacks
in a stack transform. For details see the
[Vega stack transform documentation](https://vega.github.io/vega/docs/transforms/stack/)
-}
stGroupBy : List Field -> StackProperty
stGroupBy =
    StGroupBy


{-| Specify the baseline offset used in a stack transform. For details see the
[Vega stack transform documentation](https://vega.github.io/vega/docs/transforms/stack/)
-}
stOffset : StackOffset -> StackProperty
stOffset =
    StOffset


{-| A string literal used for functions that can accept a string or an expression,
field or signal that generates a string.
-}
str : String -> Str
str =
    Str


{-| An expression that will be evaluated as a string value.
-}
strExpr : Expr -> Str
strExpr =
    StrExpr


{-| A list of potentially mixed string types. This can be useful, for example,
when representing a list of mixed string literals and signals.
-}
strList : List Str -> Str
strList =
    StrList


{-| Represents an absence of a string value.
-}
strNull : Str
strNull =
    StrNull


{-| A list of string literals used for functions that can accept literals or signal.
-}
strs : List String -> Str
strs =
    Strs


{-| A signal that will provide a string value.
-}
strSignal : String -> Str
strSignal =
    StrSignal


{-| A list of signals that will provide string values.
-}
strSignals : List String -> Str
strSignals =
    StrSignals


{-| Type of stroke cap.
-}
type StrokeCap
    = CButt
    | CRound
    | CSquare
    | StrokeCapSignal String


{-| Specify a type of stroke cap with a given signal. Valid values generated by
the signal are the strings `butt`, `round` and `square`.
-}
strokeCapSignal : String -> StrokeCap
strokeCapSignal =
    StrokeCapSignal


{-| A convenience function for generating a value representing a given
stroke cap type.

    signal "strokeCap" [ siValue (strokeCapValue CRound) ]

-}
strokeCapValue : StrokeCap -> Value
strokeCapValue cap =
    case cap of
        CButt ->
            vStr "butt"

        CRound ->
            vStr "round"

        CSquare ->
            vStr "square"

        StrokeCapSignal sig ->
            vSignal sig


{-| Type of stroke join.
-}
type StrokeJoin
    = JMiter
    | JRound
    | JBevel
    | StrokeJoinSignal String


{-| Specify a type of stroke join with a given signal. Valid values generated by
the signal are the strings `miter`, `round` and `bevel`.
-}
strokeJoinSignal : String -> StrokeJoin
strokeJoinSignal =
    StrokeJoinSignal


{-| A convenience function for generating a text string representing a given
stroke join type. This can be used instead of specifying an stroke join type
as a literal string to avoid problems of mistyping its name.

    signal "strokeJoin" [ siValue (strokeJoinValue JBevel) ]

-}
strokeJoinValue : StrokeJoin -> Value
strokeJoinValue jn =
    case jn of
        JMiter ->
            vStr "miter"

        JRound ->
            vStr "round"

        JBevel ->
            vStr "bevel"

        StrokeJoinSignal sig ->
            vSignal sig


{-| Specify the criteria for sorting values in a stack transform.

    transform
        [ trStack
            [ stGroupBy [ field "x" ]
            , stSort [ ( field "c", Ascend ) ]
            , stField (field "y")
            ]
        ]

For details see the
[Vega stack transform documentation](https://vega.github.io/vega/docs/transforms/stack/)

-}
stSort : List ( Field, Order ) -> StackProperty
stSort =
    StSort


{-| Identifies a type of symbol.
-}
type Symbol
    = SymCircle
    | SymSquare
    | SymCross
    | SymDiamond
    | SymTriangleUp
    | SymTriangleDown
    | SymTriangleLeft
    | SymTriangleRight
    | SymPath String
    | SymbolSignal String


{-| Specify a type of symbol from a signal with the given name. Valid values
generated by the signal are the strings `circle`, `square`, `cross` etc.
-}
symbolSignal : String -> Symbol
symbolSignal =
    SymbolSignal


{-| A convenience function for generating a value representing a given symbol type.

    maShape [ symbolValue SymTriangleDown ]

-}
symbolValue : Symbol -> Value
symbolValue sym =
    vStr (symbolLabel sym)


{-| Specify a custom symbol shape as an
[SVG path description](https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Paths).
-}
symPath : String -> Symbol
symPath =
    SymPath


{-| Specify the output field names within which to write the results of a tree
layout transform. The parameters represent the names to replace the defaults in
the following order: `x`, `y`, `depth` and `children`. For details see the
[Vega tree transform documentation](https://vega.github.io/vega/docs/transforms/tree/).
-}
teAs : String -> String -> String -> String -> TreeProperty
teAs =
    TeAs


{-| Specify the data corresponding to a numeric value to be associated with nodes
in a tree transform. For details see the
[Vega tree transform documentation](https://vega.github.io/vega/docs/transforms/tree/).
-}
teField : Field -> TreeProperty
teField =
    TeField


{-| Specify layout method used in a tree transform. For details see the
[Vega tree transform documentation](https://vega.github.io/vega/docs/transforms/tree/).
-}
teMethod : TreeMethod -> TreeProperty
teMethod =
    TeMethod


{-| Specify the size of each node in a tree layout as a two-element [width,height]
list (or a signal that generates such a list). For details see the
[Vega tree transform documentation](https://vega.github.io/vega/docs/transforms/tree/).
-}
teNodeSize : Num -> TreeProperty
teNodeSize =
    TeNodeSize


{-| Specify the size of of a tree layout as a two-element [width,height] list
(or a signal that generates such a list). For details see the
[Vega tree transform documentation](https://vega.github.io/vega/docs/transforms/tree/).
-}
teSize : Num -> TreeProperty
teSize =
    TeSize


{-| Specify how sorting of sibling nodes is performed as part of a tree layout
transform. For details see the
[Vega tree transform documentation](https://vega.github.io/vega/docs/transforms/tree/).
-}
teSort : List ( Field, Order ) -> TreeProperty
teSort =
    TeSort


{-| Direction text is rendered. This determines which end of a text string is
truncated if it cannot be displayed within a restricted space.
-}
type TextDirection
    = LeftToRight
    | RightToLeft
    | TextDirectionSignal String


{-| Specify a text direction rendering with a given signal. Valid values generated
by the signal are the strings `ltr` and `rtl` .
-}
textDirectionSignal : String -> TextDirection
textDirectionSignal =
    TextDirectionSignal


{-| Create a text direction value. This can be used with [maDir](#maDir).
-}
textDirectionValue : TextDirection -> Value
textDirectionValue dir =
    case dir of
        LeftToRight ->
            vStr "ltr"

        RightToLeft ->
            vStr "rtl"

        TextDirectionSignal sig ->
            vSignal sig


{-| Specify an expression that evaluates to data objects to insert as triggers.
A trigger enables dynamic updates to a visualization. Insert operations are only
applicable to data sets, not marks. For details see the
[Vega trigger documentation](https://vega.github.io/vega/docs/triggers/)
-}
tgInsert : String -> TriggerProperty
tgInsert =
    TgInsert


{-| Specify a data or mark modification trigger. The first parameter is an
expression that evaluates to data objects to modify and the second parameter an
expression that evaluates to an object of name-value pairs, indicating the field
values that should be updated. For example:

    mark Symbol
        [ mFrom [ srData (str "countries") ]
        , mOn
            [ trigger "myDragSignal"
                [ tgModifyValues "dragged" "{fx: x(), fy: y()}" ]
            ]

would set the `fx` and `fy` properties on mark items referenced by `myDragSignal`
to the current mouse pointer position.

Modify operations are applicable to both datasets and marks. For details see the
[Vega trigger documentation](https://vega.github.io/vega/docs/triggers/)

-}
tgModifyValues : String -> String -> TriggerProperty
tgModifyValues =
    TgModifyValues


{-| Specify an expression that evaluates to data objects to remove.
A trigger enables dynamic updates to a visualization. Remove operations are only
applicable to data sets, not marks. For details see the
[Vega trigger documentation](https://vega.github.io/vega/docs/triggers/)
-}
tgRemove : String -> TriggerProperty
tgRemove =
    TgRemove


{-| Remove all data objects. A trigger enables dynamic updates to a visualization.
For details see the
[Vega trigger documentation](https://vega.github.io/vega/docs/triggers/)
-}
tgRemoveAll : TriggerProperty
tgRemoveAll =
    TgRemoveAll


{-| Specify an expression that evaluates to data objects to toggle. Toggled
objects are inserted or removed depending on whether they are already in the
data set. Toggle operations are only applicable to data sets, not marks. For
details see the
[Vega trigger documentation](https://vega.github.io/vega/docs/triggers/)
-}
tgToggle : String -> TriggerProperty
tgToggle =
    TgToggle


{-| Specify the anchor positioning of a title. Used for aligning title text. For
details see the [Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiAnchor : Anchor -> TitleProperty
tiAnchor =
    TAnchor


{-| Specify the angle in degrees of a title. For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiAngle : Num -> TitleProperty
tiAngle =
    TAngle


{-| Specify the vertical title text baseline. For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiBaseline : VAlign -> TitleProperty
tiBaseline =
    TBaseline


{-| Specify the color of a title. For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiColor : Str -> TitleProperty
tiColor =
    TColor


{-| Specify optional mark encodings for custom title styling. This is a standard
encoding for text marks and may contain `enEnter`, `enUpdate`, `enExit` and
`enHover` specifications. For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiEncode : List EncodingProperty -> TitleProperty
tiEncode =
    TEncode


{-| Specify the font name of a title. For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiFont : Str -> TitleProperty
tiFont =
    TFont


{-| Specify the font size of a title. For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiFontSize : Num -> TitleProperty
tiFontSize =
    TFontSize


{-| Specify the font weight of a title (can be a number such as `vnum 300` or text
such as `vStr "bold"`). For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiFontWeight : Value -> TitleProperty
tiFontWeight =
    TFontWeight


{-| Specify the reference frame for the anchor position of a title. For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiFrame : TitleFrame -> TitleProperty
tiFrame =
    TFrame


{-| Specify whether or not a title's properties should respond to input events
such as mouse hover. For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiInteractive : Boo -> TitleProperty
tiInteractive =
    TInteractive


{-| Specify the maximim allowed length of a title in pixels. For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiLimit : Num -> TitleProperty
tiLimit =
    TLimit


{-| Describes a unit of time. Useful for encoding and transformations. For
details see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#quantitative).
-}
type TimeUnit
    = Year
    | Month
    | Week
    | Day
    | Hour
    | Minute
    | Second
    | Millisecond
    | TimeUnitSignal String


{-| Specify a time unit with a given signal. For valid values generated by
the signal (`year`, `hour`, `second` etc), see the
[Vega scale documentation](https://vega.github.io/vega/docs/scales/#quantitative).
-}
timeUnitSignal : String -> TimeUnit
timeUnitSignal =
    TimeUnitSignal


{-| Specify a mark name to apply to a title text mark. This name can be used to
refer to the title mark with an
[event stream definition](https://vega.github.io/vega/docs/event-streams/). For
details see the [Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiName : String -> TitleProperty
tiName =
    TName


{-| Specify the orthogonal offset in pixels by which to displace the title from
its position along the edge of the chart. For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiOffset : Num -> TitleProperty
tiOffset =
    TOffset


{-| Specify the positioning of a title relative to the chart. For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiOrient : Side -> TitleProperty
tiOrient =
    TOrient


{-| Specify a mark style property to apply to the title text mark. If not
specified the default style of `group-title` is used. For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiStyle : Str -> TitleProperty
tiStyle =
    TStyle


{-| Specify the top-level title to be displayed as part of a visualization.
The first paramter is the text of the title to display, the second any optional
properties for customising the title's appearance. For details, see the
[Vega title documentation](https://vega.github.io/vega/docs/title/)
-}
title : Str -> List TitleProperty -> ( VProperty, Spec )
title s tps =
    ( VTitle, JE.object (List.map titleProperty (TText s :: tps)) )


{-| Indicates the wey a title anchor position is calculated. `FrBounds` implies
text anchor is relative to the full bounding box whereas `FrGroup` implies it is
relative to the group width/height.
-}
type TitleFrame
    = FrBounds
    | FrGroup
    | TitleFrameSignal String


{-| Specify a title anchor positioning rule with a given signal. Valid values
generated by the signal should be either `bounds` or `group`.
-}
titleFrameSignal : String -> TitleFrame
titleFrameSignal =
    TitleFrameSignal


{-| Specify a z-index indicating the layering of the title group relative to
other axis, mark and legend groups. For details see the
[Vega title documentation](https://vega.github.io/vega/docs/title/).
-}
tiZIndex : Num -> TitleProperty
tiZIndex =
    TZIndex


{-| Specify the output field names for the output of a treemap layout transform.
The parameters correspond to the (default name) fields `x0`, `y0`, `x1`, `y1`,
`depth` and `children`. For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmAs : String -> String -> String -> String -> String -> String -> TreemapProperty
tmAs =
    TmAs


{-| Specify the data field corresponding to a numeric value for a treemap node.
The sum of values for a node and all its descendants is available on the node object
as the `value` property. This field determines the size of a node. For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmField : Field -> TreemapProperty
tmField =
    TmField


{-| Specify the layout method to use in a treemap transform. For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmMethod : TreemapMethod -> TreemapProperty
tmMethod =
    TmMethod


{-| Specify the inner and outer padding values for a treemap layout transform. For details see
the [Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmPadding : Num -> TreemapProperty
tmPadding =
    TmPadding


{-| Specify the padding between the bottom edge of a node and its children in a treemap
layout transform. For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmPaddingBottom : Num -> TreemapProperty
tmPaddingBottom =
    TmPaddingBottom


{-| Specify the inner padding values for a treemap layout transform. For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmPaddingInner : Num -> TreemapProperty
tmPaddingInner =
    TmPaddingInner


{-| Specify the padding between the left edge of a node and its children in a treemap
layout transform. For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmPaddingLeft : Num -> TreemapProperty
tmPaddingLeft =
    TmPaddingLeft


{-| Specify the outer padding values for a treemap layout transform. For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmPaddingOuter : Num -> TreemapProperty
tmPaddingOuter =
    TmPaddingOuter


{-| Specify the padding between the right edge of a node and its children in a treemap
layout transform. For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmPaddingRight : Num -> TreemapProperty
tmPaddingRight =
    TmPaddingRight


{-| Specify the padding between the top edge of a node and its children in a treemap
layout transform. For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmPaddingTop : Num -> TreemapProperty
tmPaddingTop =
    TmPaddingTop


{-| Specify the target aspect ratio for the `Squarify` or `Resquarify` treemap layout
trqnsformations. The default is the golden ratio, φ = (1 + sqrt(5)) / 2. For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmRatio : Num -> TreemapProperty
tmRatio =
    TmRatio


{-| Specify whether or not node layout values should be rounded in a treemap transform.
The default is false. For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmRound : Boo -> TreemapProperty
tmRound =
    TmRound


{-| Specify the size of a treemap layout as two-element list (or signal) corresponding
to [width, height]. For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmSize : Num -> TreemapProperty
tmSize =
    TmSize


{-| Specify how sorting of sibling nodes is performed during a treemap layout
transform. For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).
-}
tmSort : List ( Field, Order ) -> TreemapProperty
tmSort =
    TmSort


{-| Indicates a topoJSON feature format. The first parameter should be the name
of the object set to extract. Typically used when specifying a data URL.
-}
topojsonFeature : String -> FormatProperty
topojsonFeature =
    TopojsonFeature


{-| Indicates a topoJSON mesh format. The first parameter should be the name
of the object set to extract. Unlike the `topojsonFeature`, the corresponding
geo data are returned as a single, unified mesh instance, not as individual
GeoJSON features. Typically used when specifying a data URL.
-}
topojsonMesh : String -> FormatProperty
topojsonMesh =
    TopojsonMesh


{-| Convert a list of Vega specifications into a single JSON object that may be
passed to Vega for graphics generation. Recommended practice for top-level
properties that have more than a simple parameter is to create as a series of
compactly named functions (e.g. `ds` for the data source, `sc` for scales, `si`
for signals, `ax` for axes, `mk` for marks etc.) and then pass them as a list to
the function `toVega`. For example,

    helloWorld : Spec
    helloWorld =
        let
            table =
                dataFromColumns "table" []
                    << dataColumn "label" (vStrs [ "Hello", "from", "elm-vega" ])
                    << dataColumn "x" (vNums [ 1, 2, 3 ])

            ds =
                dataSource [ table [] ]

            sc =
                scales
                    << scale "xScale"
                        [ scDomain (doData [ daDataset "table", daField (field "x") ])
                        , scRange RaWidth
                        ]

            mk =
                marks
                    << mark Text
                        [ mFrom [ srData (str "table") ]
                        , mEncode
                            [ enEnter
                                [ maX [ vScale "xScale", vField (field "x") ]
                                , maText [ vField (field "label") ]
                                ]
                            ]
                        ]
        in
        toVega
            [ width 100, ds, sc [], mk [] ]

-}
toVega : List ( VProperty, Spec ) -> Spec
toVega spec =
    ( "$schema", JE.string "https://vega.github.io/schema/vega/v4.0.json" )
        :: List.map (\( s, v ) -> ( vPropertyLabel s, v )) spec
        |> JE.object


{-| Specify an aggregation transform to group and summarize an input data stream
to produce a derived output stream. Aggregate transforms can be used to compute
counts, sums, averages and other descriptive statistics over groups of data objects.
For details see the
[Vega aggregation documentation](https://vega.github.io/vega/docs/transforms/aggregate/).
-}
trAggregate : List AggregateProperty -> Transform
trAggregate =
    TAggregate


{-| Applies the given ordered list of transforms to the given data stream. Transform
examples include filtering, creating new data fields from expressions and creating
new data fields suitable for a range of visualization and layout types. For details
see the [Vega transform documentation](https://vega.github.io/vega/docs/transforms).

    dataSource
        [ data "pop" [ daUrl "data/population.json" ]
        , data "popYear" [ daSource "pop" ]
            |> transform [ trFilter (expr "datum.year == year") ]
        , data "ageGroups" [ daSource "pop" ]
            |> transform [ trAggregate [ agGroupBy [ field "age" ] ] ]
        ]

-}
transform : List Transform -> DataTable -> DataTable
transform transforms dTable =
    dTable ++ [ ( "transform", JE.list (List.map transformSpec transforms) ) ]


{-| Convenience function for specifying a transparent setting for marks that can
be colored (e.g. with [maFill](#maFill))
-}
transparent : Value
transparent =
    vStr "transparent"


{-| Perform a binning transform that discretises numeric values into a set of bins.
The first parameter is the field to bin, the second a two-element numeric list
representing the min/max extent of the bins. Optional binning properties can be
provided in the final parameter. Commonly used to create frequency histograms by
combining with [trAggregate](#trAggregate) to do the counting of field values in
each bin.

    transform
        [ trBin (field "examScore") (nums [ 0, 100 ]) []
        , trAggregate
            [ agKey (field "bin0")
            , agGroupBy [ field "bin0", field "bin1" ]
            , agOps [ Count ]
            , agAs [ "count" ]
            ]
        ]

For details see the
[Vega bin transform documentation](https://vega.github.io/vega/docs/transforms/bin/).

-}
trBin : Field -> Num -> List BinProperty -> Transform
trBin =
    TBin


{-| Perform a collect transform that collects all the objects in a data stream
within a single list, allowing sorting by data field values. For details see the
[Vega collect transform documentation](https://vega.github.io/vega/docs/transforms/collect/).
-}
trCollect : List ( Field, Order ) -> Transform
trCollect =
    TCollect


{-| Perform a contour transform that generates a set of contour (iso) lines at a set
of discrete levels. Commonly used to visualize density estimates for 2D point data.

The first two parameters are the width and height over which to compute the contours.
The third a list of optional contour properties. The transform generates a new
stream of GeoJSON data as output which may be visualized using either the
`trGeoShape` or `trGeoPath` transforms.

    transform
        [ trContour (numSignal "width")
            (numSignal "height")
            [ cnX (fExpr "scale('xScale', datum.Horsepower)")
            , cnY (fExpr "scale('yScale', datum.Miles_per_Gallon)")
            , cnCount (numSignal "count")
            ]
        ]

For details see the
[Vega contour transform documentation](https://vega.github.io/vega/docs/transforms/contour/).

-}
trContour : Num -> Num -> List ContourProperty -> Transform
trContour =
    TContour


{-| Perform a count pattern transform that counts the number of occurrences of a
text pattern, as defined by a regular expression. This transform will iterate
through each data object and count all unique pattern matches found within the
designated text field.

The first parameter is the field containing the text to count, the second a list
of optional counting properties. The transform generates two fields named `text`
and `count` unless renamed via `cpAs`.

    transform
        [ trCountPattern (field "data")
            [ cpCase Uppercase
            , cpPattern (str "[\\w']{3,}")
            , cpStopwords (str "(i|me|my|myself)")
            ]
        ]

For details see the
[Vega count pattern transform documentation](https://vega.github.io/vega/docs/transforms/countpattern/).

-}
trCountPattern : Field -> List CountPatternProperty -> Transform
trCountPattern =
    TCountPattern


{-| Perform a cross transform that computes the cross-product of a data stream
with itself. For details see the
[Vega filter transform documentation](https://vega.github.io/vega/docs/transforms/filter/).
-}
trCross : List CrossProperty -> Transform
trCross =
    TCross


{-| Perform a crossfilter transform which maintains a filter mask for multiple
dimensional queries, using a set of sorted indices. The parameter is a list of
(field,range) pairs indicating which fields to filter and the numeric range of
values in the form of a `num` that resolves to a [min (inclusive), max (exclusive)]
pair. For details see the
[Vega crossfilter transform documentation](https://vega.github.io/vega/docs/transforms/crossfilter/).
-}
trCrossFilter : List ( Field, Num ) -> Transform
trCrossFilter =
    TCrossFilter


{-| Perform a crossfilter transform which maintains a filter mask for multiple
dimensional queries, using a set of sorted indices. This version can be used in
conjunction with [trResolvefilter](#trResolveFilter) to enable fast interactive
querying over large data sets. The parameter is a list of (field,range) pairs indicating
which fields to filter and the numeric range of values in the form of a `num` that
resolves to a [min (inclusive), max (exclusive)] pair. The final parameter is the
name of a new signal with which to bind the results of the filter (which can then
be referenced by [trResolveFilter](#trResolveFilter)). For details see the
[Vega crossfilter transform documentation](https://vega.github.io/vega/docs/transforms/crossfilter/).
-}
trCrossFilterAsSignal : List ( Field, Num ) -> String -> Transform
trCrossFilterAsSignal =
    TCrossFilterAsSignal


{-| Compute ta new data stream of uniformly-spaced samples drawn from a one-dimensional
probability density function (pdf) or cumulative distribution function (cdf). This
transform is useful for representing probability distributions and generating
continuous distributions from discrete samples using kernel density estimation.
For details see the
[Vega density transform documentation](https://vega.github.io/vega/docs/transforms/density/).
-}
trDensity : Distribution -> List DensityProperty -> Transform
trDensity =
    TDensity


{-| Represents a treemap layout method used in a treemap transform.
-}
type TreemapMethod
    = Squarify
    | Resquarify
    | Binary
    | Dice
    | Slice
    | SliceDice
    | TreemapMethodSignal String


{-| Indicates a treemap layout method type is to be determined by a named signal.
The signal should generate the one of `squarify`, `resquarify`, `binary`, `dice`,
`slice` or `slicedice`.
-}
treemapMethodSignal : String -> TreemapMethod
treemapMethodSignal =
    TreemapMethodSignal


{-| Represents a tree layout method used in a tree transform.
-}
type TreeMethod
    = Tidy
    | Cluster
    | TreeMethodSignal String


{-| Indicates a tree layout method type is to be determined by a named signal.
The signal should generate either `tidy` or `cluster`.
-}
treeMethodSignal : String -> TreeMethod
treeMethodSignal =
    TreeMethodSignal


{-| Compute the minimum and maximum values for a data field, producing a two-element
[min, max] list. This transform does not change the input data stream. For details see the
[Vega extent transform documentation](https://vega.github.io/vega/docs/transforms/extent/).
-}
trExtent : Field -> Transform
trExtent =
    TExtent


{-| Compute the minimum and maximum values for a given data field and bind it to a
signal with the given name. This transform does not change the input data stream but
the signal can be used, for example, as a parameter for a bin transform. For details
see the
[Vega extent transform documentation](https://vega.github.io/vega/docs/transforms/extent/)
-}
trExtentAsSignal : Field -> String -> Transform
trExtentAsSignal =
    TExtentAsSignal


{-| Perform a filter transform that removes objects from a data stream based on
the given filter expression. For details see the
[Vega filter transform documentation](https://vega.github.io/vega/docs/transforms/filter/).
-}
trFilter : Expr -> Transform
trFilter =
    TFilter


{-| Perform a flattening transform that maps list-valued fields to a set of
individual data objects, one per list entry. This version generates the output
fields with names corresponding to the list field used. To customise the names
of these fields use [trFlattenAs](#trFlattenAs). For details see the
[Vega fold transform documentation](https://vega.github.io/vega/docs/transforms/fold/).
-}
trFlatten : List Field -> Transform
trFlatten =
    TFlatten


{-| Perform a flattening transform that maps list-valued fields to a set of
individual data objects, one per list entry. This version names the output fields
according to the names provided in the second parameter.
For details see the
[Vega fold flatten documentation](https://vega.github.io/vega/docs/transforms/flatten/).
-}
trFlattenAs : List Field -> List String -> Transform
trFlattenAs =
    TFlattenAs


{-| Perform a fold transform that collapses (or “folds”) one or more data fields
into two properties: a _key_ containing the original data field name and a _value_
containing the data value. This version generates the two output fields with names
`key` and `value`. To customise the names of these fields use [trFoldAs](#trFoldAs).
For details see the
[Vega fold transform documentation](https://vega.github.io/vega/docs/transforms/fold/).
-}
trFold : List Field -> Transform
trFold =
    TFold


{-| Perform a fold transform that collapses (or “folds”) one or more data fields
into two properties: a _key_ containing the original data field name and a _value_
containing the data value. This version names the key and value fields based on
the second and third parameters. For details see the
[Vega fold transform documentation](https://vega.github.io/vega/docs/transforms/fold/).
-}
trFoldAs : List Field -> String -> String -> Transform
trFoldAs =
    TFoldAs


{-| Compute a force-directed layout. This layout transformation uses a model in
which data objects act as charged particles (or nodes), optionally connected by
a set of edges (or links). A set of forces is used to drive a physics simulation
that determines the node positions.
For details see the
[Vega force transform documentation](https://vega.github.io/vega/docs/transforms/force/).
-}
trForce : List ForceSimulationProperty -> Transform
trForce =
    TForce


{-| Extend a data object with new values according to the given
[Vega expression](https://vega.github.io/vega/docs/expressions/). The second
parameter is a new field name to give the result of the evaluated expression.
This version will reapply the formula if the data changes. To perform a one-off
formula calculation use [trFormulaInitOnly](#trFormulaInitOnly).

    dataSource
        [ data "world"
            [ daUrl "https://vega.github.io/vega/data/world-110m.json"
            , daFormat [ topojsonFeature "countries" ]
            ]
            |> transform
                [ trFormula "geoCentroid('myProj', datum)" "myCentroid" ]
        ]

For details see the
[Vega formula transform documentation](https://vega.github.io/vega/docs/transforms/formula).

-}
trFormula : String -> String -> Transform
trFormula exp fName =
    TFormula exp fName AlwaysUpdate


{-| Extend a data object with new values according to the given
[Vega expression](https://vega.github.io/vega/docs/expressions/). The second
parameter is a new field name to give the result of the evaluated expression.
This version will apply the formula only once even if the data changes.

For details see the
[Vega formula transform documentation](https://vega.github.io/vega/docs/transforms/formula).

-}
trFormulaInitOnly : String -> String -> Transform
trFormulaInitOnly exp fName =
    TFormula exp fName InitOnly


{-| Perform a geoJSON transform that consolidates geographic data into a single
feature collection. This can be captured as a signal that will represent the
consolidated feature collection. For details see the
[Vega geoJSON documentation](https://vega.github.io/vega/docs/transforms/geojson/).
-}
trGeoJson : List GeoJsonProperty -> Transform
trGeoJson =
    TGeoJson


{-| Perform a geopath transform that maps GeoJSON features to SVG path strings
according to a provided cartographic projection. It is intended for use with the
path mark type. This transform is similar in functionality to the geoshape transform,
but immediately generates SVG path strings, rather than producing a shape instance
that delays projection until the rendering stage. The geoshape transform may have
better performance for the case of canvas-rendered dynamic maps.

    mark Shape
        [ mFrom [ srData (str "countries") ]
        , mEncode [ enUpdate [ maFill [vStr "blue" ] ] ]
        , mTransform [ trGeoPath "myProjection" [] ]
        ]

For details see the
[Vega geopath documentation](https://vega.github.io/vega/docs/transforms/geopath/).

-}
trGeoPath : String -> List GeoPathProperty -> Transform
trGeoPath =
    TGeoPath


{-| Perform a geoPoint transform that projects a longitude, latitude pair to
(x,y) coordinates according to the given map projection. The first parameter is
the name of the map projection to use, the second and third the fields containing
the longitude and latitude values respectively. This version generates
two new fields with the name `x` and `y` holding the projected coordinates.

     transform
         [ trGeoPoint "myProj" (field "longitude") (field "latitude") ]

For details see the
[Vega geoPoint documentation](https://vega.github.io/vega/docs/transforms/geopoint/).

-}
trGeoPoint : String -> Field -> Field -> Transform
trGeoPoint =
    TGeoPoint


{-| Perform a geoPoint transform that projects a longitude, latitude pair to
(x,y) coordinates according to the given map projection. The first parameter is
the name of the map projection to use, the second and third the fields containing
the longitude and latitude values respectively. This version generates
two new fields holding the projected coordinates with the names given by the last
two parameters.

    transform
        [ trGeoPointAs "myProj" (field "longitude") (field "latitude") "lng" "lat" ]

For details see the
[Vega geoPoint documentation](https://vega.github.io/vega/docs/transforms/geopoint/).

-}
trGeoPointAs : String -> Field -> Field -> String -> String -> Transform
trGeoPointAs =
    TGeoPointAs


{-| Perform a geoShape transform generating a renderer instance that maps GeoJSON
features to a shape instance that issues drawing commands. It is intended for use
solely with the shape mark type. This transform is similar in functionality to the
geopath transform, but rather than generate intermediate SVG path strings, this
transform produces a shape instance that directly generates drawing commands during
rendering. This transform can result in improved performance when using canvas
rendering for dynamic maps.

    mark Shape
        [ mFrom [ srData (str "countries") ]
        , mEncode [ enUpdate [ maFill [vStr "blue" ] ] ]
        , mTransform [ trGeoShape "myProjection" [] ]
        ]

For details see the
[Vega geoshape documentation](https://vega.github.io/vega/docs/transforms/geoshape/).

-}
trGeoShape : String -> List GeoPathProperty -> Transform
trGeoShape =
    TGeoShape


{-| Perform a graticule transform that generates a reference grid for cartographic
maps. A graticule is a uniform grid of meridians and parallels. The default graticule
has meridians and parallels every 10° between ±80° latitude; for the polar regions,
there are meridians every 90°.

This transform generates a new data stream containing a single GeoJSON data object
for the graticule, which can subsequently be drawn using the geopath or geoshape
transform. For details see the
[Vega graticule transform documentation](https://vega.github.io/vega/docs/transforms/graticule/).

-}
trGraticule : List GraticuleProperty -> Transform
trGraticule =
    TGraticule


{-| Extend a data object with a globally unique key value. Identifier values are
assigned using an internal counter. This counter is shared across all instances
of this transform within a single Vega view, including different data sources,
but not across different Vega views.

    transform [ trIdentifier "id" ]

For details see the
[Vega identifier transform documentation](https://vega.github.io/vega/docs/transforms/identifier/).

-}
trIdentifier : String -> Transform
trIdentifier =
    TIdentifier


{-| Creates a trigger that may be applied to a data table or mark.
The first parameter is the name of the trigger and the second
a list of trigger actions.
-}
trigger : String -> List TriggerProperty -> Trigger
trigger trName trProps =
    JE.object (List.concatMap triggerProperties (TgTrigger trName :: trProps))


{-| Perform an impute transform which generates new values for missing data.
The first parameter is the data field for which missing values should be imputed.
The second parameter a key field that uniquely identifies the data objects within
a group and so allows missing values to be identified. The third parameter is a
list of optional properties for customising the imputation.

For details see the
[Vega impute transform documentation](https://vega.github.io/vega/docs/transforms/impute/).

-}
trImpute : Field -> Field -> List ImputeProperty -> Transform
trImpute =
    TImpute


{-| Specify an join aggregation transform to group and summarize an input data stream
in a similar way to [trAggregate](#trAggregate) but which is then joined back to
the input stream. This can be helpful for creating derived values that combine both
raw data and aggregate calculations, such as percentages of group totals. For details see the
[Vega join aggregation documentation](https://vega.github.io/vega/docs/transforms/joinaggregate/).
-}
trJoinAggregate : List JoinAggregateProperty -> Transform
trJoinAggregate =
    TJoinAggregate


{-| Perform a linkpath transform used to route a visual link between two nodes.
The most common use case is to draw edges in a tree or network layout. By default
links are simply straight lines between source and target nodes; however, with
additional shape and orientation information, a variety of link paths can be
expressed. This transform writes one property to each datum, providing an SVG path
string for the link path.

    transform [ trLinkPath [ lpOrient Horizontal, lpShape LinkCurve ] ]

For details see the
[Vega link path transform documentation](https://vega.github.io/vega/docs/transforms/linkpath/).

-}
trLinkPath : List LinkPathProperty -> Transform
trLinkPath =
    TLinkPath


{-| Perform a lookup transform that extends a primary data stream by looking up
values on a secondary data stream. The first parameter is the name of the secondary
data stream upon which to perform the lookup. The second parameter is the key field
in that secondary stream. The third is the set of key fields from the primary data
stream, each of which are then searched for in a single key field of
the secondary data stream. Optional customisation can be provided as a list of
properties in the final parameter. For details see the
[Vega lookup transform documentation](https://vega.github.io/vega/docs/transforms/lookup/).
-}
trLookup : String -> Field -> List Field -> List LookupProperty -> Transform
trLookup =
    TLookup


{-| Perform a nesting transform that generates a tree data structure from input
data objects by dividing children into groups based on distinct field values. This
can provide input to tree layout methods such as [trTree](#trTree), [trTreemap](#trTreemap),
[trPack](#trPack) and [trPartition](#trPartition). For details see the
[Vega nest transform documentation](https://vega.github.io/vega/docs/transforms/nest/).
-}
trNest : List Field -> Boo -> Transform
trNest =
    TNest


{-| Perform a pack transform on some data to computes an enclosure diagram that
uses containment (nesting) to represent a hierarchy. The size of the leaf circles
encodes a quantitative dimension of the data. The enclosing circles show the
approximate cumulative size of each subtree, but due to wasted space there is some
distortion; only the leaf nodes can be compared accurately.

    transform
        [ trPack
            [ paField (field "size")
            , paSort [ ( field "value", Ascend ) ]
            , paSize (numSignals [ "width", "height" ])
            ]
        ]

For details see the
[Vega pack transform documentation](https://vega.github.io/vega/docs/transforms/pack/).

-}
trPack : List PackProperty -> Transform
trPack =
    TPack


{-| Perform a partition transform that computes the layout for an adjacency diagram:
a space-filling variant of a node-link tree diagram. Rather than drawing a link
between parent and child in the hierarchy, nodes are drawn as solid areas (either
arcs or rectangles), and their placement relative to other nodes reveals their
position in the hierarchy. The size of the nodes encodes a quantitative dimension
that might be difficult to convey in a node-link diagram.

    transform
        [ trPartition
            [ ptField (field "size")
            , ptSort [ ( field "value", Ascend ) ]
            , ptSize (numSignals [ "2 * PI", "width / 2" ])
            , ptAs "a0" "r0" "a1" "r1" "depth" "children"
            ]
        ]

For details see the
[Vega partition transform documentation](https://vega.github.io/vega/docs/transforms/partition/).

-}
trPartition : List PartitionProperty -> Transform
trPartition =
    TPartition


{-| Perform a pie transform that calculates the angular extents of arc segments
laid out in a circle. The most common use case is to create pie charts and donut
charts. This transform writes two properties to each datum, indicating the starting
and ending angles (in radians) of an arc. For details see the
[Vega pie transform documentation](https://vega.github.io/vega/docs/transforms/pie/).
-}
trPie : List PieProperty -> Transform
trPie =
    TPie


{-| Perform a pivot transform that maps unique values from a field to new aggregated
fields in the output stream. The first parameter is the field to pivot on (the one
that will provide new field names). The second is the field containing values to
aggregate in order to populate new values. The third parameter allows the transform
to be customised. For details see the
[Vega pivot transform documentation](https://vega.github.io/vega/docs/transforms/pivot/).
-}
trPivot : Field -> Field -> List PivotProperty -> Transform
trPivot =
    TPivot


{-| Perform a relational algebra projection transform. This results in a new stream
of derived data objects that include one or more fields from the input stream.
The parameter is a list of field-name pairs where the fields are those fields to
be copied over in the projection and the names are the new names to give the projected
fields. For details see the
[Vega project transform documentation](https://vega.github.io/vega/docs/transforms/project/).
-}
trProject : List ( Field, String ) -> Transform
trProject =
    TProject


{-| Perform a resolvefilter transform that uses the filter mask generated by a
crossfilter transform to efficiently generate filtered data streams. The first
prarameter is the signal created by [trCrossFilterAsSignal](#trCrossFilterAsSignal)
and the second a bit mask indicating which fields in the crossfilter should be
ignored. Each bit corresponds to a field and query in the crossfilter transform’s
fields and query lists. If the corresponding bit is on, that field and query will
be ignored when resolving the filter. All other queries must pass the filter for
a tuple to be included down stream.

    transform  [ trResolveFilter "myFilter" 4 ]

A single crossfilter instance can be used to support cross-filtering over multiple
charts; the filtered data streams for each individual chart are generated by using
one resolvefilter transform per chart. For details see the
[Vega crossfilter transform documentation](https://vega.github.io/vega/docs/transforms/crossfilter/).

-}
trResolveFilter : String -> Num -> Transform
trResolveFilter =
    TResolveFilter


{-| Generate a random sample from a data stream to generate a smaller stream. The
parameter determines the maximum number of data items to sample. For details see the
[Vega sample transform documentation](https://vega.github.io/vega/docs/transforms/sample/).
-}
trSample : Num -> Transform
trSample =
    TSample


{-| Generate a data stream of numbers between a start (first parameter) and end
(second parameter) inclusive in increments specified by the third parameter. If
the end value is less than the start value, the third parameter should be negative.

This can be used to feed other transforms to generate data, for example to create
random (x,y) coordinates:

    dataSource
        [ data "randomData" []
            |> transform
                [ trSequence (num 1) (num 1000) (num 1)
                , trFormula "random()" "x"
                , trFormula "random()" "y"
                ]
        ]

For details see the
[Vega sequence transform documentation](https://vega.github.io/vega/docs/transforms/sequence/).

-}
trSequence : Num -> Num -> Num -> Transform
trSequence =
    TSequence


{-| Perform a stack transform that computes a layout by stacking groups of values.
The most common use case is to create stacked graphs, including stacked bar charts
and stream graphs. This transform writes two properties to each datum, indicating
the starting and ending stack values. For details see the
[Vega stack transform documentation](https://vega.github.io/vega/docs/transforms/stack/).
-}
trStack : List StackProperty -> Transform
trStack =
    TStack


{-| Perform a stratify transform that generates a hierarchical (tree) data structure
from input data objects, based on key fields that match an id for each node (first
parameter) and their parent's key (second parameter) nodes. Internally, this transform
generates a set of tree node objects that can then be processed by tree layout methods
such as tree, treemap, pack, and partition. For details see the
[Vega stratify transform documentation](https://vega.github.io/vega/docs/transforms/stratify/).
-}
trStratify : Field -> Field -> Transform
trStratify =
    TStratify


{-| Perform a tree transform that computes a node-link diagram layout for hierarchical
data. It supports both cluster layouts (for example to create dendrograms) and tidy
layouts.

    transform
        [ trTree
            [ teMethod Cluster
            , teSize (numSignals [ "height", "width-100" ])
            , teAs "y" "x" "depth" "children"
            ]

For details see the
[Vega tree transform documentation](https://vega.github.io/vega/docs/transforms/tree/).

-}
trTree : List TreeProperty -> Transform
trTree =
    TTree


{-| Perform a treelinks transform that generates a new stream of data objects
representing links between nodes in a tree. This transform must occur downstream
of a tree-generating transform such as [trNest](#trNest) or [trStratify](#trStratify).
The generated link objects will have `source` and `target` fields that reference
input data objects corresponding to parent (source) and child (target) nodes.

    data "links" [ daSource "tree" ]
        |> transform
            [ trTreeLinks
            , trLinkPath
                [ lpOrient Horizontal
                , lpShape (linkShapeSignal "links")
                ]
            ]

For details see the
[Vega tree links transform documentation](https://vega.github.io/vega/docs/transforms/treelinks/).

-}
trTreeLinks : Transform
trTreeLinks =
    TTreeLinks


{-| Perform a treemap transform recursively that subdivides an area into rectangles
with areas proportional to each node’s associated value.

    transform
        [ trTreemap
            [ tmField (field "size")
            , tmSort [ ( field "value", Ascend ) ]
            , tmMethod Squarify
            , tmSize (numSignals [ "width", "height" ])
            ]
        ]

For details see the
[Vega treemap transform documentation](https://vega.github.io/vega/docs/transforms/treemap/).

-}
trTreemap : List TreemapProperty -> Transform
trTreemap =
    TTreemap


{-| A true value used for functions that can accept a Boolean literal or a
reference to something that generates a Boolean value (e.g. a signal).
-}
true : Boo
true =
    Boo True


{-| Perform a voronoi transform that computes a voronoi diagram for a set of input
points and returns the computed cell paths. The Voronoi cells can then be used to
identify the nearest point for a given value. For example, a Voronoi diagram can
be used to automatically select the data point closest to the mouse cursor.

    transform [ trVoronoi (field "x") (field "y") [] ]

For details see the
[Vega voronoi transform documentation](https://vega.github.io/vega/docs/transforms/voronoi/).

-}
trVoronoi : Field -> Field -> List VoronoiProperty -> Transform
trVoronoi =
    TVoronoi


{-| A window transform that performs calculations over sorted groups of data objects.
These calculations include ranking, lead/lag analysis and aggregates such as running
sums and averages. Calculated values are written back to the input data stream.

    transform
        [ trWindow [ wnOperation RowNumber "rank" ]
            [ wnSort [ ( field "myField", Descend ) ] ]
        ]

For details see the
[Vega window transform documentation](https://vega.github.io/vega/docs/transforms/window/).

-}
trWindow : List WindowOperation -> List WindowProperty -> Transform
trWindow =
    TWindow


{-| A window transform that performs calculations over sorted groups of data objects.
These calculations include ranking, lead/lag analysis and aggregates such as running
sums and averages. Calculated values are written back to the input data stream.

    mark Text
        [ mTransform
            [ trWordcloud
                [ wcSize (nums [ 800, 400 ])
                , wcText (field "text")
                , wcRotate (numExpr (exField "datum.angle"))
                , wcFontSize (numExpr (exField "datum.count"))
                , wcFontWeight (strExpr (exField "datum.weight"))
                , wcFontSizeRange (nums [ 12, 56 ])
                ]
            ]
        ]

For details see the
[Vega window transform documentation](https://vega.github.io/vega/docs/transforms/window/).

-}
trWordcloud : List WordcloudProperty -> Transform
trWordcloud =
    TWordcloud


{-| Indicates the vertical alignment of some text or an image mark. Note that the
`Alphabetic` type constructor applies only to text marks.
-}
type VAlign
    = AlignTop
    | AlignMiddle
    | AlignBottom
    | Alphabetic
    | VAlignSignal String


{-| Indicates the vertical alignment of some text based on the value of the
given signal.
-}
vAlignSignal : String -> VAlign
vAlignSignal =
    VAlignSignal


{-| Convenience function for indicating an alphabetic vertical alignment.
-}
vAlphabetic : Value
vAlphabetic =
    vStr "alphabetic"


{-| A value representing a band number or fraction of a band number. Band scales
are used when aggregating data into discrete categories such as in a frequency histogram.
-}
vBand : Num -> Value
vBand =
    VBand


{-| A list of Boolean values.
-}
vBoos : List Bool -> Value
vBoos =
    VBoos


{-| Convenience function for indicating a bottom vertical alignment.
-}
vBottom : Value
vBottom =
    vStr "bottom"


{-| A value representing a color.
-}
vColor : ColorValue -> Value
vColor =
    VColor


{-| A value representing an exponential value modifier.
-}
vExponent : Value -> Value
vExponent =
    VExponent


{-| A 'false' value.
-}
vFalse : Value
vFalse =
    VBoo False


{-| A value representing a field either by its name or indirectly via a signal,
parent etc.
-}
vField : Field -> Value
vField =
    VField


{-| Convenience function for indicating a middle vertical alignment.
-}
vMiddle : Value
vMiddle =
    vStr "middle"


{-| A value representing a multiplication value modifier.
-}
vMultiply : Value -> Value
vMultiply =
    VMultiply


{-| A representation of a null value
-}
vNull : Value
vNull =
    VNull


{-| A numeric value.
-}
vNum : Float -> Value
vNum =
    VNum


{-| A value representing a list of numbers.
-}
vNums : List Float -> Value
vNums =
    VNums


{-| Specify the name of the output field of a voronoi transform. If not specified,
the default is `path`. For details see the
[Vega voronoi transform documentation](https://vega.github.io/vega/docs/transforms/voronoi/).
-}
voAs : String -> VoronoiProperty
voAs =
    VoAs


{-| Represents an object containing a list of values.
-}
vObject : List Value -> Value
vObject =
    VObject


{-| Specify the extent of the voronoi cells in a voronoi transform. The two parameters
should each evaluate to a list of two numbers representing the coordinates of the
top-left and bottom-right of the extent respectively. For details see the
[Vega voronoi transform documentation](https://vega.github.io/vega/docs/transforms/voronoi/).
-}
voExtent : Num -> Num -> VoronoiProperty
voExtent =
    VoExtent


{-| A value representing an additive value modifier.
-}
vOffset : Value -> Value
vOffset =
    VOffset


{-| Specify extent of the voronoi cells in a voronoi transform. The single parameter
should evaluate to a list of two numbers representing the bottom-right of the extent.
The top-left is assumed to be [0,0]. For details see the
[Vega voronoi transform documentation](https://vega.github.io/vega/docs/transforms/voronoi/).
-}
voSize : Num -> VoronoiProperty
voSize =
    VoSize


{-| Top-level Vega specifications properties. These are generated by a series of
functions that fall into the following categories:

**Data properties** relate to the input data that are to be visualized. Generated
by [`dataSource`](#dataSource) that can collect together a range of data tables
such as those read from a URL or generated inline.

**Signal properties** are used to specify _signals_ – dynamic variables that can
respond reactively to other signals or interactions. Signals are widely used in
Vega specifications to support dynamic update of most properties. Generated by the
function [`signals`](#signals).

**Scale properties** are used to map data values to visual channels such as position,
size, color etc. They represent a fundamental building block of a data visualization
specification. Generated by the function [`scales`](#scales).

**Projection properties** are used to specify how geospatial data referenced with
longitude, latitude coordinates are projected onto a plane for visualization.
Generated by the function [`projections`](#projections).

**Axis properties** are used to specify how spatial scale mappings are visualized,
such as with tick marks, grid lines and labels. Generated by the function
[`axes`](#axes).

**Legend properties** are used to specify how visual scale mappings such as color,
shape and size are visualized. Generated by the function [`legends`](#legends).

**Title properties** are used to specify how visualization title should appear.
Generated by the function [`title`](#title).

** Layout properties** are used to specify how a group of visual marks may be
organised within a grid. This allows visualizations to be composed of collections
of other visualizations, for example in a dashboard or collection of small multiples.
Generated by the function [`layout`](#layout).

**Mark properties** specify how to visually encode data with graphical primitives
such as points, lines, rectangles and other symbols. Top-level marks are generated
by the function [`marks`](#marks).

**Top-level group encodings** can be used to specify the appearance of the chart's
data rectangle. For example setting the background color if the plotting area.
Generated by the function [`encode`](#encode).

**Config properties** specify default settings that will be applied to the specification.
This allows a consistent (and easily modifiable) set of styles to be applied to a
visualization. Generated by the function [`config`](#config).

**Supplementary properties** provide a means to add metadata and some styling to
one or more visualizations. Generated by the functions [`width`](#width),
[`height`](#height), [`padding`](#padding), [`paddings`](#paddings), [`autosize`](#autosize),
[`background`](#background) and [`description`](#description).

For further details on these top-level properties, see the
[Vega specification documentation](https://vega.github.io/vega/docs/specification/).

-}
type VProperty
    = VDescription
    | VBackground
    | VWidth
    | VHeight
    | VPadding
    | VAutosize
    | VConfig
    | VSignals
    | VData
    | VScales
    | VProjections
    | VAxes
    | VLegends
    | VTitle
    | VLayout
    | VMarks
    | VEncode


{-| A value representing a rounding value modifier. Rounding is applied after
all other modifiers.
-}
vRound : Boo -> Value
vRound =
    VRound


{-| A value representing the name of a scale.
-}
vScale : String -> Value
vScale s =
    VScale (field s)


{-| A value representing a scale field used to dynamically look up a scale name.
-}
vScaleField : Field -> Value
vScaleField =
    VScale


{-| Specify the name of a generic signal.
-}
vSignal : String -> Value
vSignal =
    VSignal


{-| A string value. Used for providing parameters that can be of any value type.
-}
vStr : String -> Value
vStr =
    VStr


{-| A list of string values. Used for providing parameters that can be of any value type.
-}
vStrs : List String -> Value
vStrs =
    VStrs


{-| Convenience function for indicating a top vertical alignment.
-}
vTop : Value
vTop =
    vStr "top"


{-| A 'true' value.
-}
vTrue : Value
vTrue =
    VBoo True


{-| Represents an a list of values. This can be used for nesting collections of
values.
-}
vValues : List Value -> Value
vValues =
    Values


{-| Specify the output fields created by a word cloud transform. The parameters
map to the following default values: `x`, `y`, `font`, `fontSize`, `fontStyle`,
`fontWeight` and `angle`. For details see the
[Vega wordcloud transform documentation](https://vega.github.io/vega/docs/transforms/wordcloud/).
-}
wcAs : String -> String -> String -> String -> String -> String -> String -> WordcloudProperty
wcAs =
    WcAs


{-| Specify the font family to use for a word in a wordcloud. For details see the
[Vega wordcloud transform documentation](https://vega.github.io/vega/docs/transforms/wordcloud/).
-}
wcFont : Str -> WordcloudProperty
wcFont =
    WcFont


{-| Specify the font size to use for a word in a wordcloud. For details see the
[Vega wordcloud transform documentation](https://vega.github.io/vega/docs/transforms/wordcloud/).
-}
wcFontSize : Num -> WordcloudProperty
wcFontSize =
    WcFontSize


{-| Specify the font size range to use for words in a wordcloud. The parameter should
resolve to a two-element list [min,max]. The size of words in a wordcloud will be
scaled to lie in the given range according to the square root scale. For details see the
[Vega wordcloud transform documentation](https://vega.github.io/vega/docs/transforms/wordcloud/).
-}
wcFontSizeRange : Num -> WordcloudProperty
wcFontSizeRange =
    WcFontSizeRange


{-| Specify the font style to use for words in a wordcloud. For details see the
[Vega wordcloud transform documentation](https://vega.github.io/vega/docs/transforms/wordcloud/).
-}
wcFontStyle : Str -> WordcloudProperty
wcFontStyle =
    WcFontStyle


{-| Specify the font weights to use for words in a wordcloud. For details see the
[Vega wordcloud transform documentation](https://vega.github.io/vega/docs/transforms/wordcloud/).
-}
wcFontWeight : Str -> WordcloudProperty
wcFontWeight =
    WcFontWeight


{-| Specify the padding, in pixels, to be placed around words in a wordcloud. For details see the
[Vega wordcloud transform documentation](https://vega.github.io/vega/docs/transforms/wordcloud/).
-}
wcPadding : Num -> WordcloudProperty
wcPadding =
    WcPadding


{-| Specify the angle in degrees of words in a wordcloud layout. For details see the
[Vega wordcloud transform documentation](https://vega.github.io/vega/docs/transforms/wordcloud/).
-}
wcRotate : Num -> WordcloudProperty
wcRotate =
    WcRotate


{-| Specify size of layout created by a wordcloud transform. The parameter should
resolve to a two-element list [width, height] in pixels. For details see the
[Vega wordcloud transform documentation](https://vega.github.io/vega/docs/transforms/wordcloud/).
-}
wcSize : Num -> WordcloudProperty
wcSize =
    WcSize


{-| Specify spiral layout method for a wordcloud transform. For details see the
[Vega wordcloud transform documentation](https://vega.github.io/vega/docs/transforms/wordcloud/).
-}
wcSpiral : Spiral -> WordcloudProperty
wcSpiral =
    WcSpiral


{-| Specify data field with the input word text for a wordcloud transform. For details see the
[Vega wordcloud transform documentation](https://vega.github.io/vega/docs/transforms/wordcloud/).
-}
wcText : Field -> WordcloudProperty
wcText =
    WcText


{-| Convenience function for specifying a white color setting for marks that can
be colored (e.g. with [maStroke](#maStroke))
-}
white : Value
white =
    vStr "white"


{-| Override the default width of the visualization. If not specified the width
will be calculated based on the content of the visualization.
-}
width : Float -> ( VProperty, Spec )
width w =
    ( VWidth, JE.float w )


{-| Specify an aggregate operation to be applied during a window transformation.
This version is suitable for operations without parameters (e.g. `RowNumber`) and
that are not applied to a specific field.

The parameters are the operation to apply, the input field (or `Nothing` if no input
field) and the name to give to the field which will contain the results of the calculation.

The example below calculates the average over an unbounded window:

    transform
        [ trWindow [ wnAggOperation Mean (Just (field "IMDB_Rating")) "avScore" ]
            [ wnFrame numNull ]
        ]

For details see the
[Vega window transform documentation](https://vega.github.io/vega/docs/transforms/window/)

-}
wnAggOperation : Operation -> Maybe Field -> String -> WindowOperation
wnAggOperation op inField outFieldName =
    WnAggOperation op Nothing inField outFieldName


{-| Specify a window-specific operation to be applied during a window transformation.
This version is suitable for operations without parameters (e.g. `RowNumber`) and
that are not applied to a specific field.

The parameters are the operation to apply and the name to give to the field which
will contain the results of the calculation.

    transform
        [ trWindow [ wnOperation Rank "order" ]
            [ wnSort [ ( field "Gross", Descend ) ] ]
        ]

For details see the
[Vega window transform documentation](https://vega.github.io/vega/docs/transforms/window/)

-}
wnOperation : WOperation -> String -> WindowOperation
wnOperation op outField =
    WnOperation op Nothing Nothing outField


{-| Specify a window-specific operation to be applied during a window transformation.
This version is suitable for operations that have a parameter (e.g. `Lag` or `Lead`)
and/or operations that require a specific field as input (e.g. `LastValue`).
The parameters are in order: the type of operation, a possible operation parameter,
the field to apply it to and its output field name.

    transform
        [ trWindow
            [ wnOperationOn Lag
                (Just (num 5))
                (Just (field "temperature"))
                "oldTemp"
            ]
            []
        ]

For details see the
[Vega window transform documentation](https://vega.github.io/vega/docs/transforms/window/)

-}
wnOperationOn : WOperation -> Maybe Num -> Maybe Field -> String -> WindowOperation
wnOperationOn =
    WnOperation


{-| Specify a two-element list indicating how the sliding window should proceed
during a window transform. The list entries should either be a number indicating
the offset from the current data object, or `NumNull` to indicate unbounded rows
preceding or following the current data object. For details see the
[Vega window transform documentation](https://vega.github.io/vega/docs/transforms/window/)
-}
wnFrame : Num -> WindowProperty
wnFrame =
    WnFrame


{-| Specify the data fields by which to partition data objects into separate windows
during a window transform. If not specified, a single group containing all data
objects will be used. For details see the
[Vega window transform documentation](https://vega.github.io/vega/docs/transforms/window/)
-}
wnGroupBy : List Field -> WindowProperty
wnGroupBy =
    WnGroupBy


{-| Specify whether or not a sliding frame in a window transform should ignore
peer values. For details see the
[Vega window transform documentation](https://vega.github.io/vega/docs/transforms/window/)
-}
wnIgnorePeers : Boo -> WindowProperty
wnIgnorePeers =
    WnIgnorePeers


{-| Specify how sorting data objects is applied within a window transform.

    transform
        [ trWindow [ wnOperation RowNumber "order" ]
          [ wnSort [ ( field "score", Ascend ) ] ]
        ]

If two objects are equal in terms of sorting field datum by they are considered
'peers'. If no sorting comparator is specified, data objects are processed in the
order they are observed with no peers. For details see the
[Vega window transform documentation](https://vega.github.io/vega/docs/transforms/window/)

-}
wnSort : List ( Field, Order ) -> WindowProperty
wnSort =
    WnSort


{-| Operations that may be applied during a window transformation. For details see the
[Vega window transform documentation](https://vega.github.io/vega/docs/transforms/window/#ops).
-}
type WOperation
    = RowNumber
    | Rank
    | DenseRank
    | PercentRank
    | CumeDist
    | Ntile
    | Lag
    | Lead
    | FirstValue
    | LastValue
    | NthValue
    | WOperationSignal String


{-| Indicates a window operation is to be determined by a named signal. The
signal should generate the name of a valid operation (e.g. `dense_rank`).
For names of valid window operations see the
[Vega window operation documentation](https://vega.github.io/vega/docs/transforms/window/#ops)
-}
wOperationSignal : String -> WOperation
wOperationSignal =
    WOperationSignal



-- ################################################# Private types and functions


type alias LabelledSpec =
    ( String, Spec )


aggregateProperty : AggregateProperty -> LabelledSpec
aggregateProperty ap =
    case ap of
        AgGroupBy fs ->
            ( "groupby", JE.list (List.map fieldSpec fs) )

        AgFields fs ->
            ( "fields", JE.list (List.map fieldSpec fs) )

        AgOps ops ->
            ( "ops", JE.list (List.map opSpec ops) )

        AgAs labels ->
            ( "as", JE.list (List.map JE.string labels) )

        AgCross b ->
            ( "cross", booSpec b )

        AgDrop b ->
            ( "drop", booSpec b )

        AgKey f ->
            ( "key", fieldSpec f )


anchorSpec : Anchor -> Spec
anchorSpec anchor =
    case anchor of
        Start ->
            JE.string "start"

        Middle ->
            JE.string "middle"

        End ->
            JE.string "end"

        AnchorSignal sigName ->
            JE.object [ signalReferenceProperty sigName ]


autosizeProperty : Autosize -> LabelledSpec
autosizeProperty asCfg =
    case asCfg of
        APad ->
            ( "type", JE.string "pad" )

        AFit ->
            ( "type", JE.string "fit" )

        AFitX ->
            ( "type", JE.string "fit-x" )

        AFitY ->
            ( "type", JE.string "fit-y" )

        ANone ->
            ( "type", JE.string "none" )

        AResize ->
            ( "resize", JE.bool True )

        AContent ->
            ( "contains", JE.string "content" )

        APadding ->
            ( "contains", JE.string "padding" )

        AutosizeSignal sigName ->
            signalReferenceProperty sigName


axisElementLabel : AxisElement -> String
axisElementLabel el =
    case el of
        EAxis ->
            "axis"

        ETicks ->
            "ticks"

        EGrid ->
            "grid"

        ELabels ->
            "labels"

        ETitle ->
            "title"

        EDomain ->
            "domain"


axisProperty : AxisProperty -> LabelledSpec
axisProperty ap =
    case ap of
        AxScale scName ->
            ( "scale", JE.string scName )

        AxSide axSide ->
            ( "orient", sideSpec axSide )

        AxBandPosition n ->
            ( "bandPosition", numSpec n )

        AxDomain b ->
            ( "domain", booSpec b )

        AxDomainColor s ->
            ( "domainColor", strSpec s )

        AxDomainOpacity n ->
            ( "domainOpacity", numSpec n )

        AxDomainWidth n ->
            ( "domainWidth", numSpec n )

        AxEncode elEncs ->
            let
                enc ( el, encProps ) =
                    ( axisElementLabel el, JE.object (List.map encodingProperty encProps) )
            in
            ( "encode", JE.object (List.map enc elEncs) )

        AxFormat fmt ->
            ( "format", strSpec fmt )

        AxGrid b ->
            ( "grid", booSpec b )

        AxGridColor s ->
            ( "gridColor", strSpec s )

        AxGridDash vals ->
            ( "gridDash", valRef vals )

        AxGridOpacity n ->
            ( "gridOpacity", numSpec n )

        AxGridScale s ->
            ( "gridScale", JE.string s )

        AxGridWidth n ->
            ( "gridWidth", numSpec n )

        AxLabels b ->
            ( "labels", booSpec b )

        AxLabelAlign ha ->
            ( "labelAlign", hAlignSpec ha )

        AxLabelAngle n ->
            ( "labelAngle", numSpec n )

        AxLabelBaseline va ->
            ( "labelBaseline", vAlignSpec va )

        AxLabelBound n ->
            case n of
                NumNull ->
                    ( "labelBound", JE.bool False )

                _ ->
                    ( "labelBound", numSpec n )

        AxLabelColor s ->
            ( "labelColor", strSpec s )

        AxLabelFlush n ->
            case n of
                NumNull ->
                    ( "labelFlush", JE.bool False )

                _ ->
                    ( "labelFlush", numSpec n )

        AxLabelFlushOffset pad ->
            ( "labelFlushOffset", numSpec pad )

        AxLabelFont s ->
            ( "labelFont", strSpec s )

        AxLabelFontSize n ->
            ( "labelFontSize", numSpec n )

        AxLabelFontWeight val ->
            ( "labelFontWeight", valueSpec val )

        AxLabelLimit n ->
            ( "labelLimit", numSpec n )

        AxLabelOpacity n ->
            ( "labelOpacity", numSpec n )

        AxLabelOverlap strat ->
            ( "labelOverlap", overlapStrategySpec strat )

        AxLabelPadding pad ->
            ( "labelPadding", numSpec pad )

        AxMaxExtent val ->
            ( "maxExtent", valueSpec val )

        AxMinExtent val ->
            ( "minExtent", valueSpec val )

        AxOffset val ->
            ( "offset", valueSpec val )

        AxPosition val ->
            ( "position", valueSpec val )

        AxTicks b ->
            ( "ticks", booSpec b )

        AxTickColor s ->
            ( "tickColor", strSpec s )

        AxTickCount n ->
            ( "tickCount", numSpec n )

        AxTemporalTickCount tu n ->
            case n of
                Num step ->
                    if step <= 0 then
                        ( "tickCount", timeUnitSpec tu )
                    else
                        ( "tickCount", JE.object [ ( "interval", timeUnitSpec tu ), ( "step", numSpec n ) ] )

                NumSignal _ ->
                    ( "tickCount", JE.object [ ( "interval", timeUnitSpec tu ), ( "step", numSpec n ) ] )

                NumExpr _ ->
                    ( "tickCount", JE.object [ ( "interval", timeUnitSpec tu ), ( "step", numSpec n ) ] )

                _ ->
                    ( "tickCount", timeUnitSpec tu )

        AxTickExtra b ->
            ( "tickExtra", booSpec b )

        AxTickOffset n ->
            ( "tickOffset", numSpec n )

        AxTickOpacity n ->
            ( "tickOpacity", numSpec n )

        AxTickRound b ->
            ( "tickRound", booSpec b )

        AxTickSize n ->
            ( "tickSize", numSpec n )

        AxTickWidth n ->
            ( "tickWidth", numSpec n )

        AxTitle s ->
            ( "title", strSpec s )

        AxTitleAlign ha ->
            ( "titleAlign", hAlignSpec ha )

        AxTitleAngle n ->
            ( "titleAngle", numSpec n )

        AxTitleBaseline va ->
            ( "titleBaseline", vAlignSpec va )

        AxTitleColor s ->
            ( "titleColor", strSpec s )

        AxTitleFont s ->
            ( "titleFont", strSpec s )

        AxTitleFontSize n ->
            ( "titleFontSize", numSpec n )

        AxTitleFontWeight val ->
            ( "titleFontWeight", valueSpec val )

        AxTitleLimit n ->
            ( "titleLimit", numSpec n )

        AxTitleOpacity n ->
            ( "titleOpacity", numSpec n )

        AxTitlePadding val ->
            ( "titlePadding", valueSpec val )

        AxTitleX n ->
            ( "titleX", numSpec n )

        AxTitleY n ->
            ( "titleY", numSpec n )

        AxValues vals ->
            ( "values", valueSpec vals )

        AxZIndex n ->
            ( "zindex", numSpec n )


axTypeLabel : AxisType -> String
axTypeLabel axType =
    case axType of
        AxAll ->
            "axis"

        AxLeft ->
            "axisLeft"

        AxTop ->
            "axisTop"

        AxRight ->
            "axisRight"

        AxBottom ->
            "axisBottom"

        AxX ->
            "axisX"

        AxY ->
            "axisY"

        AxBand ->
            "axisBand"


bindingProperty : Bind -> LabelledSpec
bindingProperty bnd =
    let
        bSpec iType props =
            ( "bind", JE.object (( "input", JE.string iType ) :: List.map inputProperty props) )
    in
    case bnd of
        IRange props ->
            bSpec "range" props

        ICheckbox props ->
            bSpec "checkbox" props

        IRadio props ->
            bSpec "radio" props

        ISelect props ->
            bSpec "select" props

        IText props ->
            bSpec "text" props

        INumber props ->
            bSpec "number" props

        IDate props ->
            bSpec "date" props

        ITime props ->
            bSpec "time" props

        IMonth props ->
            bSpec "month" props

        IWeek props ->
            bSpec "week" props

        IDateTimeLocal props ->
            bSpec "datetimelocal" props

        ITel props ->
            bSpec "tel" props

        IColor props ->
            bSpec "color" props


binProperty : BinProperty -> LabelledSpec
binProperty bnProp =
    case bnProp of
        BnAnchor n ->
            ( "anchor", numSpec n )

        BnMaxBins n ->
            ( "maxbins", numSpec n )

        BnBase n ->
            ( "base", numSpec n )

        BnStep n ->
            ( "step", numSpec n )

        BnSteps ns ->
            case ns of
                Num _ ->
                    ( "steps", JE.list [ numSpec ns ] )

                NumSignal _ ->
                    ( "steps", JE.list [ numSpec ns ] )

                _ ->
                    ( "steps", numSpec ns )

        BnMinStep n ->
            ( "minstep", numSpec n )

        BnDivide n ->
            ( "divide", numSpec n )

        BnNice b ->
            ( "nice", booSpec b )

        BnSignal s ->
            ( "signal", JE.string s )

        BnAs mn mx ->
            ( "as", JE.list [ JE.string mn, JE.string mx ] )


booSpec : Boo -> Spec
booSpec b =
    case b of
        Boo b ->
            JE.bool b

        Boos bs ->
            JE.list (List.map JE.bool bs)

        BooSignal sig ->
            JE.object [ signalReferenceProperty sig ]

        BooSignals sigs ->
            JE.list (List.map (\sig -> JE.object [ signalReferenceProperty sig ]) sigs)

        BooExpr expr ->
            JE.object [ exprProperty expr ]


boundsCalculationSpec : BoundsCalculation -> Spec
boundsCalculationSpec bc =
    case bc of
        Full ->
            JE.string "full"

        Flush ->
            JE.string "flush"

        BoundsCalculationSignal sigName ->
            JE.object [ signalReferenceProperty sigName ]


caseLabel : Case -> String
caseLabel c =
    case c of
        Lowercase ->
            "lower"

        Uppercase ->
            "upper"

        Mixedcase ->
            "mixed"


clipSpec : Clip -> Spec
clipSpec clip =
    case clip of
        ClEnabled b ->
            booSpec b

        ClPath p ->
            JE.object [ ( "path", strSpec p ) ]

        ClSphere s ->
            JE.object [ ( "sphere", strSpec s ) ]


colorProperty : ColorValue -> LabelledSpec
colorProperty cVal =
    case cVal of
        RGB r g b ->
            ( "color"
            , JE.object
                [ ( "r", JE.object (List.concatMap valueProperties r) )
                , ( "g", JE.object (List.concatMap valueProperties g) )
                , ( "b", JE.object (List.concatMap valueProperties b) )
                ]
            )

        HSL h s l ->
            ( "color"
            , JE.object
                [ ( "h", JE.object (List.concatMap valueProperties h) )
                , ( "s", JE.object (List.concatMap valueProperties s) )
                , ( "l", JE.object (List.concatMap valueProperties l) )
                ]
            )

        LAB l a b ->
            ( "color"
            , JE.object
                [ ( "l", JE.object (List.concatMap valueProperties l) )
                , ( "a", JE.object (List.concatMap valueProperties a) )
                , ( "b", JE.object (List.concatMap valueProperties b) )
                ]
            )

        HCL h c l ->
            ( "color"
            , JE.object
                [ ( "h", JE.object (List.concatMap valueProperties h) )
                , ( "c", JE.object (List.concatMap valueProperties c) )
                , ( "l", JE.object (List.concatMap valueProperties l) )
                ]
            )


comparatorProperties : List ( Field, Order ) -> List LabelledSpec
comparatorProperties comp =
    let
        ( fs, os ) =
            List.unzip comp
    in
    [ ( "field", JE.list (List.map fieldSpec fs) )
    , ( "order", JE.list (List.map orderSpec os) )
    ]


configProperty : ConfigProperty -> LabelledSpec
configProperty cp =
    case cp of
        CfAutosize aps ->
            ( "autosize", JE.object (List.map autosizeProperty aps) )

        CfBackground s ->
            ( "background", strSpec s )

        CfGroup mps ->
            ( "group", JE.object (List.map markProperty mps) )

        CfEvents ef ets ->
            let
                filterLabel =
                    if ef == Allow then
                        "allow"
                    else
                        "prevent"

                listSpec =
                    if ets == [] then
                        JE.bool True
                    else
                        JE.list (List.map (\et -> JE.string (eventTypeLabel et)) ets)
            in
            ( "events", JE.object [ ( "defaults", JE.object [ ( filterLabel, listSpec ) ] ) ] )

        CfMark mk mps ->
            ( markLabel mk, JE.object (List.map markProperty mps) )

        CfMarks mps ->
            ( "mark", JE.object (List.map markProperty mps) )

        CfStyle sName mps ->
            ( "style", JE.object [ ( sName, JE.object (List.map markProperty mps) ) ] )

        CfAxis axType aps ->
            ( axTypeLabel axType, JE.object (List.map axisProperty aps) )

        CfLegend lps ->
            ( "legend", JE.object (List.map legendProperty lps) )

        CfTitle tps ->
            ( "title", JE.object (List.map titleProperty tps) )

        CfScaleRange ra1 ra2 ->
            let
                raLabel =
                    case ra1 of
                        RaSymbol ->
                            "symbol"

                        RaCategory ->
                            "category"

                        RaDiverging ->
                            "diverging"

                        RaOrdinal ->
                            "ordinal"

                        RaRamp ->
                            "ramp"

                        RaHeatmap ->
                            "heatmap"

                        _ ->
                            "" |> Debug.log ("Warning: cfScale range should be a scale range definition but was " ++ toString ra1)

                raVals =
                    case ra2 of
                        RStrs ss ->
                            JE.list (List.map JE.string ss)

                        RSignal sig ->
                            JE.object [ signalReferenceProperty sig ]

                        RScheme name options ->
                            JE.object (List.map schemeProperty (SScheme name :: options))

                        _ ->
                            JE.null |> Debug.log ("Warning: cfScale range values should be color strings or scheme but was " ++ toString ra2)
            in
            ( "range", JE.object [ ( raLabel, raVals ) ] )


contourProperty : ContourProperty -> LabelledSpec
contourProperty cnProp =
    case cnProp of
        CnValues n ->
            case n of
                Num _ ->
                    ( "values", JE.null ) |> Debug.log ("Warning: cnValues expecting list of numbers or signals but was given " ++ toString n)

                _ ->
                    ( "values", numSpec n )

        CnX f ->
            ( "x", fieldSpec f )

        CnY f ->
            ( "y", fieldSpec f )

        CnCellSize n ->
            ( "cellSize", numSpec n )

        CnBandwidth n ->
            ( "bandwidth", numSpec n )

        CnSmooth b ->
            ( "smooth", booSpec b )

        CnThresholds n ->
            case n of
                Num _ ->
                    ( "thresholds", JE.null ) |> Debug.log ("Warning: cnThresholds expecting list of numbers or signals but was given " ++ toString n)

                _ ->
                    ( "thresholds", numSpec n )

        CnCount n ->
            ( "count", numSpec n )

        CnNice b ->
            ( "nice", booSpec b )


countPatternProperty : CountPatternProperty -> LabelledSpec
countPatternProperty cpProp =
    case cpProp of
        CPPattern s ->
            ( "pattern", strSpec s )

        CPCase c ->
            ( "case", JE.string (caseLabel c) )

        CPStopwords s ->
            ( "stopwords", strSpec s )

        CPAs s1 s2 ->
            ( "as", JE.list [ JE.string s1, JE.string s2 ] )


crossProperty : CrossProperty -> LabelledSpec
crossProperty crProp =
    case crProp of
        CrFilter ex ->
            ( "filter", JE.object [ exprProperty ex ] )

        CrAs a b ->
            ( "as", JE.list [ JE.string a, JE.string b ] )


dataProperty : DataProperty -> LabelledSpec
dataProperty dProp =
    case dProp of
        DaFormat fmts ->
            ( "format", JE.object (List.concatMap formatProperty fmts) )

        DaSource src ->
            ( "source", JE.string src )

        DaSources srcs ->
            ( "source", JE.list (List.map JE.string srcs) )

        DaOn triggers ->
            ( "on", JE.list triggers )

        DaUrl url ->
            ( "url", JE.string url )

        DaValue val ->
            ( "values", valueSpec val )

        DaSphere ->
            ( "values", JE.object [ ( "type", JE.string "Sphere" ) ] )


dataRefProperty : DataReference -> LabelledSpec
dataRefProperty dataRef =
    let
        nestedSpec dRef2 =
            case dRef2 of
                [ DValues val ] ->
                    valueSpec val

                _ ->
                    JE.object (List.map dataRefProperty dRef2)
    in
    case dataRef of
        DDataset ds ->
            ( "data", JE.string ds )

        DField f ->
            ( "field", fieldSpec f )

        DFields fs ->
            ( "fields", JE.list (List.map fieldSpec fs) )

        DValues val ->
            ( "values", valueSpec val )

        DSignal sig ->
            ( "signal", JE.string sig )

        DReferences drss ->
            --( "fields", JE.list (List.map (\drs -> JE.object (List.map dataRefProperty drs)) drss) )
            ( "fields", JE.list (List.map (\drs -> nestedSpec drs) drss) )

        DSort sps ->
            if sps == [ Ascending ] || sps == [] then
                ( "sort", JE.bool True )
            else
                ( "sort", JE.object (List.map sortProperty sps) )


densityProperty : DensityProperty -> LabelledSpec
densityProperty dnp =
    case dnp of
        DnExtent ns ->
            numArrayProperty 2 "extent" ns

        DnMethod df ->
            case df of
                PDF ->
                    ( "method", JE.string "pdf" )

                CDF ->
                    ( "method", JE.string "cdf" )

                DensityFunctionSignal sig ->
                    ( "method", JE.object [ ( "signal", JE.string sig ) ] )

        DnSteps n ->
            ( "steps", numSpec n )

        DnAs s1 s2 ->
            ( "as", JE.list [ JE.string s1, JE.string s2 ] )


distributionSpec : Distribution -> Spec
distributionSpec dist =
    case dist of
        DiNormal mean stdev ->
            JE.object
                [ ( "function", JE.string "normal" )
                , ( "mean", numSpec mean )
                , ( "stdev", numSpec stdev )
                ]

        DiUniform mn mx ->
            JE.object
                [ ( "function", JE.string "uniform" )
                , ( "min", numSpec mn )
                , ( "max", numSpec mx )
                ]

        DiKde dSource f bw ->
            if dSource == "" then
                JE.object
                    [ ( "function", JE.string "kde" )
                    , ( "field", fieldSpec f )
                    , ( "bandwidth", numSpec bw )
                    ]
            else
                JE.object
                    [ ( "function", JE.string "kde" )
                    , ( "from", JE.string dSource )
                    , ( "field", fieldSpec f )
                    , ( "bandwidth", numSpec bw )
                    ]

        DiMixture dProbs ->
            let
                dists =
                    List.unzip dProbs |> Tuple.first |> List.map distributionSpec

                probs =
                    List.unzip dProbs |> Tuple.second |> List.map numSpec
            in
            JE.object
                [ ( "function", JE.string "mixture" )
                , ( "distributions", JE.list dists )
                , ( "weights", JE.list probs )
                ]


encodingProperty : EncodingProperty -> LabelledSpec
encodingProperty ep =
    case ep of
        Enter mProps ->
            ( "enter", JE.object (List.map markProperty mProps) )

        Update mProps ->
            ( "update", JE.object (List.map markProperty mProps) )

        Exit mProps ->
            ( "exit", JE.object (List.map markProperty mProps) )

        Hover mProps ->
            ( "hover", JE.object (List.map markProperty mProps) )

        EnName s ->
            ( "name", JE.string s )

        EnInteractive b ->
            ( "interactive", booSpec b )

        Custom s mProps ->
            ( s, JE.object (List.map markProperty mProps) )


eventHandlerSpec : List EventHandler -> Spec
eventHandlerSpec ehs =
    let
        eventHandler eh =
            case eh of
                EEvents ess ->
                    case ess of
                        [ es ] ->
                            ( "events", eventStreamSpec es )

                        _ ->
                            ( "events", JE.list (List.map eventStreamSpec ess) )

                EUpdate s ->
                    if s == "" then
                        ( "update", JE.string "{}" )
                    else
                        ( "update", JE.string s )

                EEncode s ->
                    ( "encode", JE.string s )

                EForce b ->
                    ( "force", booSpec b )
    in
    JE.object (List.map eventHandler ehs)


eventSourceLabel : EventSource -> String
eventSourceLabel es =
    case es of
        ESAll ->
            "*"

        ESView ->
            "view"

        ESScope ->
            "scope"

        ESWindow ->
            "window"

        ESDom s ->
            s


eventStreamSpec : EventStream -> Spec
eventStreamSpec es =
    case es of
        ESSelector s ->
            strSpec s

        ESObject ess ->
            eventStreamObjectSpec ess

        ESSignal esSig ->
            JE.object [ ( "signal", JE.string esSig ) ]

        ESMerge ess ->
            JE.object [ ( "merge", JE.list (List.map eventStreamSpec ess) ) ]


eventStreamObjectSpec : List EventStreamProperty -> Spec
eventStreamObjectSpec ess =
    let
        esProperty es =
            case es of
                ESSource src ->
                    ( "source", JE.string (eventSourceLabel src) )

                ESType et ->
                    ( "type", JE.string (eventTypeLabel et) )

                ESBetween ess1 ess2 ->
                    ( "between", JE.list [ eventStreamObjectSpec ess1, eventStreamObjectSpec ess2 ] )

                ESConsume b ->
                    ( "consume", booSpec b )

                ESFilter ex ->
                    case ex of
                        [ s ] ->
                            ( "filter", JE.string s )

                        _ ->
                            ( "filter", JE.list (List.map JE.string ex) )

                ESDebounce n ->
                    ( "debounce", numSpec n )

                ESMarkName s ->
                    ( "markname", JE.string s )

                ESMark mk ->
                    ( "marktype", JE.string (markLabel mk) )

                ESThrottle n ->
                    ( "throttle", numSpec n )

                ESDerived es ->
                    ( "stream", eventStreamSpec es )
    in
    JE.object (List.map esProperty ess)


eventTypeLabel : EventType -> String
eventTypeLabel et =
    case et of
        Click ->
            "click"

        DblClick ->
            "dblclick"

        DragEnter ->
            "dragenter"

        DragLeave ->
            "dragleave"

        DragOver ->
            "dragover"

        KeyDown ->
            "keydown"

        KeyPress ->
            "keypress"

        KeyUp ->
            "keyup"

        MouseDown ->
            "mousedown"

        MouseMove ->
            "mousemove"

        MouseOut ->
            "mouseout"

        MouseOver ->
            "mouseover"

        MouseUp ->
            "mouseup"

        MouseWheel ->
            "mousewheel"

        TouchEnd ->
            "touchend"

        TouchMove ->
            "touchmove"

        TouchStart ->
            "touchstart"

        Wheel ->
            "wheel"

        Timer ->
            "timer"


exprProperty : Expr -> LabelledSpec
exprProperty expr =
    case expr of
        ExField field ->
            ( "field", JE.string field )

        Expr expr ->
            ( "expr", expressionSpec expr )


expressionSpec : String -> Spec
expressionSpec expr =
    -- TODO: Would be better to parse expressions for correctness
    JE.string expr


facetProperty : Facet -> LabelledSpec
facetProperty fct =
    case fct of
        FaName s ->
            ( "name", JE.string s )

        FaData s ->
            ( "data", strSpec s )

        FaField f ->
            ( "field", fieldSpec f )

        FaGroupBy fs ->
            ( "groupby", JE.list (List.map fieldSpec fs) )

        FaAggregate aps ->
            ( "aggregate", JE.object (List.map aggregateProperty aps) )


fieldSpec : Field -> Spec
fieldSpec fVal =
    case fVal of
        FName fName ->
            JE.string fName

        FExpr ex ->
            strSpec (strExpr (expr ex))

        FSignal sig ->
            JE.object [ signalReferenceProperty sig ]

        FDatum fv ->
            JE.object [ ( "datum", fieldSpec fv ) ]

        FGroup fv ->
            JE.object [ ( "group", fieldSpec fv ) ]

        FParent fv ->
            JE.object [ ( "parent", fieldSpec fv ) ]


foDataTypeSpec : DataType -> Spec
foDataTypeSpec dType =
    case dType of
        FoNum ->
            JE.string "number"

        FoBoo ->
            JE.string "boolean"

        FoDate dateFmt ->
            if dateFmt == "" then
                JE.string "date"
            else
                JE.string ("date:'" ++ dateFmt ++ "'")

        FoUtc dateFmt ->
            if dateFmt == "" then
                JE.string "utc"
            else
                JE.string ("utc:'" ++ dateFmt ++ "'")


forceSimulationProperty : ForceSimulationProperty -> LabelledSpec
forceSimulationProperty fProp =
    case fProp of
        FsStatic b ->
            ( "static", booSpec b )

        FsRestart b ->
            ( "restart", booSpec b )

        FsIterations n ->
            ( "iterations", numSpec n )

        FsAlpha n ->
            ( "alpha", numSpec n )

        FsAlphaMin n ->
            ( "alphaMin", numSpec n )

        FsAlphaTarget n ->
            ( "alphaTarget", numSpec n )

        FsVelocityDecay n ->
            ( "velocityDecay", numSpec n )

        FsForces forces ->
            ( "forces", JE.list (List.map forceSpec forces) )

        FsAs x y vx vy ->
            ( "as", JE.list [ JE.string x, JE.string y, JE.string vx, JE.string vy ] )


formatProperty : FormatProperty -> List LabelledSpec
formatProperty fmt =
    case fmt of
        JSON ->
            [ ( "type", JE.string "json" ) ]

        JSONProperty prop ->
            [ ( "type", JE.string "json" ), ( "property", JE.string prop ) ]

        CSV ->
            [ ( "type", JE.string "csv" ) ]

        TSV ->
            [ ( "type", JE.string "tsv" ) ]

        DSV delim ->
            [ ( "type", JE.string "dsv" ), ( "delimiter", JE.string delim ) ]

        TopojsonFeature objectSet ->
            [ ( "type", JE.string "topojson" ), ( "feature", JE.string objectSet ) ]

        TopojsonMesh objectSet ->
            [ ( "type", JE.string "topojson" ), ( "mesh", JE.string objectSet ) ]

        Parse fmts ->
            [ ( "parse", JE.object <| List.map (\( field, fmt ) -> ( field, foDataTypeSpec fmt )) fmts ) ]

        ParseAuto ->
            [ ( "parse", JE.string "auto" ) ]


forceProperty : ForceProperty -> LabelledSpec
forceProperty fp =
    case fp of
        FpX f ->
            ( "x", fieldSpec f )

        FpY f ->
            ( "y", fieldSpec f )

        FpCx n ->
            ( "x", numSpec n )

        FpCy n ->
            ( "y", numSpec n )

        FpRadius n ->
            ( "radius", numSpec n )

        FpStrength n ->
            ( "strength", numSpec n )

        FpIterations n ->
            ( "iterations", numSpec n )

        FpTheta n ->
            ( "theta", numSpec n )

        FpDistanceMin n ->
            ( "distanceMin", numSpec n )

        FpDistanceMax n ->
            ( "distanceMax", numSpec n )

        FpLinks s ->
            ( "links", strSpec s )

        FpId f ->
            ( "id", fieldSpec f )

        FpDistance n ->
            ( "distance", numSpec n )


forceSpec : Force -> Spec
forceSpec f =
    case f of
        FCenter fps ->
            JE.object (( "force", JE.string "center" ) :: List.map forceProperty fps)

        FCollide fps ->
            JE.object (( "force", JE.string "collide" ) :: List.map forceProperty fps)

        FNBody fps ->
            JE.object (( "force", JE.string "nbody" ) :: List.map forceProperty fps)

        FLink fps ->
            JE.object (( "force", JE.string "link" ) :: List.map forceProperty fps)

        FX field fps ->
            JE.object (( "force", JE.string "x" ) :: ( "x", fieldSpec field ) :: List.map forceProperty fps)

        FY field fps ->
            JE.object (( "force", JE.string "y" ) :: ( "y", fieldSpec field ) :: List.map forceProperty fps)


type FormulaUpdate
    = InitOnly
    | AlwaysUpdate


formulaUpdateSpec : FormulaUpdate -> Spec
formulaUpdateSpec update =
    case update of
        InitOnly ->
            JE.bool True

        AlwaysUpdate ->
            JE.bool False


geoJsonProperty : GeoJsonProperty -> LabelledSpec
geoJsonProperty gjProp =
    case gjProp of
        GjFields lng lat ->
            ( "fields", JE.list [ fieldSpec lng, fieldSpec lat ] )

        GjFeature f ->
            ( "geojson", fieldSpec f )

        GjSignal s ->
            ( "signal", JE.string s )


geoPathProperty : GeoPathProperty -> LabelledSpec
geoPathProperty gpProp =
    case gpProp of
        GeField field ->
            ( "field", fieldSpec field )

        GePointRadius num ->
            ( "pointRadius", numSpec num )

        GeAs s ->
            ( "as", JE.string s )


graticuleProperty : GraticuleProperty -> LabelledSpec
graticuleProperty grProp =
    case grProp of
        GrField field ->
            ( "field", fieldSpec field )

        GrExtentMajor n ->
            numArrayProperty 2 "extentMajor" n

        GrExtentMinor n ->
            numArrayProperty 2 "extentMinor" n

        GrExtent n ->
            numArrayProperty 2 "extentr" n

        GrStepMajor n ->
            numArrayProperty 2 "stepMajor" n

        GrStepMinor n ->
            numArrayProperty 2 "stepMinor" n

        GrStep n ->
            numArrayProperty 2 "step" n

        GrPrecision n ->
            ( "precision", numSpec n )


gridAlignSpec : GridAlign -> Spec
gridAlignSpec ga =
    case ga of
        AlignAll ->
            JE.string "all"

        AlignEach ->
            JE.string "each"

        AlignNone ->
            JE.string "none"

        AlignRow align ->
            JE.object [ ( "row", gridAlignSpec align ) ]

        AlignColumn align ->
            JE.object [ ( "column", gridAlignSpec align ) ]

        AlignSignal sig ->
            JE.object [ signalReferenceProperty sig ]


hAlignSpec : HAlign -> Spec
hAlignSpec align =
    case align of
        AlignLeft ->
            JE.string "left"

        AlignCenter ->
            JE.string "center"

        AlignRight ->
            JE.string "right"

        HAlignSignal sig ->
            JE.object [ signalReferenceProperty sig ]


imputeMethodLabel : ImputeMethod -> String
imputeMethodLabel im =
    case im of
        ByValue ->
            "value"

        ByMean ->
            "mean"

        ByMedian ->
            "median"

        ByMax ->
            "max"

        ByMin ->
            "min"


imputeProperty : ImputeProperty -> LabelledSpec
imputeProperty ip =
    case ip of
        ImKeyVals val ->
            ( "keyvals", valueSpec val )

        ImMethod m ->
            ( "method", JE.string (imputeMethodLabel m) )

        ImGroupBy fs ->
            ( "groupby", JE.list (List.map fieldSpec fs) )

        ImValue val ->
            ( "value", valueSpec val )


interpolateSpec : CInterpolate -> Spec
interpolateSpec iType =
    case iType of
        Rgb gamma ->
            JE.object [ ( "type", JE.string "rgb" ), ( "gamma", JE.float gamma ) ]

        Hsl ->
            JE.object [ ( "type", JE.string "hsl" ) ]

        HslLong ->
            JE.object [ ( "type", JE.string "hsl-long" ) ]

        Lab ->
            JE.object [ ( "type", JE.string "lab" ) ]

        Hcl ->
            JE.object [ ( "type", JE.string "hcl" ) ]

        HclLong ->
            JE.object [ ( "type", JE.string "hcl-long" ) ]

        CubeHelix gamma ->
            JE.object [ ( "type", JE.string "cubehelix" ), ( "gamma", JE.float gamma ) ]

        CubeHelixLong gamma ->
            JE.object [ ( "type", JE.string "cubehelix-long" ), ( "gamma", JE.float gamma ) ]


inputProperty : InputProperty -> LabelledSpec
inputProperty prop =
    case prop of
        InMin x ->
            ( "min", JE.float x )

        InMax x ->
            ( "max", JE.float x )

        InStep x ->
            ( "step", JE.float x )

        InDebounce x ->
            ( "debounce", JE.float x )

        InOptions opts ->
            ( "options", valueSpec opts )

        InPlaceholder el ->
            ( "placeholder", JE.string el )

        InElement el ->
            ( "element", JE.string el )

        -- Autocomplete appears to be undocumented in https://vega.github.io/vega/docs/signals/
        -- but is used in this example: https://vega.github.io/vega/examples/job-voyager/
        -- TODO: Any other HTML 5 attributes missing?
        InAutocomplete b ->
            if b then
                ( "autocomplete", JE.string "on" )
            else
                ( "autocomplete", JE.string "off" )


joinAggregateProperty : JoinAggregateProperty -> LabelledSpec
joinAggregateProperty ap =
    case ap of
        JAGroupBy fs ->
            ( "groupby", JE.list (List.map fieldSpec fs) )

        JAFields fs ->
            ( "fields", JE.list (List.map fieldSpec fs) )

        JAOps ops ->
            ( "ops", JE.list (List.map opSpec ops) )

        JAAs labels ->
            ( "as", JE.list (List.map JE.string labels) )


layoutProperty : LayoutProperty -> LabelledSpec
layoutProperty prop =
    case prop of
        LAlign ga ->
            ( "align", gridAlignSpec ga )

        LBounds bc ->
            ( "bounds", boundsCalculationSpec bc )

        LColumns n ->
            ( "columns", numSpec n )

        LPadding n ->
            ( "padding", numSpec n )

        LPaddingRC r c ->
            ( "padding", JE.object [ ( "row", numSpec r ), ( "col", numSpec c ) ] )

        LOffset n ->
            ( "offset", numSpec n )

        LOffsetRC r c ->
            ( "offset", JE.object [ ( "row", numSpec r ), ( "col", numSpec c ) ] )

        LHeaderBand n ->
            ( "headerBand", numSpec n )

        LHeaderBandRC r c ->
            ( "headerBand", JE.object [ ( "row", numSpec r ), ( "col", numSpec c ) ] )

        LFooterBand n ->
            ( "footerBand", numSpec n )

        LFooterBandRC r c ->
            ( "footerBand", JE.object [ ( "row", numSpec r ), ( "col", numSpec c ) ] )

        LTitleBand n ->
            ( "titleBand", numSpec n )

        LTitleBandRC r c ->
            ( "titleBand", JE.object [ ( "row", numSpec r ), ( "col", numSpec c ) ] )


legendEncodingProperty : LegendEncoding -> LabelledSpec
legendEncodingProperty le =
    case le of
        EnLegend eps ->
            ( "legend", JE.object (List.map encodingProperty eps) )

        EnTitle eps ->
            ( "title", JE.object (List.map encodingProperty eps) )

        EnLabels eps ->
            ( "labels", JE.object (List.map encodingProperty eps) )

        EnSymbols eps ->
            ( "symbols", JE.object (List.map encodingProperty eps) )

        EnGradient eps ->
            ( "gradient", JE.object (List.map encodingProperty eps) )


legendProperty : LegendProperty -> LabelledSpec
legendProperty lp =
    case lp of
        LeType lt ->
            ( "type", legendTypeSpec lt )

        LeDirection o ->
            ( "direction", orientationSpec o )

        LeOrient lo ->
            ( "orient", legendOrientSpec lo )

        LeFill fScale ->
            ( "fill", JE.string fScale )

        LeOpacity oScale ->
            ( "opacity", JE.string oScale )

        LeShape sScale ->
            ( "shape", JE.string sScale )

        LeSize sScale ->
            ( "size", JE.string sScale )

        LeStroke sScale ->
            ( "stroke", JE.string sScale )

        LeStrokeDash sdScale ->
            ( "strokeDash", JE.string sdScale )

        LeEncode les ->
            ( "encode", JE.object (List.map legendEncodingProperty les) )

        LeFormat s ->
            ( "format", strSpec s )

        LeGridAlign ga ->
            ( "gridAlign", gridAlignSpec ga )

        LeClipHeight h ->
            ( "clipHeight", numSpec h )

        LeColumns n ->
            ( "columns", numSpec n )

        LeColumnPadding x ->
            ( "columnPadding", numSpec x )

        LeRowPadding x ->
            ( "rowPadding", numSpec x )

        LeCornerRadius x ->
            ( "cornerRadius", numSpec x )

        LeFillColor s ->
            ( "fillColor", strSpec s )

        LeOffset val ->
            ( "offset", valueSpec val )

        LePadding val ->
            ( "padding", valueSpec val )

        LeStrokeColor s ->
            ( "strokeColor", strSpec s )

        LeStrokeWidth x ->
            ( "strokeWidth", numSpec x )

        LeGradientOpacity n ->
            ( "gradientOpacity", numSpec n )

        LeGradientLabelLimit x ->
            ( "gradientLabelLimit", numSpec x )

        LeGradientLabelOffset x ->
            ( "gradientLabelOffset", numSpec x )

        LeGradientLength x ->
            ( "gradientLength", numSpec x )

        LeGradientThickness x ->
            ( "gradientThickness", numSpec x )

        LeGradientStrokeColor s ->
            ( "gradientStrokeColor", strSpec s )

        LeGradientStrokeWidth x ->
            ( "gradientStrokeWidth", numSpec x )

        LeLabelAlign ha ->
            ( "labelAlign", hAlignSpec ha )

        LeLabelBaseline va ->
            ( "labelBaseline", vAlignSpec va )

        LeLabelColor s ->
            ( "labelColor", strSpec s )

        LeLabelOpacity n ->
            ( "labelOpacity", numSpec n )

        LeLabelFont s ->
            ( "labelFont", strSpec s )

        LeLabelFontSize x ->
            ( "labelFontSize", numSpec x )

        LeLabelFontWeight val ->
            ( "labelFontWeight", valueSpec val )

        LeLabelLimit x ->
            ( "labelLimit", numSpec x )

        LeLabelOffset x ->
            ( "labelOffset", numSpec x )

        LeLabelOverlap os ->
            ( "labelOverlap", overlapStrategySpec os )

        LeSymbolBaseFillColor s ->
            ( "symbolBaseFillColor", strSpec s )

        LeSymbolBaseStrokeColor s ->
            ( "symbolBaseStrokeColor", strSpec s )

        LeSymbolDirection o ->
            ( "symbolDirection", orientationSpec o )

        LeSymbolFillColor s ->
            ( "symbolFillColor", strSpec s )

        LeSymbolOffset x ->
            ( "symbolOffset", numSpec x )

        LeSymbolSize x ->
            ( "symbolSize", numSpec x )

        LeSymbolStrokeColor s ->
            ( "symbolStrokeColor", strSpec s )

        LeSymbolStrokeWidth x ->
            ( "symbolStokeWidth", numSpec x )

        LeSymbolOpacity n ->
            ( "symbolOpacity", numSpec n )

        LeSymbolType s ->
            ( "symbolType", symbolSpec s )

        LeTickCount n ->
            ( "tickCount", numSpec n )

        LeTemporalTickCount tu n ->
            case n of
                Num step ->
                    if step <= 0 then
                        ( "tickCount", timeUnitSpec tu )
                    else
                        ( "tickCount", JE.object [ ( "interval", timeUnitSpec tu ), ( "step", numSpec n ) ] )

                NumSignal _ ->
                    ( "tickCount", JE.object [ ( "interval", timeUnitSpec tu ), ( "step", numSpec n ) ] )

                NumExpr _ ->
                    ( "tickCount", JE.object [ ( "interval", timeUnitSpec tu ), ( "step", numSpec n ) ] )

                _ ->
                    ( "tickCount", timeUnitSpec tu )

        LeTitlePadding val ->
            ( "titlePadding", valueSpec val )

        LeTitle t ->
            ( "title", strSpec t )

        LeTitleAlign ha ->
            ( "titleAlign", hAlignSpec ha )

        LeTitleBaseline va ->
            ( "titleBaseline", vAlignSpec va )

        LeTitleColor s ->
            ( "titleColor", strSpec s )

        LeTitleFont s ->
            ( "titleFont", strSpec s )

        LeTitleFontSize x ->
            ( "titleFontSize", numSpec x )

        LeTitleFontWeight val ->
            ( "titleFontWeight", valueSpec val )

        LeTitleLimit x ->
            ( "titleLimit", numSpec x )

        LeTitleOpacity n ->
            ( "titleOpacity", numSpec n )

        LeValues vals ->
            ( "values", JE.list (List.map valueSpec vals) )

        LeZIndex n ->
            ( "zindex", numSpec n )


legendOrientSpec : LegendOrientation -> Spec
legendOrientSpec orient =
    case orient of
        Left ->
            JE.string "left"

        TopLeft ->
            JE.string "top-left"

        Top ->
            JE.string "top"

        TopRight ->
            JE.string "top-right"

        Right ->
            JE.string "right"

        BottomRight ->
            JE.string "bottom-right"

        Bottom ->
            JE.string "bottom"

        BottomLeft ->
            JE.string "bottom-left"

        None ->
            JE.string "none"

        LegendOrientationSignal sig ->
            JE.object [ signalReferenceProperty sig ]


legendTypeSpec : LegendType -> Spec
legendTypeSpec lt =
    case lt of
        LSymbol ->
            JE.string "symbol"

        LGradient ->
            JE.string "gradient"

        LegendTypeSignal sig ->
            JE.object [ signalReferenceProperty sig ]


linkPathProperty : LinkPathProperty -> LabelledSpec
linkPathProperty lpProp =
    case lpProp of
        LPSourceX field ->
            ( "sourceX", fieldSpec field )

        LPSourceY field ->
            ( "sourceY", fieldSpec field )

        LPTargetX field ->
            ( "targetX", fieldSpec field )

        LPTargetY field ->
            ( "targetY", fieldSpec field )

        LPOrient o ->
            ( "orient", orientationSpec o )

        LPShape ls ->
            ( "shape", linkShapeSpec ls )

        LPAs s ->
            ( "as", JE.string s )


linkShapeSpec : LinkShape -> Spec
linkShapeSpec ls =
    case ls of
        LinkLine ->
            JE.string "line"

        LinkArc ->
            JE.string "arc"

        LinkCurve ->
            JE.string "curve"

        LinkDiagonal ->
            JE.string "diagonal"

        LinkOrthogonal ->
            JE.string "orthogonal"

        LinkShapeSignal sig ->
            JE.object [ signalReferenceProperty sig ]


lookupProperty : LookupProperty -> LabelledSpec
lookupProperty luProp =
    case luProp of
        LValues fields ->
            ( "values", JE.list (List.map fieldSpec fields) )

        LAs fields ->
            ( "as", JE.list (List.map JE.string fields) )

        LDefault val ->
            ( "default", valueSpec val )


markLabel : Mark -> String
markLabel m =
    case m of
        Arc ->
            "arc"

        Area ->
            "area"

        Image ->
            "image"

        Group ->
            "group"

        Line ->
            "line"

        Path ->
            "path"

        Rect ->
            "rect"

        Rule ->
            "rule"

        Shape ->
            "shape"

        Symbol ->
            "symbol"

        Text ->
            "text"

        Trail ->
            "trail"


markProperty : MarkProperty -> LabelledSpec
markProperty mProp =
    case mProp of
        MX vals ->
            ( "x", valRef vals )

        MY vals ->
            ( "y", valRef vals )

        MX2 vals ->
            ( "x2", valRef vals )

        MY2 vals ->
            ( "y2", valRef vals )

        MXC vals ->
            ( "xc", valRef vals )

        MYC vals ->
            ( "yc", valRef vals )

        MWidth vals ->
            ( "width", valRef vals )

        MHeight vals ->
            ( "height", valRef vals )

        MOpacity vals ->
            ( "opacity", valRef vals )

        MFill vals ->
            ( "fill", valRef vals )

        MFillOpacity vals ->
            ( "fillOpacity", valRef vals )

        MStroke vals ->
            ( "stroke", valRef vals )

        MStrokeOpacity vals ->
            ( "strokeOpacity", valRef vals )

        MStrokeWidth vals ->
            ( "strokeWidth", valRef vals )

        MStrokeCap vals ->
            ( "strokeCap", valRef vals )

        MStrokeDash vals ->
            ( "strokeDash", valRef vals )

        MStrokeDashOffset vals ->
            ( "strokeDashOffset", valRef vals )

        MStrokeJoin vals ->
            ( "strokeJoin", valRef vals )

        MStrokeMiterLimit vals ->
            ( "strokeMiterLimit", valRef vals )

        MCursor vals ->
            ( "cursor", valRef vals )

        MHRef vals ->
            ( "href", valRef vals )

        MTooltip vals ->
            ( "tooltip", valRef vals )

        MZIndex vals ->
            ( "zindex", valRef vals )

        -- Arc Mark specific:
        MStartAngle vals ->
            ( "startAngle", valRef vals )

        MEndAngle vals ->
            ( "endAngle", valRef vals )

        MPadAngle vals ->
            ( "padAngle", valRef vals )

        MInnerRadius vals ->
            ( "innerRadius", valRef vals )

        MOuterRadius vals ->
            ( "outerRadius", valRef vals )

        MCornerRadius vals ->
            ( "cornerRadius", valRef vals )

        -- Area Mark specific:
        MOrient vals ->
            ( "orient", valRef vals )

        MInterpolate vals ->
            ( "interpolate", valRef vals )

        MTension vals ->
            ( "tension", valRef vals )

        MDefined vals ->
            ( "defined", valRef vals )

        -- Group Mark specific (MCornerRadius shared with other marks):
        MGroupClip vals ->
            ( "clip", valRef vals )

        -- Image Mark specific:
        MAspect vals ->
            ( "aspect", valRef vals )

        MUrl vals ->
            ( "url", valRef vals )

        -- Path Mark specific:
        MPath vals ->
            ( "path", valRef vals )

        -- Shape Mark specific:
        MShape vals ->
            ( "shape", valRef vals )

        -- Symbol Mark specific:
        MSize vals ->
            ( "size", valRef vals )

        MSymbol vals ->
            ( "shape", valRef vals )

        -- Text Mark specific (MAlign shared with other marks):
        MAlign vals ->
            ( "align", valRef vals )

        MAngle vals ->
            ( "angle", valRef vals )

        MBaseline vals ->
            ( "baseline", valRef vals )

        MDir vals ->
            ( "dir", valRef vals )

        MdX vals ->
            ( "dx", valRef vals )

        MdY vals ->
            ( "dy", valRef vals )

        MEllipsis vals ->
            ( "ellipsis", valRef vals )

        MFont vals ->
            ( "font", valRef vals )

        MFontSize vals ->
            ( "fontSize", valRef vals )

        MFontWeight vals ->
            ( "fontWeight", valRef vals )

        MFontStyle vals ->
            ( "fontStyle", valRef vals )

        MLimit vals ->
            ( "limit", valRef vals )

        MRadius vals ->
            ( "radius", valRef vals )

        MText vals ->
            ( "text", valRef vals )

        MTheta vals ->
            ( "theta", valRef vals )

        MCustom s vals ->
            ( s, valRef vals )


niceSpec : ScaleNice -> Spec
niceSpec ni =
    case ni of
        NMillisecond ->
            JE.string "millisecond"

        NSecond ->
            JE.string "second"

        NMinute ->
            JE.string "minute"

        NHour ->
            JE.string "hour"

        NDay ->
            JE.string "day"

        NWeek ->
            JE.string "week"

        NMonth ->
            JE.string "month"

        NYear ->
            JE.string "year"

        NInterval tu step ->
            JE.object [ ( "interval", timeUnitSpec tu ), ( "step", JE.int step ) ]

        NTrue ->
            JE.bool True

        NFalse ->
            JE.bool False

        NTickCount n ->
            JE.int n

        ScaleNiceSignal sig ->
            JE.object [ signalReferenceProperty sig ]


{-| For filtering Nums that represent a list of numbers of a given length.
Note that a signal can in in theory represent any value and cannot be validated
by elm, this is only partially type safe.
-}
numArrayProperty : Int -> String -> Num -> LabelledSpec
numArrayProperty len name n =
    case n of
        Nums ns ->
            if List.length ns == len then
                ( name, JE.list (List.map JE.float ns) )
            else
                ( name, JE.null ) |> Debug.log ("Warning: " ++ name ++ " expecting list of " ++ toString len ++ " numbers but was given " ++ toString ns)

        NumSignal sig ->
            ( name, numSpec (NumSignal sig) )

        NumSignals sigs ->
            if List.length sigs == len then
                ( name, numSpec (NumSignals sigs) )
            else
                ( name, JE.null ) |> Debug.log ("Warning: " ++ name ++ " expecting list of " ++ toString len ++ " signals but was given " ++ toString sigs)

        NumList ns ->
            if List.length ns == len then
                ( name, JE.list (List.map numSpec ns) )
            else
                ( name, JE.null ) |> Debug.log ("Warning: " ++ name ++ " expecting list of " ++ toString len ++ " nums but was given " ++ toString ns)

        _ ->
            ( name, JE.null ) |> Debug.log ("Warning: " ++ name ++ " expecting list of 2 numbers but was given " ++ toString n)


numSpec : Num -> Spec
numSpec num =
    case num of
        Num num ->
            JE.float num

        Nums nums ->
            JE.list (List.map JE.float nums)

        NumSignal sig ->
            JE.object [ signalReferenceProperty sig ]

        NumSignals sigs ->
            JE.list (List.map (\sig -> JE.object [ signalReferenceProperty sig ]) sigs)

        NumExpr expr ->
            JE.object [ exprProperty expr ]

        NumList nums ->
            JE.list (List.map numSpec nums)

        NumNull ->
            JE.null


opSpec : Operation -> Spec
opSpec op =
    case op of
        ArgMax ->
            JE.string "argmax"

        ArgMin ->
            JE.string "argmin"

        Average ->
            JE.string "average"

        Count ->
            JE.string "count"

        CI0 ->
            JE.string "ci0"

        CI1 ->
            JE.string "ci1"

        Distinct ->
            JE.string "distinct"

        Max ->
            JE.string "max"

        Mean ->
            JE.string "mean"

        Median ->
            JE.string "median"

        Min ->
            JE.string "min"

        Missing ->
            JE.string "missing"

        Q1 ->
            JE.string "q1"

        Q3 ->
            JE.string "q3"

        Stdev ->
            JE.string "stdev"

        Stdevp ->
            JE.string "stdevp"

        Sum ->
            JE.string "sum"

        Stderr ->
            JE.string "stderr"

        Valid ->
            JE.string "valid"

        Variance ->
            JE.string "variance"

        Variancep ->
            JE.string "variancep"

        OperationSignal sigName ->
            JE.object [ signalReferenceProperty sigName ]


orderSpec : Order -> Spec
orderSpec order =
    case order of
        Ascend ->
            JE.string "ascending"

        Descend ->
            JE.string "descending"

        OrderSignal sig ->
            JE.object [ signalReferenceProperty sig ]


orientationSpec : Orientation -> Spec
orientationSpec orient =
    case orient of
        Horizontal ->
            JE.string "horizontal"

        Vertical ->
            JE.string "vertical"

        Radial ->
            JE.string "radial"

        OrientationSignal sig ->
            JE.object [ signalReferenceProperty sig ]


overlapStrategySpec : OverlapStrategy -> Spec
overlapStrategySpec strat =
    case strat of
        ONone ->
            JE.string "false"

        OParity ->
            JE.string "parity"

        OGreedy ->
            JE.string "greedy"

        OverlapStrategySignal sig ->
            JE.object [ signalReferenceProperty sig ]


packProperty : PackProperty -> LabelledSpec
packProperty pp =
    case pp of
        PaField f ->
            ( "field", fieldSpec f )

        PaSort comp ->
            ( "sort", JE.object (comparatorProperties comp) )

        PaSize n ->
            numArrayProperty 2 "size" n

        PaRadius fOrNull ->
            case fOrNull of
                Just f ->
                    ( "radius", fieldSpec f )

                Nothing ->
                    ( "radius", JE.null )

        PaPadding padSize ->
            ( "padding", numSpec padSize )

        PaAs x y r depth children ->
            ( "as", JE.list (List.map JE.string [ x, y, r, depth, children ]) )


paddingSpec : Padding -> Spec
paddingSpec pad =
    case pad of
        PSize p ->
            JE.float p

        PEdges l t r b ->
            JE.object
                [ ( "left", JE.float l )
                , ( "top", JE.float t )
                , ( "right", JE.float r )
                , ( "bottom", JE.float b )
                ]


partitionProperty : PartitionProperty -> LabelledSpec
partitionProperty pp =
    case pp of
        PtField f ->
            ( "field", fieldSpec f )

        PtSort comp ->
            ( "sort", JE.object (comparatorProperties comp) )

        PtPadding n ->
            ( "padding", numSpec n )

        PtRound b ->
            ( "round", booSpec b )

        PtSize n ->
            numArrayProperty 2 "size" n

        PtAs x0 y0 x1 y1 depth children ->
            ( "as", JE.list [ JE.string x0, JE.string y0, JE.string x1, JE.string y1, JE.string depth, JE.string children ] )


pieProperty : PieProperty -> LabelledSpec
pieProperty pp =
    case pp of
        PiField f ->
            ( "field", fieldSpec f )

        PiStartAngle x ->
            ( "startAngle", numSpec x )

        PiEndAngle x ->
            ( "endAngle", numSpec x )

        PiSort b ->
            ( "sort", booSpec b )

        PiAs y0 y1 ->
            ( "as", JE.list (List.map JE.string [ y0, y1 ]) )


pivotProperty : PivotProperty -> LabelledSpec
pivotProperty pp =
    case pp of
        PiGroupBy fs ->
            ( "groupby", JE.list (List.map fieldSpec fs) )

        PiLimit n ->
            ( "limit", numSpec n )

        PiOp o ->
            ( "op", opSpec o )


projectionLabel : Projection -> String
projectionLabel pr =
    case pr of
        Albers ->
            "albers"

        AlbersUsa ->
            "albersUsa"

        AzimuthalEqualArea ->
            "azimuthalEqualArea"

        AzimuthalEquidistant ->
            "azimuthalEquidistant"

        ConicConformal ->
            "conicConformal"

        ConicEqualArea ->
            "conicEqualArea"

        ConicEquidistant ->
            "conicEquidistant"

        Equirectangular ->
            "equirectangular"

        Gnomonic ->
            "gnomonic"

        Mercator ->
            "mercator"

        NaturalEarth1 ->
            "naturalEarth1"

        Orthographic ->
            "orthographic"

        Stereographic ->
            "stereographic"

        TransverseMercator ->
            "transverseMercator"

        Proj s ->
            "" |> Debug.log ("Warning: Attempting to set projection type to " ++ strString s)

        ProjectionSignal sig ->
            "" |> Debug.log ("Warning: Attempting to set projection type to " ++ sig)


projectionProperty : ProjectionProperty -> LabelledSpec
projectionProperty projProp =
    case projProp of
        PrType pType ->
            ( "type", projectionSpec pType )

        PrClipAngle n ->
            case n of
                Num 0 ->
                    -- Anitmeridian cutting
                    ( "clipAngle", JE.null )

                _ ->
                    ( "clipAngle", numSpec n )

        PrClipExtent n ->
            case n of
                Nums [ x0, y0, x1, y1 ] ->
                    ( "clipExtent", JE.list [ JE.list [ JE.float x0, JE.float y0 ], JE.list [ JE.float x1, JE.float y1 ] ] )

                NumSignal sig ->
                    ( "clipExtent", numSpec (NumSignal sig) )

                NumSignals [ sigX0, sigY0, sigX1, sigY1 ] ->
                    ( "clipExtent", JE.list [ numSpec (NumSignals [ sigX0, sigY0 ]), numSpec (NumSignals [ sigX1, sigY1 ]) ] )

                _ ->
                    ( "clipExtent", JE.null ) |> Debug.log ("Warning: prClipExtent expecting list of 4 numbers but was given " ++ toString n)

        PrScale n ->
            ( "scale", numSpec n )

        PrTranslate n ->
            numArrayProperty 2 "translate" n

        PrCenter n ->
            ( "center", numSpec n )

        PrRotate n ->
            case n of
                Nums [ lambda, phi ] ->
                    ( "rotate", JE.list [ JE.float lambda, JE.float phi ] )

                Nums [ lambda, phi, gamma ] ->
                    ( "rotate", JE.list [ JE.float lambda, JE.float phi, JE.float gamma ] )

                NumSignal sig ->
                    ( "rotate", numSpec (NumSignal sig) )

                NumSignals [ sigLambda, sigPhi ] ->
                    ( "rotate", numSpec (NumSignals [ sigLambda, sigPhi ]) )

                NumSignals [ sigLambda, sigPhi, sigGamma ] ->
                    ( "rotate", numSpec (NumSignals [ sigLambda, sigPhi, sigGamma ]) )

                NumList [ numLambda, numPhi ] ->
                    ( "rotate", numSpec (NumList [ numLambda, numPhi ]) )

                NumList [ numLambda, numPhi, numGamma ] ->
                    ( "rotate", numSpec (NumList [ numLambda, numPhi, numGamma ]) )

                _ ->
                    ( "rotate", JE.null ) |> Debug.log ("Warning: prRotate expecting list of 2 or 3 numbers but was given " ++ toString n)

        PrPointRadius n ->
            ( "pointRadius", numSpec n )

        PrPrecision n ->
            ( "precision", numSpec n )

        PrFit feat ->
            case feat of
                FeName s ->
                    ( "fit", JE.object [ ( "signal", JE.string ("data('" ++ s ++ "')") ) ] )

                FeatureSignal s ->
                    ( "fit", JE.object [ ( "signal", JE.string s ) ] )

        PrExtent n ->
            case n of
                Nums [ x0, y0, x1, y1 ] ->
                    ( "extent", JE.list [ JE.list [ JE.float x0, JE.float y0 ], JE.list [ JE.float x1, JE.float y1 ] ] )

                NumSignal sig ->
                    ( "extent", numSpec (NumSignal sig) )

                NumSignals [ sigX0, sigY0, sigX1, sigY1 ] ->
                    ( "extent", JE.list [ numSpec (NumSignals [ sigX0, sigY0 ]), numSpec (NumSignals [ sigX1, sigY1 ]) ] )

                _ ->
                    ( "extent", JE.null ) |> Debug.log ("Warning: prExtent expecting list of 4 numbers but was given " ++ toString n)

        PrSize n ->
            numArrayProperty 2 "size" n

        PrCoefficient n ->
            ( "coefficient", numSpec n )

        PrDistance n ->
            ( "distance", numSpec n )

        PrFraction n ->
            ( "fraction", numSpec n )

        PrLobes n ->
            ( "lobes", numSpec n )

        PrParallel n ->
            ( "parallel", numSpec n )

        PrRadius n ->
            ( "radius", numSpec n )

        PrRatio n ->
            ( "ratio", numSpec n )

        PrSpacing n ->
            ( "spacing", numSpec n )

        PrTilt n ->
            ( "tilt", numSpec n )


projectionSpec : Projection -> Spec
projectionSpec proj =
    case proj of
        Proj s ->
            strSpec s

        ProjectionSignal sig ->
            JE.object [ signalReferenceProperty sig ]

        _ ->
            JE.string (projectionLabel proj)


scaleDomainSpec : ScaleDomain -> Spec
scaleDomainSpec sdType =
    case sdType of
        DoNums nums ->
            numSpec nums

        DoStrs cats ->
            strSpec cats

        DoData dataRef ->
            JE.object (List.map dataRefProperty dataRef)


scaleSpec : Scale -> Spec
scaleSpec scType =
    case scType of
        ScLinear ->
            JE.string "linear"

        ScPow ->
            JE.string "pow"

        ScSqrt ->
            JE.string "sqrt"

        ScLog ->
            JE.string "log"

        ScTime ->
            JE.string "time"

        ScUtc ->
            JE.string "utc"

        ScSequential ->
            JE.string "sequential"

        ScOrdinal ->
            JE.string "ordinal"

        ScBand ->
            JE.string "band"

        ScPoint ->
            JE.string "point"

        ScBinLinear ->
            JE.string "bin-linear"

        ScBinOrdinal ->
            JE.string "bin-ordinal"

        ScQuantile ->
            JE.string "quantile"

        ScQuantize ->
            JE.string "quantize"

        ScCustom s ->
            JE.string s

        ScaleSignal sig ->
            JE.object [ signalReferenceProperty sig ]


scaleProperty : ScaleProperty -> LabelledSpec
scaleProperty scaleProp =
    case scaleProp of
        SType sType ->
            ( "type", scaleSpec sType )

        SDomain sdType ->
            ( "domain", scaleDomainSpec sdType )

        SDomainMax sdMax ->
            ( "domainMax", numSpec sdMax )

        SDomainMin sdMin ->
            ( "domainMin", numSpec sdMin )

        SDomainMid sdMid ->
            ( "domainMid", numSpec sdMid )

        SDomainRaw sdRaw ->
            ( "domainRaw", valueSpec sdRaw )

        SRange range ->
            case range of
                RNums xs ->
                    ( "range", JE.list (List.map JE.float xs) )

                RStrs ss ->
                    ( "range", JE.list (List.map JE.string ss) )

                RValues vals ->
                    ( "range", JE.list (List.map valueSpec vals) )

                RSignal sig ->
                    ( "range", JE.object [ signalReferenceProperty sig ] )

                RScheme name options ->
                    ( "range", JE.object (List.map schemeProperty (SScheme name :: options)) )

                RData dRefs ->
                    ( "range", JE.object (List.map dataRefProperty dRefs) )

                RStep val ->
                    ( "range", JE.object [ ( "step", valueSpec val ) ] )

                RaWidth ->
                    ( "range", JE.string "width" )

                RaHeight ->
                    ( "range", JE.string "height" )

                RaSymbol ->
                    ( "range", JE.string "symbol" )

                RaCategory ->
                    ( "range", JE.string "category" )

                RaDiverging ->
                    ( "range", JE.string "diverging" )

                RaOrdinal ->
                    ( "range", JE.string "ordinal" )

                RaRamp ->
                    ( "range", JE.string "ramp" )

                RaHeatmap ->
                    ( "range", JE.string "heatmap" )

                RCustom name ->
                    ( "range", JE.string name )

                ScaleRangeSignal sig ->
                    ( "range", JE.object [ signalReferenceProperty sig ] )

        SPadding x ->
            ( "padding", numSpec x )

        SPaddingInner x ->
            ( "paddingInner", numSpec x )

        SPaddingOuter x ->
            ( "paddingOuter", numSpec x )

        SRangeStep x ->
            ( "rangeStep", numSpec x )

        SRound b ->
            ( "round", booSpec b )

        SClamp b ->
            ( "clamp", booSpec b )

        SInterpolate interp ->
            ( "interpolate", interpolateSpec interp )

        SNice ni ->
            ( "nice", niceSpec ni )

        SZero b ->
            ( "zero", booSpec b )

        SReverse b ->
            ( "reverse", booSpec b )

        SExponent x ->
            ( "exponent", numSpec x )

        SBase x ->
            ( "base", numSpec x )

        SAlign x ->
            ( "align", numSpec x )

        SDomainImplicit b ->
            ( "domainImplicit", booSpec b )


schemeProperty : ColorSchemeProperty -> LabelledSpec
schemeProperty sProps =
    case sProps of
        SScheme s ->
            ( "scheme", strSpec s )

        SCount n ->
            ( "count", numSpec n )

        SExtent n ->
            numArrayProperty 2 "extent" n


sideSpec : Side -> Spec
sideSpec orient =
    case orient of
        SLeft ->
            JE.string "left"

        SBottom ->
            JE.string "bottom"

        SRight ->
            JE.string "right"

        STop ->
            JE.string "top"

        SideSignal sig ->
            JE.object [ signalReferenceProperty sig ]


signalProperty : SignalProperty -> LabelledSpec
signalProperty sigProp =
    case sigProp of
        SiName siName ->
            ( "name", JE.string siName )

        SiBind bind ->
            bindingProperty bind

        SiDescription s ->
            ( "description", JE.string s )

        SiUpdate expr ->
            ( "update", expressionSpec expr )

        SiOn ehs ->
            ( "on", JE.list (List.map eventHandlerSpec ehs) )

        SiReact b ->
            ( "react", booSpec b )

        SiValue v ->
            ( "value", valueSpec v )

        SiPushOuter ->
            ( "push", JE.string "outer" )


signalReferenceProperty : String -> LabelledSpec
signalReferenceProperty sigRef =
    ( "signal", JE.string sigRef )


sortProperty : SortProperty -> LabelledSpec
sortProperty sp =
    case sp of
        Ascending ->
            ( "order", JE.string "ascending" )

        Descending ->
            ( "order", JE.string "descending" )

        ByField field ->
            ( "field", strSpec field )

        Op op ->
            ( "op", opSpec op )

        SortPropertySignal sig ->
            ( "order", JE.object [ signalReferenceProperty sig ] )


sourceProperty : Source -> LabelledSpec
sourceProperty src =
    case src of
        SData sName ->
            ( "data", strSpec sName )

        SFacet d name fcts ->
            ( "facet", JE.object (List.map facetProperty (FaData d :: FaName name :: fcts)) )


spiralSpec : Spiral -> Spec
spiralSpec sp =
    case sp of
        Archimedean ->
            JE.string "archimedean"

        Rectangular ->
            JE.string "rectangular"

        SpiralSignal sig ->
            JE.object [ signalReferenceProperty sig ]


stackOffsetSpec : StackOffset -> Spec
stackOffsetSpec off =
    case off of
        OfZero ->
            JE.string "zero"

        OfCenter ->
            JE.string "center"

        OfNormalize ->
            JE.string "normalize"

        StackOffsetSignal sig ->
            JE.object [ signalReferenceProperty sig ]


stackProperty : StackProperty -> LabelledSpec
stackProperty sp =
    case sp of
        StField f ->
            ( "field", fieldSpec f )

        StGroupBy fs ->
            ( "groupby", JE.list (List.map fieldSpec fs) )

        StSort comp ->
            ( "sort", JE.object (comparatorProperties comp) )

        StOffset off ->
            ( "offset", stackOffsetSpec off )

        StAs y0 y1 ->
            ( "as", JE.list (List.map JE.string [ y0, y1 ]) )


strSpec : Str -> Spec
strSpec str =
    case str of
        Str s ->
            JE.string s

        Strs ss ->
            JE.list (List.map JE.string ss)

        StrList ss ->
            JE.list (List.map strSpec ss)

        StrSignal sig ->
            JE.object [ signalReferenceProperty sig ]

        StrSignals sigs ->
            JE.list (List.map (\sig -> JE.object [ signalReferenceProperty sig ]) sigs)

        StrExpr expr ->
            JE.object [ exprProperty expr ]

        StrNull ->
            JE.null


strString : Str -> String
strString strVal =
    case strVal of
        Str s ->
            s

        Strs ss ->
            toString ss

        StrList ss ->
            case ss of
                [] ->
                    "[]"

                [ s ] ->
                    strString s

                _ ->
                    let
                        notLast =
                            ss |> List.reverse |> List.drop 1 |> List.reverse

                        lastStr =
                            ss |> List.reverse |> List.head |> Maybe.withDefault (str "")
                    in
                    "[" ++ (List.map (\s -> strString s ++ ",") notLast |> String.concat) ++ strString lastStr ++ "]"

        StrSignal sig ->
            "{'signal': '" ++ sig ++ "'}"

        StrSignals sigs ->
            toString sigs

        StrExpr ex ->
            toString ex

        StrNull ->
            "null"


symbolSpec : Symbol -> Spec
symbolSpec sym =
    case sym of
        SymbolSignal sig ->
            JE.object [ signalReferenceProperty sig ]

        _ ->
            JE.string (symbolLabel sym)


symbolLabel : Symbol -> String
symbolLabel sym =
    case sym of
        SymCircle ->
            "circle"

        SymSquare ->
            "square"

        SymCross ->
            "cross"

        SymDiamond ->
            "diamond"

        SymTriangleUp ->
            "triangle-up"

        SymTriangleDown ->
            "triangle-down"

        SymTriangleRight ->
            "triangle-right"

        SymTriangleLeft ->
            "triangle-left"

        SymPath svgPath ->
            svgPath

        SymbolSignal sig ->
            sig |> Debug.log "Warning: Attempting to provide a signal name to signalValue"


teMethodSpec : TreeMethod -> Spec
teMethodSpec m =
    case m of
        Tidy ->
            JE.string "tidy"

        Cluster ->
            JE.string "cluster"

        TreeMethodSignal sigName ->
            JE.object [ signalReferenceProperty sigName ]


timeUnitSpec : TimeUnit -> Spec
timeUnitSpec tu =
    let
        timeUnitLabel tu =
            case tu of
                Year ->
                    "year"

                Month ->
                    "month"

                Week ->
                    "week"

                Day ->
                    "day"

                Hour ->
                    "hour"

                Minute ->
                    "minute"

                Second ->
                    "second"

                Millisecond ->
                    "millisecond"

                -- Utc timeUnit ->
                --     "utc" ++ timeUnitLabel timeUnit
                TimeUnitSignal sig ->
                    ""

        -- This will never be called
    in
    case tu of
        TimeUnitSignal sig ->
            JE.object [ signalReferenceProperty sig ]

        _ ->
            JE.string (timeUnitLabel tu)


titleFrameSpec : TitleFrame -> Spec
titleFrameSpec tf =
    case tf of
        FrGroup ->
            JE.string "group"

        FrBounds ->
            JE.string "bounds"

        TitleFrameSignal sig ->
            JE.object [ signalReferenceProperty sig ]


titleProperty : TitleProperty -> LabelledSpec
titleProperty tProp =
    case tProp of
        TText s ->
            ( "text", strSpec s )

        TOrient s ->
            ( "orient", sideSpec s )

        TAnchor a ->
            ( "anchor", anchorSpec a )

        TAngle n ->
            ( "angle", numSpec n )

        TBaseline va ->
            ( "baseline", vAlignSpec va )

        TColor s ->
            ( "color", strSpec s )

        TEncode eps ->
            ( "encode", JE.object (List.map encodingProperty eps) )

        TFont s ->
            ( "font", strSpec s )

        TFontSize n ->
            ( "fontSize", numSpec n )

        TFontWeight v ->
            ( "fontWeight", valueSpec v )

        TFrame fr ->
            ( "fame", titleFrameSpec fr )

        TInteractive b ->
            ( "interactive", booSpec b )

        TLimit n ->
            ( "limit", numSpec n )

        TName s ->
            ( "name", JE.string s )

        TStyle s ->
            ( "style", strSpec s )

        TOffset n ->
            ( "offset", numSpec n )

        TZIndex n ->
            ( "zindex", numSpec n )


tmMethodSpec : TreemapMethod -> Spec
tmMethodSpec m =
    case m of
        Squarify ->
            JE.string "squarify"

        Resquarify ->
            JE.string "resquarify"

        Binary ->
            JE.string "binary"

        Dice ->
            JE.string "dice"

        Slice ->
            JE.string "slice"

        SliceDice ->
            JE.string "slicedice"

        TreemapMethodSignal sigName ->
            JE.object [ signalReferenceProperty sigName ]


topMarkProperty : TopMarkProperty -> List LabelledSpec
topMarkProperty mProp =
    case mProp of
        MType m ->
            [ ( "type", JE.string (markLabel m) ) ]

        MClip clip ->
            [ ( "clip", clipSpec clip ) ]

        MDescription s ->
            [ ( "description", JE.string s ) ]

        MEncode eps ->
            [ ( "encode", JE.object (List.map encodingProperty eps) ) ]

        MFrom src ->
            [ ( "from", JE.object (List.map sourceProperty src) ) ]

        MInteractive b ->
            [ ( "interactive", booSpec b ) ]

        MKey f ->
            [ ( "key", fieldSpec f ) ]

        MName s ->
            [ ( "name", JE.string s ) ]

        MOn triggers ->
            [ ( "on", JE.list triggers ) ]

        MRole s ->
            [ ( "role", JE.string s ) ]

        MSort comp ->
            [ ( "sort", JE.object (comparatorProperties comp) ) ]

        MTransform trans ->
            [ ( "transform", JE.list (List.map transformSpec trans) ) ]

        MStyle ss ->
            [ ( "style", JE.list (List.map JE.string ss) ) ]

        MGroup props ->
            List.map (\( vProp, spec ) -> ( vPropertyLabel vProp, spec )) props

        MTopZIndex n ->
            [ ( "zindex", numSpec n ) ]


transformSpec : Transform -> Spec
transformSpec trans =
    case trans of
        TAggregate aps ->
            JE.object (( "type", JE.string "aggregate" ) :: List.map aggregateProperty aps)

        TBin f extent bps ->
            let
                extSpec =
                    case extent of
                        Num _ ->
                            JE.null |> Debug.log ("trBin expecting an extent list but was given " ++ toString extent)

                        _ ->
                            numSpec extent
            in
            JE.object
                (( "type", JE.string "bin" )
                    :: ( "field", fieldSpec f )
                    :: ( "extent", extSpec )
                    :: List.map binProperty bps
                )

        TCollect comp ->
            JE.object [ ( "type", JE.string "collect" ), ( "sort", JE.object (comparatorProperties comp) ) ]

        TCountPattern f cpps ->
            JE.object
                (( "type", JE.string "countpattern" )
                    :: ( "field", fieldSpec f )
                    :: List.map countPatternProperty cpps
                )

        TCross cps ->
            JE.object (( "type", JE.string "cross" ) :: List.map crossProperty cps)

        TCrossFilter tuples ->
            let
                ( fs, nums ) =
                    List.unzip tuples
            in
            JE.object
                [ ( "type", JE.string "crossfilter" )
                , ( "fields", JE.list (List.map fieldSpec fs) )
                , ( "query", JE.list (List.map numSpec nums) )
                ]

        TCrossFilterAsSignal tuples s ->
            let
                ( fs, nums ) =
                    List.unzip tuples
            in
            JE.object
                [ ( "type", JE.string "crossfilter" )
                , ( "fields", JE.list (List.map fieldSpec fs) )
                , ( "query", JE.list (List.map numSpec nums) )
                , ( "signal", JE.string s )
                ]

        TDensity dist dnps ->
            JE.object
                (( "type", JE.string "density" )
                    :: ( "distribution", distributionSpec dist )
                    :: List.map densityProperty dnps
                )

        TExtent field ->
            JE.object
                [ ( "type", JE.string "extent" )
                , ( "field", fieldSpec field )
                ]

        TExtentAsSignal field sigName ->
            JE.object
                [ ( "type", JE.string "extent" )
                , ( "field", fieldSpec field )
                , ( "signal", JE.string sigName )
                ]

        TFilter expr ->
            JE.object [ ( "type", JE.string "filter" ), exprProperty expr ]

        TFlatten fs ->
            JE.object [ ( "type", JE.string "flatten" ), ( "fields", JE.list (List.map fieldSpec fs) ) ]

        TFlattenAs fs ss ->
            JE.object
                [ ( "type", JE.string "flatten" )
                , ( "fields", JE.list (List.map fieldSpec fs) )
                , ( "as", JE.list (List.map JE.string ss) )
                ]

        TFold fs ->
            case fs of
                [ f ] ->
                    JE.object [ ( "type", JE.string "fold" ), ( "fields", fieldSpec f ) ]

                _ ->
                    JE.object [ ( "type", JE.string "fold" ), ( "fields", JE.list (List.map fieldSpec fs) ) ]

        TFoldAs fs k v ->
            case fs of
                [ f ] ->
                    JE.object
                        [ ( "type", JE.string "fold" )
                        , ( "fields", fieldSpec f )
                        , ( "as", JE.list [ JE.string k, JE.string v ] )
                        ]

                _ ->
                    JE.object
                        [ ( "type", JE.string "fold" )
                        , ( "fields", JE.list (List.map fieldSpec fs) )
                        , ( "as", JE.list [ JE.string k, JE.string v ] )
                        ]

        TFormula expr name update ->
            JE.object
                [ ( "type", JE.string "formula" )
                , ( "expr", expressionSpec expr )
                , ( "as", JE.string name )
                , ( "initonly", formulaUpdateSpec update )
                ]

        TIdentifier s ->
            JE.object [ ( "type", JE.string "identifier" ), ( "as", JE.string s ) ]

        TImpute f key ips ->
            JE.object
                (( "type", JE.string "impute" )
                    :: ( "field", fieldSpec f )
                    :: ( "key", fieldSpec key )
                    :: List.map imputeProperty ips
                )

        TJoinAggregate japs ->
            JE.object
                (( "type", JE.string "joinaggregate" )
                    :: List.map joinAggregateProperty japs
                )

        TLookup from key fields lups ->
            JE.object
                (( "type", JE.string "lookup" )
                    :: ( "from", JE.string from )
                    :: ( "key", fieldSpec key )
                    :: ( "fields", JE.list (List.map fieldSpec fields) )
                    :: List.map lookupProperty lups
                )

        TPivot f v pps ->
            JE.object
                (( "type", JE.string "pivot" )
                    :: ( "field", fieldSpec f )
                    :: ( "value", fieldSpec v )
                    :: List.map pivotProperty pps
                )

        TProject fns ->
            let
                ( fields, names ) =
                    List.unzip fns
            in
            JE.object
                [ ( "type", JE.string "project" )
                , ( "fields", JE.list (List.map fieldSpec fields) )
                , ( "as", JE.list (List.map JE.string names) )
                ]

        TSample n ->
            JE.object [ ( "type", JE.string "sample" ), ( "size", numSpec n ) ]

        TSequence start stop step ->
            let
                stepProp =
                    case step of
                        NumNull ->
                            []

                        Num 0 ->
                            []

                        Nums [] ->
                            []

                        NumList [] ->
                            []

                        _ ->
                            [ ( "step", numSpec step ) ]
            in
            JE.object
                ([ ( "type", JE.string "sequence" )
                 , ( "start", numSpec start )
                 , ( "stop", numSpec stop )
                 ]
                    ++ stepProp
                )

        TWindow wos wps ->
            JE.object
                (( "type", JE.string "window" )
                    :: windowOperationProperties wos
                    ++ List.map windowProperty wps
                )

        TContour x y cps ->
            JE.object
                (( "type", JE.string "contour" )
                    :: ( "size", JE.list [ numSpec x, numSpec y ] )
                    :: List.map contourProperty cps
                )

        TGeoJson gjps ->
            JE.object
                (( "type", JE.string "geojson" )
                    :: List.map geoJsonProperty gjps
                )

        TGeoPath pName gpps ->
            case pName of
                "" ->
                    JE.object
                        (( "type", JE.string "geopath" )
                            :: List.map geoPathProperty gpps
                        )

                _ ->
                    JE.object
                        (( "type", JE.string "geopath" )
                            :: ( "projection", JE.string pName )
                            :: List.map geoPathProperty gpps
                        )

        TGeoPoint pName fLon fLat ->
            JE.object
                [ ( "type", JE.string "geopoint" )
                , ( "projection", JE.string pName )
                , ( "fields", JE.list [ fieldSpec fLon, fieldSpec fLat ] )
                ]

        TGeoPointAs pName fLon fLat asLon asLat ->
            JE.object
                [ ( "type", JE.string "geopoint" )
                , ( "projection", JE.string pName )
                , ( "fields", JE.list [ fieldSpec fLon, fieldSpec fLat ] )
                , ( "as", JE.list [ JE.string asLon, JE.string asLat ] )
                ]

        TGeoShape pName gsps ->
            case pName of
                "" ->
                    JE.object
                        (( "type", JE.string "geoshape" )
                            :: List.map geoPathProperty gsps
                        )

                _ ->
                    JE.object
                        (( "type", JE.string "geoshape" )
                            :: ( "projection", JE.string pName )
                            :: List.map geoPathProperty gsps
                        )

        TGraticule grps ->
            JE.object (( "type", JE.string "graticule" ) :: List.map graticuleProperty grps)

        TLinkPath lpps ->
            JE.object (( "type", JE.string "linkpath" ) :: List.map linkPathProperty lpps)

        TPie pps ->
            JE.object (( "type", JE.string "pie" ) :: List.map pieProperty pps)

        TStack sps ->
            JE.object (( "type", JE.string "stack" ) :: List.map stackProperty sps)

        TForce fps ->
            JE.object (( "type", JE.string "force" ) :: List.map forceSimulationProperty fps)

        TVoronoi x y vps ->
            JE.object
                (( "type", JE.string "voronoi" )
                    :: ( "x", fieldSpec x )
                    :: ( "y", fieldSpec y )
                    :: List.map voronoiProperty vps
                )

        TWordcloud wcps ->
            JE.object (( "type", JE.string "wordcloud" ) :: List.map wordcloudProperty wcps)

        TNest fs b ->
            JE.object
                [ ( "type", JE.string "nest" )
                , ( "keys", JE.list (List.map fieldSpec fs) )
                , ( "generate", booSpec b )
                ]

        TStratify key parent ->
            JE.object
                [ ( "type", JE.string "stratify" )
                , ( "key", fieldSpec key )
                , ( "parentKey", fieldSpec parent )
                ]

        TTreeLinks ->
            JE.object [ ( "type", JE.string "treelinks" ) ]

        TPack pps ->
            JE.object (( "type", JE.string "pack" ) :: List.map packProperty pps)

        TPartition pps ->
            JE.object (( "type", JE.string "partition" ) :: List.map partitionProperty pps)

        TTree tps ->
            JE.object (( "type", JE.string "tree" ) :: List.map treeProperty tps)

        TTreemap tps ->
            JE.object (( "type", JE.string "treemap" ) :: List.map treemapProperty tps)

        TResolveFilter sig bitmask ->
            JE.object
                [ ( "type", JE.string "resolvefilter" )
                , ( "filter", JE.object [ ( "signal", JE.string sig ) ] )
                , ( "ignore", numSpec bitmask )
                ]


transpose : List (List a) -> List (List a)
transpose ll =
    case ll of
        [] ->
            []

        [] :: xss ->
            transpose xss

        (x :: xs) :: xss ->
            let
                heads =
                    List.filterMap List.head xss

                tails =
                    List.filterMap List.tail xss
            in
            (x :: heads) :: transpose (xs :: tails)


treemapProperty : TreemapProperty -> LabelledSpec
treemapProperty tp =
    case tp of
        TmField f ->
            ( "field", fieldSpec f )

        TmSort comp ->
            ( "sort", JE.object (comparatorProperties comp) )

        TmMethod m ->
            ( "method", tmMethodSpec m )

        TmPadding n ->
            ( "padding", numSpec n )

        TmPaddingInner n ->
            ( "paddingInner", numSpec n )

        TmPaddingOuter n ->
            ( "paddingOuter", numSpec n )

        TmPaddingTop n ->
            ( "paddingTop", numSpec n )

        TmPaddingRight n ->
            ( "paddingRight", numSpec n )

        TmPaddingBottom n ->
            ( "paddingBottom", numSpec n )

        TmPaddingLeft n ->
            ( "paddingLeft", numSpec n )

        TmRatio n ->
            ( "ratio", numSpec n )

        TmRound b ->
            ( "round", booSpec b )

        TmSize n ->
            numArrayProperty 2 "size" n

        TmAs x0 y0 x1 y1 depth children ->
            ( "as", JE.list [ JE.string x0, JE.string y0, JE.string x1, JE.string y1, JE.string depth, JE.string children ] )


treeProperty : TreeProperty -> LabelledSpec
treeProperty tp =
    case tp of
        TeField f ->
            ( "field", fieldSpec f )

        TeSort comp ->
            ( "sort", JE.object (comparatorProperties comp) )

        TeMethod m ->
            ( "method", teMethodSpec m )

        TeSize n ->
            numArrayProperty 2 "size" n

        TeNodeSize n ->
            numArrayProperty 2 "nodeSize" n

        TeAs x y depth children ->
            ( "as", JE.list [ JE.string x, JE.string y, JE.string depth, JE.string children ] )


triggerProperties : TriggerProperty -> List LabelledSpec
triggerProperties trans =
    case trans of
        TgTrigger expr ->
            [ ( "trigger", expressionSpec expr ) ]

        TgInsert expr ->
            [ ( "insert", expressionSpec expr ) ]

        TgRemove expr ->
            [ ( "remove", expressionSpec expr ) ]

        TgRemoveAll ->
            [ ( "remove", JE.bool True ) ]

        TgToggle expr ->
            [ ( "toggle", expressionSpec expr ) ]

        -- Note the one-to-many relation between this trigger property and the labelled specs it generates.
        TgModifyValues modExpr valExpr ->
            [ ( "modify", expressionSpec modExpr ), ( "values", expressionSpec valExpr ) ]


valIfElse : String -> List Value -> List Value -> List Spec -> List Spec
valIfElse ex ifVals elseVals ifSpecs =
    case elseVals of
        [ VIfElse ex2 ifVals2 elseVals2 ] ->
            valIfElse ex2 ifVals2 elseVals2 (ifSpecs ++ [ JE.object (( "test", JE.string ex2 ) :: List.concatMap valueProperties ifVals2) ])

        _ ->
            ifSpecs ++ [ valRef elseVals ]


vAlignSpec : VAlign -> Spec
vAlignSpec align =
    case align of
        AlignTop ->
            JE.string "top"

        AlignMiddle ->
            JE.string "middle"

        AlignBottom ->
            JE.string "bottom"

        Alphabetic ->
            JE.string "alphabetic"

        VAlignSignal sig ->
            JE.object [ signalReferenceProperty sig ]


valRef : List Value -> Spec
valRef vs =
    case vs of
        [ VIfElse ex ifs elses ] ->
            JE.list (valIfElse ex ifs elses [ JE.object (( "test", JE.string ex ) :: List.concatMap valueProperties ifs) ])

        _ ->
            JE.object (List.concatMap valueProperties vs)


valueProperties : Value -> List LabelledSpec
valueProperties val =
    case val of
        VStr str ->
            [ ( "value", JE.string str ) ]

        VStrs strs ->
            [ ( "value", JE.list (List.map JE.string strs) ) ]

        VSignal sig ->
            [ signalReferenceProperty sig ]

        VColor cVal ->
            [ colorProperty cVal ]

        VField fVal ->
            [ ( "field", fieldSpec fVal ) ]

        VScale fVal ->
            [ ( "scale", fieldSpec fVal ) ]

        VKeyValue key val ->
            [ ( key, valueSpec val ) ]

        VBand n ->
            [ ( "band", numSpec n ) ]

        VExponent val ->
            [ ( "exponent", valueSpec val ) ]

        VMultiply val ->
            [ ( "mult", valueSpec val ) ]

        VOffset val ->
            [ ( "offset", valueSpec val ) ]

        VRound b ->
            [ ( "round", booSpec b ) ]

        VNum num ->
            [ ( "value", JE.float num ) ]

        VNums nums ->
            [ ( "value", JE.list (List.map JE.float nums) ) ]

        VObject vals ->
            [ ( "value", JE.object (List.concatMap valueProperties vals) ) ]

        Values vals ->
            [ ( "value", JE.list (List.map valueSpec vals) ) ]

        VBoo b ->
            [ ( "value", JE.bool b ) ]

        VBoos bs ->
            [ ( "value", JE.list (List.map JE.bool bs) ) ]

        VNull ->
            [ ( "value", JE.null ) ]

        VIfElse expr ifs elses ->
            ( "test", JE.string expr ) :: List.concatMap valueProperties ifs


valueSpec : Value -> Spec
valueSpec val =
    case val of
        VStr str ->
            JE.string str

        VStrs strs ->
            JE.list (List.map JE.string strs)

        VSignal sig ->
            JE.object [ signalReferenceProperty sig ]

        VColor cVal ->
            JE.object [ colorProperty cVal ]

        VField fName ->
            fieldSpec fName

        VScale fName ->
            fieldSpec fName

        VBand n ->
            JE.object [ ( "band", numSpec n ) ]

        VExponent val ->
            JE.object [ ( "exponent", valueSpec val ) ]

        VMultiply val ->
            JE.object [ ( "mult", valueSpec val ) ]

        VOffset val ->
            JE.object [ ( "offset", valueSpec val ) ]

        VRound b ->
            JE.object [ ( "round", booSpec b ) ]

        VNum num ->
            JE.float num

        VNums nums ->
            JE.list (List.map JE.float nums)

        VKeyValue key val ->
            JE.object [ ( key, valueSpec val ) ]

        VObject objs ->
            JE.object (List.concatMap valueProperties objs)

        Values objs ->
            JE.list (List.map valueSpec objs)

        VBoo b ->
            JE.bool b

        VBoos bs ->
            JE.list (List.map JE.bool bs)

        VNull ->
            JE.null

        VIfElse expr ifs elses ->
            JE.null


voronoiProperty : VoronoiProperty -> LabelledSpec
voronoiProperty vp =
    let
        numPairSpec ns =
            case ns of
                Nums [ _, _ ] ->
                    numSpec ns

                NumSignal _ ->
                    numSpec ns

                NumSignals [ _, _ ] ->
                    numSpec ns

                NumList [ _, _ ] ->
                    numSpec ns

                _ ->
                    JE.null |> Debug.log ("Warning: voProperty expecting list of 2 numbers but was given " ++ toString ns)
    in
    case vp of
        VoExtent tl br ->
            ( "extent", JE.list [ numPairSpec tl, numPairSpec br ] )

        VoSize sz ->
            ( "size", numPairSpec sz )

        VoAs s ->
            ( "as", JE.string s )


vPropertyLabel : VProperty -> String
vPropertyLabel spec =
    case spec of
        VDescription ->
            "description"

        VBackground ->
            "background"

        VTitle ->
            "title"

        VWidth ->
            "width"

        VAutosize ->
            "autosize"

        VHeight ->
            "height"

        VPadding ->
            "padding"

        VConfig ->
            "config"

        VSignals ->
            "signals"

        VData ->
            "data"

        VScales ->
            "scales"

        VProjections ->
            "projections"

        VAxes ->
            "axes"

        VLegends ->
            "legends"

        VMarks ->
            "marks"

        VEncode ->
            "encode"

        --TODO: Why isn't layout listed as a top-level specification property at
        -- https://vega.github.io/vega/docs/specification/
        VLayout ->
            "layout"


windowOperationProperties : List WindowOperation -> List LabelledSpec
windowOperationProperties wos =
    let
        windowOpSpec wo =
            case wo of
                WnOperation wOp _ _ _ ->
                    wOperationSpec wOp

                WnAggOperation aOp _ _ _ ->
                    opSpec aOp

        windowParamSpec wo =
            case wo of
                WnOperation _ mn _ _ ->
                    case mn of
                        Just n ->
                            numSpec n

                        Nothing ->
                            JE.null

                WnAggOperation _ mn _ _ ->
                    case mn of
                        Just n ->
                            numSpec n

                        Nothing ->
                            JE.null

        windowFieldSpec wo =
            case wo of
                WnOperation _ _ mf _ ->
                    case mf of
                        Just f ->
                            fieldSpec f

                        Nothing ->
                            JE.null

                WnAggOperation _ _ mf _ ->
                    case mf of
                        Just f ->
                            fieldSpec f

                        Nothing ->
                            JE.null

        windowAsSpec wo =
            case wo of
                WnOperation _ _ _ s ->
                    JE.string s

                WnAggOperation _ _ _ s ->
                    JE.string s
    in
    [ ( "ops", JE.list (List.map windowOpSpec wos) )
    , ( "params", JE.list (List.map windowParamSpec wos) )
    , ( "fields", JE.list (List.map windowFieldSpec wos) )
    , ( "as", JE.list (List.map windowAsSpec wos) )
    ]


wOperationSpec : WOperation -> Spec
wOperationSpec wnOp =
    case wnOp of
        RowNumber ->
            JE.string "row_number"

        Rank ->
            JE.string "rank"

        DenseRank ->
            JE.string "dense_rank"

        PercentRank ->
            JE.string "percent_rank"

        CumeDist ->
            JE.string "cume_dist"

        Ntile ->
            JE.string "ntile"

        Lag ->
            JE.string "lag"

        Lead ->
            JE.string "lead"

        FirstValue ->
            JE.string "first_value"

        LastValue ->
            JE.string "last_value"

        NthValue ->
            JE.string "nth_value"

        WOperationSignal sigName ->
            JE.object [ signalReferenceProperty sigName ]


windowProperty : WindowProperty -> LabelledSpec
windowProperty wp =
    case wp of
        WnSort comp ->
            ( "sort", JE.object (comparatorProperties comp) )

        WnGroupBy fs ->
            ( "groupby", JE.list (List.map fieldSpec fs) )

        WnFrame n ->
            numArrayProperty 2 "frame" n

        WnIgnorePeers b ->
            ( "ignorePeers", booSpec b )


wordcloudProperty : WordcloudProperty -> LabelledSpec
wordcloudProperty wcp =
    case wcp of
        WcFont s ->
            ( "font", strSpec s )

        WcFontStyle s ->
            ( "fontStyle", strSpec s )

        WcFontWeight s ->
            ( "fontWeight", strSpec s )

        WcFontSize n ->
            ( "fontSize", numSpec n )

        WcFontSizeRange ns ->
            numArrayProperty 2 "fontSizeRange" ns

        WcPadding n ->
            ( "padding", numSpec n )

        WcRotate n ->
            ( "rotate", numSpec n )

        WcText f ->
            ( "text", fieldSpec f )

        WcSize ns ->
            numArrayProperty 2 "size" ns

        WcSpiral sp ->
            ( "spiral", spiralSpec sp )

        WcAs x y fnt fntSz fntSt fntW angle ->
            ( "as", JE.list (List.map JE.string [ x, y, fnt, fntSz, fntSt, fntW, angle ]) )
