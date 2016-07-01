.class public abstract Ljavafx/scene/chart/Chart;
.super Ljavafx/scene/layout/Region;
.source "Chart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/chart/Chart$StyleableProperties;
    }
.end annotation


# static fields
.field private static final MIN_HEIGHT_TO_LEAVE_FOR_CHART_CONTENT:I = 0x96

.field private static final MIN_WIDTH_TO_LEAVE_FOR_CHART_CONTENT:I = 0xc8


# instance fields
.field private animated:Ljavafx/beans/property/BooleanProperty;

.field private final animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

.field private final chartContent:Ljavafx/scene/layout/Pane;

.field private final legend:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private legendSide:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation
.end field

.field private final legendVisible:Ljavafx/beans/property/BooleanProperty;

.field private title:Ljavafx/beans/property/StringProperty;

.field private final titleLabel:Ljavafx/scene/control/Label;

.field private titleSide:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation
.end field

.field useChartContentMirroring:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Region;-><init>()V

    .line 79
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Label;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v2, v1, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    .line 84
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Chart$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/chart/Chart$1;-><init>(Ljavafx/scene/chart/Chart;)V

    iput-object v2, v1, Ljavafx/scene/chart/Chart;->chartContent:Ljavafx/scene/layout/Pane;

    .line 101
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/chart/Chart;->useChartContentMirroring:Z

    .line 104
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/charts/ChartLayoutAnimator;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/Chart;->chartContent:Ljavafx/scene/layout/Pane;

    invoke-direct {v3, v4}, Lcom/sun/javafx/charts/ChartLayoutAnimator;-><init>(Ljavafx/scene/Parent;)V

    iput-object v2, v1, Ljavafx/scene/chart/Chart;->animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

    .line 109
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Chart$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/chart/Chart$2;-><init>(Ljavafx/scene/chart/Chart;)V

    iput-object v2, v1, Ljavafx/scene/chart/Chart;->title:Ljavafx/beans/property/StringProperty;

    .line 132
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Chart$3;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/Chart$3;-><init>(Ljavafx/scene/chart/Chart;Ljavafx/geometry/Side;)V

    iput-object v2, v1, Ljavafx/scene/chart/Chart;->titleSide:Ljavafx/beans/property/ObjectProperty;

    .line 160
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Chart$4;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/chart/Chart$4;-><init>(Ljavafx/scene/chart/Chart;)V

    iput-object v2, v1, Ljavafx/scene/chart/Chart;->legend:Ljavafx/beans/property/ObjectProperty;

    .line 189
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Chart$5;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/Chart$5;-><init>(Ljavafx/scene/chart/Chart;Z)V

    iput-object v2, v1, Ljavafx/scene/chart/Chart;->legendVisible:Ljavafx/beans/property/BooleanProperty;

    .line 218
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Chart$6;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/Chart$6;-><init>(Ljavafx/scene/chart/Chart;Ljavafx/geometry/Side;)V

    iput-object v2, v1, Ljavafx/scene/chart/Chart;->legendSide:Ljavafx/beans/property/ObjectProperty;

    .line 246
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "animated"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/chart/Chart;->animated:Ljavafx/beans/property/BooleanProperty;

    .line 275
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    sget-object v2, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Label;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 276
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v1}, Ljavafx/scene/control/Label;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    invoke-static {}, Ljavafx/application/Platform;->accessibilityActiveProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 277
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Chart;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljavafx/scene/Node;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/Chart;->chartContent:Ljavafx/scene/layout/Pane;

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 278
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Chart;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "chart"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 279
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v1}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "chart-title"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 280
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->chartContent:Ljavafx/scene/layout/Pane;

    invoke-virtual {v1}, Ljavafx/scene/layout/Pane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "chart-content"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 282
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->chartContent:Ljavafx/scene/layout/Pane;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/Pane;->setManaged(Z)V

    .line 283
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/chart/Chart;)Ljavafx/scene/control/Label;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/chart/Chart;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Chart;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/chart/Chart;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Chart;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/chart/Chart;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->titleSide:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/chart/Chart;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->legendSide:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/chart/Chart;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->legendVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 499
    # getter for: Ljavafx/scene/chart/Chart$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/chart/Chart$StyleableProperties;->access$900()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected animate(Ljavafx/animation/Animation;)V
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, p1

    .local v1, "animation":Ljavafx/animation/Animation;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Chart;->animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->animate(Ljavafx/animation/Animation;)Ljava/lang/Object;

    move-result-object v2

    return-void
.end method

.method varargs animate([Ljavafx/animation/KeyFrame;)V
    .locals 4

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, p1

    .local v1, "keyFrames":[Ljavafx/animation/KeyFrame;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Chart;->animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->animate([Ljavafx/animation/KeyFrame;)Ljava/lang/Object;

    move-result-object v2

    return-void
.end method

.method public final animatedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->animated:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method protected computeMinHeight(D)D
    .locals 7

    .prologue
    .line 412
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/Chart;
    move-wide v2, p1

    .local v2, "width":D
    const-wide v4, 0x4062c00000000000L    # 150.0

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/chart/Chart;
    return-wide v1
.end method

.method protected computeMinWidth(D)D
    .locals 7

    .prologue
    .line 418
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/Chart;
    move-wide v2, p1

    .local v2, "height":D
    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/chart/Chart;
    return-wide v1
.end method

.method protected computePrefHeight(D)D
    .locals 7

    .prologue
    .line 430
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/Chart;
    move-wide v2, p1

    .local v2, "width":D
    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/chart/Chart;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 7

    .prologue
    .line 424
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/Chart;
    move-wide v2, p1

    .local v2, "height":D
    const-wide v4, 0x407f400000000000L    # 500.0

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/chart/Chart;
    return-wide v1
.end method

.method public final getAnimated()Z
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->animated:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return v0
.end method

.method protected getChartChildren()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->chartContent:Ljavafx/scene/layout/Pane;

    invoke-virtual {v1}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method public getCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    invoke-static {}, Ljavafx/scene/chart/Chart;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method protected final getLegend()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->legend:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method public final getLegendSide()Ljavafx/geometry/Side;
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->legendSide:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Side;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->title:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method public final getTitleSide()Ljavafx/geometry/Side;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->titleSide:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Side;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method public final isLegendVisible()Z
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->legendVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return v0
.end method

.method protected abstract layoutChartChildren(DDDD)V
.end method

.method protected layoutChildren()V
    .locals 33

    .prologue
    .line 330
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/chart/Chart;
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->snappedTopInset()D

    move-result-wide v22

    move-wide/from16 v4, v22

    .line 331
    .local v4, "top":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->snappedLeftInset()D

    move-result-wide v22

    move-wide/from16 v6, v22

    .line 332
    .local v6, "left":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->snappedBottomInset()D

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 333
    .local v8, "bottom":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->snappedRightInset()D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 334
    .local v10, "right":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->getWidth()D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 335
    .local v12, "width":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->getHeight()D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 337
    .local v14, "height":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->getTitle()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 338
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljavafx/scene/control/Label;->setVisible(Z)V

    .line 339
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->getTitleSide()Ljavafx/geometry/Side;

    move-result-object v22

    sget-object v23, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    invoke-virtual/range {v22 .. v23}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 340
    move-object/from16 v22, v3

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    move-object/from16 v23, v0

    move-wide/from16 v24, v12

    move-wide/from16 v26, v6

    sub-double v24, v24, v26

    move-wide/from16 v26, v10

    sub-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/chart/Chart;->snapSize(D)D

    move-result-wide v22

    move-wide/from16 v16, v22

    .line 341
    .local v16, "titleHeight":D
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    move-object/from16 v22, v0

    move-wide/from16 v23, v6

    move-wide/from16 v25, v4

    move-wide/from16 v27, v12

    move-wide/from16 v29, v6

    sub-double v27, v27, v29

    move-wide/from16 v29, v10

    sub-double v27, v27, v29

    move-wide/from16 v29, v16

    invoke-virtual/range {v22 .. v30}, Ljavafx/scene/control/Label;->resizeRelocate(DDDD)V

    .line 342
    move-wide/from16 v22, v4

    move-wide/from16 v24, v16

    add-double v22, v22, v24

    move-wide/from16 v4, v22

    .line 360
    .end local v16    # "titleHeight":D
    :cond_0
    :goto_0
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->getLegend()Ljavafx/scene/Node;

    move-result-object v22

    move-object/from16 v16, v22

    .line 361
    .local v16, "legend":Ljavafx/scene/Node;
    move-object/from16 v22, v16

    if-eqz v22, :cond_2

    .line 362
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->isLegendVisible()Z

    move-result v22

    move/from16 v17, v22

    .line 363
    .local v17, "shouldShowLegend":Z
    move/from16 v22, v17

    if-eqz v22, :cond_1

    .line 364
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->getLegendSide()Ljavafx/geometry/Side;

    move-result-object v22

    sget-object v23, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 365
    move-object/from16 v22, v3

    move-object/from16 v23, v16

    move-wide/from16 v24, v12

    move-wide/from16 v26, v6

    sub-double v24, v24, v26

    move-wide/from16 v26, v10

    sub-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/chart/Chart;->snapSize(D)D

    move-result-wide v22

    move-wide/from16 v18, v22

    .line 366
    .local v18, "legendHeight":D
    move-object/from16 v22, v3

    move-object/from16 v23, v16

    move-wide/from16 v24, v18

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/chart/Chart;->snapSize(D)D

    move-result-wide v22

    const-wide/16 v24, 0x0

    move-wide/from16 v26, v12

    move-wide/from16 v28, v6

    sub-double v26, v26, v28

    move-wide/from16 v28, v10

    sub-double v26, v26, v28

    invoke-static/range {v22 .. v27}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 367
    .local v20, "legendWidth":D
    move-object/from16 v22, v16

    move-wide/from16 v23, v6

    move-wide/from16 v25, v12

    move-wide/from16 v27, v6

    sub-double v25, v25, v27

    move-wide/from16 v27, v10

    sub-double v25, v25, v27

    move-wide/from16 v27, v20

    sub-double v25, v25, v27

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    div-double v25, v25, v27

    add-double v23, v23, v25

    move-wide/from16 v25, v4

    move-wide/from16 v27, v20

    move-wide/from16 v29, v18

    invoke-virtual/range {v22 .. v30}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 368
    move-wide/from16 v22, v14

    move-wide/from16 v24, v8

    sub-double v22, v22, v24

    move-wide/from16 v24, v4

    sub-double v22, v22, v24

    move-wide/from16 v24, v18

    sub-double v22, v22, v24

    const-wide v24, 0x4062c00000000000L    # 150.0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_7

    .line 369
    const/16 v22, 0x0

    move/from16 v17, v22

    .line 373
    .line 402
    .end local v18    # "legendHeight":D
    .end local v20    # "legendWidth":D
    :cond_1
    :goto_1
    move-object/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v22 .. v23}, Ljavafx/scene/Node;->setVisible(Z)V

    .line 405
    .end local v17    # "shouldShowLegend":Z
    :cond_2
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/chart/Chart;->chartContent:Ljavafx/scene/layout/Pane;

    move-object/from16 v22, v0

    move-wide/from16 v23, v6

    move-wide/from16 v25, v4

    move-wide/from16 v27, v12

    move-wide/from16 v29, v6

    sub-double v27, v27, v29

    move-wide/from16 v29, v10

    sub-double v27, v27, v29

    move-wide/from16 v29, v14

    move-wide/from16 v31, v4

    sub-double v29, v29, v31

    move-wide/from16 v31, v8

    sub-double v29, v29, v31

    invoke-virtual/range {v22 .. v30}, Ljavafx/scene/layout/Pane;->resizeRelocate(DDDD)V

    .line 406
    return-void

    .line 343
    .end local v16    # "legend":Ljavafx/scene/Node;
    :cond_3
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->getTitleSide()Ljavafx/geometry/Side;

    move-result-object v22

    sget-object v23, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-virtual/range {v22 .. v23}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 344
    move-object/from16 v22, v3

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    move-object/from16 v23, v0

    move-wide/from16 v24, v12

    move-wide/from16 v26, v6

    sub-double v24, v24, v26

    move-wide/from16 v26, v10

    sub-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/chart/Chart;->snapSize(D)D

    move-result-wide v22

    move-wide/from16 v16, v22

    .line 345
    .local v16, "titleHeight":D
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    move-object/from16 v22, v0

    move-wide/from16 v23, v6

    move-wide/from16 v25, v14

    move-wide/from16 v27, v8

    sub-double v25, v25, v27

    move-wide/from16 v27, v16

    sub-double v25, v25, v27

    move-wide/from16 v27, v12

    move-wide/from16 v29, v6

    sub-double v27, v27, v29

    move-wide/from16 v29, v10

    sub-double v27, v27, v29

    move-wide/from16 v29, v16

    invoke-virtual/range {v22 .. v30}, Ljavafx/scene/control/Label;->resizeRelocate(DDDD)V

    .line 346
    move-wide/from16 v22, v8

    move-wide/from16 v24, v16

    add-double v22, v22, v24

    move-wide/from16 v8, v22

    .line 347
    goto/16 :goto_0

    .end local v16    # "titleHeight":D
    :cond_4
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->getTitleSide()Ljavafx/geometry/Side;

    move-result-object v22

    sget-object v23, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    invoke-virtual/range {v22 .. v23}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 348
    move-object/from16 v22, v3

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    move-object/from16 v23, v0

    move-wide/from16 v24, v14

    move-wide/from16 v26, v4

    sub-double v24, v24, v26

    move-wide/from16 v26, v8

    sub-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/control/Label;->prefWidth(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/chart/Chart;->snapSize(D)D

    move-result-wide v22

    move-wide/from16 v16, v22

    .line 349
    .local v16, "titleWidth":D
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    move-object/from16 v22, v0

    move-wide/from16 v23, v6

    move-wide/from16 v25, v4

    move-wide/from16 v27, v16

    move-wide/from16 v29, v14

    move-wide/from16 v31, v4

    sub-double v29, v29, v31

    move-wide/from16 v31, v8

    sub-double v29, v29, v31

    invoke-virtual/range {v22 .. v30}, Ljavafx/scene/control/Label;->resizeRelocate(DDDD)V

    .line 350
    move-wide/from16 v22, v6

    move-wide/from16 v24, v16

    add-double v22, v22, v24

    move-wide/from16 v6, v22

    .line 351
    goto/16 :goto_0

    .end local v16    # "titleWidth":D
    :cond_5
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->getTitleSide()Ljavafx/geometry/Side;

    move-result-object v22

    sget-object v23, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    invoke-virtual/range {v22 .. v23}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 352
    move-object/from16 v22, v3

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    move-object/from16 v23, v0

    move-wide/from16 v24, v14

    move-wide/from16 v26, v4

    sub-double v24, v24, v26

    move-wide/from16 v26, v8

    sub-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/control/Label;->prefWidth(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/chart/Chart;->snapSize(D)D

    move-result-wide v22

    move-wide/from16 v16, v22

    .line 353
    .restart local v16    # "titleWidth":D
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    move-object/from16 v22, v0

    move-wide/from16 v23, v12

    move-wide/from16 v25, v10

    sub-double v23, v23, v25

    move-wide/from16 v25, v16

    sub-double v23, v23, v25

    move-wide/from16 v25, v4

    move-wide/from16 v27, v16

    move-wide/from16 v29, v14

    move-wide/from16 v31, v4

    sub-double v29, v29, v31

    move-wide/from16 v31, v8

    sub-double v29, v29, v31

    invoke-virtual/range {v22 .. v30}, Ljavafx/scene/control/Label;->resizeRelocate(DDDD)V

    .line 354
    move-wide/from16 v22, v10

    move-wide/from16 v24, v16

    add-double v22, v22, v24

    move-wide/from16 v10, v22

    .line 355
    goto/16 :goto_0

    .line 357
    .end local v16    # "titleWidth":D
    :cond_6
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/chart/Chart;->titleLabel:Ljavafx/scene/control/Label;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljavafx/scene/control/Label;->setVisible(Z)V

    goto/16 :goto_0

    .line 371
    .local v16, "legend":Ljavafx/scene/Node;
    .restart local v17    # "shouldShowLegend":Z
    .restart local v18    # "legendHeight":D
    .restart local v20    # "legendWidth":D
    :cond_7
    move-wide/from16 v22, v4

    move-wide/from16 v24, v18

    add-double v22, v22, v24

    move-wide/from16 v4, v22

    goto/16 :goto_1

    .line 373
    .end local v18    # "legendHeight":D
    .end local v20    # "legendWidth":D
    :cond_8
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->getLegendSide()Ljavafx/geometry/Side;

    move-result-object v22

    sget-object v23, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 374
    move-object/from16 v22, v3

    move-object/from16 v23, v16

    move-wide/from16 v24, v12

    move-wide/from16 v26, v6

    sub-double v24, v24, v26

    move-wide/from16 v26, v10

    sub-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/chart/Chart;->snapSize(D)D

    move-result-wide v22

    move-wide/from16 v18, v22

    .line 375
    .restart local v18    # "legendHeight":D
    move-object/from16 v22, v3

    move-object/from16 v23, v16

    move-wide/from16 v24, v18

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/chart/Chart;->snapSize(D)D

    move-result-wide v22

    const-wide/16 v24, 0x0

    move-wide/from16 v26, v12

    move-wide/from16 v28, v6

    sub-double v26, v26, v28

    move-wide/from16 v28, v10

    sub-double v26, v26, v28

    invoke-static/range {v22 .. v27}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 376
    .restart local v20    # "legendWidth":D
    move-object/from16 v22, v16

    move-wide/from16 v23, v6

    move-wide/from16 v25, v12

    move-wide/from16 v27, v6

    sub-double v25, v25, v27

    move-wide/from16 v27, v10

    sub-double v25, v25, v27

    move-wide/from16 v27, v20

    sub-double v25, v25, v27

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    div-double v25, v25, v27

    add-double v23, v23, v25

    move-wide/from16 v25, v14

    move-wide/from16 v27, v8

    sub-double v25, v25, v27

    move-wide/from16 v27, v18

    sub-double v25, v25, v27

    move-wide/from16 v27, v20

    move-wide/from16 v29, v18

    invoke-virtual/range {v22 .. v30}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 377
    move-wide/from16 v22, v14

    move-wide/from16 v24, v8

    sub-double v22, v22, v24

    move-wide/from16 v24, v4

    sub-double v22, v22, v24

    move-wide/from16 v24, v18

    sub-double v22, v22, v24

    const-wide v24, 0x4062c00000000000L    # 150.0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_9

    .line 378
    const/16 v22, 0x0

    move/from16 v17, v22

    .line 382
    :goto_2
    goto/16 :goto_1

    .line 380
    :cond_9
    move-wide/from16 v22, v8

    move-wide/from16 v24, v18

    add-double v22, v22, v24

    move-wide/from16 v8, v22

    goto :goto_2

    .line 382
    .end local v18    # "legendHeight":D
    .end local v20    # "legendWidth":D
    :cond_a
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->getLegendSide()Ljavafx/geometry/Side;

    move-result-object v22

    sget-object v23, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 383
    move-object/from16 v22, v3

    move-object/from16 v23, v16

    move-wide/from16 v24, v14

    move-wide/from16 v26, v4

    sub-double v24, v24, v26

    move-wide/from16 v26, v8

    sub-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/chart/Chart;->snapSize(D)D

    move-result-wide v22

    move-wide/from16 v18, v22

    .line 384
    .local v18, "legendWidth":D
    move-object/from16 v22, v3

    move-object/from16 v23, v16

    move-wide/from16 v24, v18

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/chart/Chart;->snapSize(D)D

    move-result-wide v22

    const-wide/16 v24, 0x0

    move-wide/from16 v26, v14

    move-wide/from16 v28, v4

    sub-double v26, v26, v28

    move-wide/from16 v28, v8

    sub-double v26, v26, v28

    invoke-static/range {v22 .. v27}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 385
    .local v20, "legendHeight":D
    move-object/from16 v22, v16

    move-wide/from16 v23, v6

    move-wide/from16 v25, v4

    move-wide/from16 v27, v14

    move-wide/from16 v29, v4

    sub-double v27, v27, v29

    move-wide/from16 v29, v8

    sub-double v27, v27, v29

    move-wide/from16 v29, v20

    sub-double v27, v27, v29

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    div-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v27, v18

    move-wide/from16 v29, v20

    invoke-virtual/range {v22 .. v30}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 386
    move-wide/from16 v22, v12

    move-wide/from16 v24, v6

    sub-double v22, v22, v24

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    move-wide/from16 v24, v18

    sub-double v22, v22, v24

    const-wide/high16 v24, 0x4069000000000000L    # 200.0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_b

    .line 387
    const/16 v22, 0x0

    move/from16 v17, v22

    .line 391
    :goto_3
    goto/16 :goto_1

    .line 389
    :cond_b
    move-wide/from16 v22, v6

    move-wide/from16 v24, v18

    add-double v22, v22, v24

    move-wide/from16 v6, v22

    goto :goto_3

    .line 391
    .end local v18    # "legendWidth":D
    .end local v20    # "legendHeight":D
    :cond_c
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/Chart;->getLegendSide()Ljavafx/geometry/Side;

    move-result-object v22

    sget-object v23, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 392
    move-object/from16 v22, v3

    move-object/from16 v23, v16

    move-wide/from16 v24, v14

    move-wide/from16 v26, v4

    sub-double v24, v24, v26

    move-wide/from16 v26, v8

    sub-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/chart/Chart;->snapSize(D)D

    move-result-wide v22

    move-wide/from16 v18, v22

    .line 393
    .restart local v18    # "legendWidth":D
    move-object/from16 v22, v3

    move-object/from16 v23, v16

    move-wide/from16 v24, v18

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/chart/Chart;->snapSize(D)D

    move-result-wide v22

    const-wide/16 v24, 0x0

    move-wide/from16 v26, v14

    move-wide/from16 v28, v4

    sub-double v26, v26, v28

    move-wide/from16 v28, v8

    sub-double v26, v26, v28

    invoke-static/range {v22 .. v27}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 394
    .restart local v20    # "legendHeight":D
    move-object/from16 v22, v16

    move-wide/from16 v23, v12

    move-wide/from16 v25, v10

    sub-double v23, v23, v25

    move-wide/from16 v25, v18

    sub-double v23, v23, v25

    move-wide/from16 v25, v4

    move-wide/from16 v27, v14

    move-wide/from16 v29, v4

    sub-double v27, v27, v29

    move-wide/from16 v29, v8

    sub-double v27, v27, v29

    move-wide/from16 v29, v20

    sub-double v27, v27, v29

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    div-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v27, v18

    move-wide/from16 v29, v20

    invoke-virtual/range {v22 .. v30}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 395
    move-wide/from16 v22, v12

    move-wide/from16 v24, v6

    sub-double v22, v22, v24

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    move-wide/from16 v24, v18

    sub-double v22, v22, v24

    const-wide/high16 v24, 0x4069000000000000L    # 200.0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_d

    .line 396
    const/16 v22, 0x0

    move/from16 v17, v22

    goto/16 :goto_1

    .line 398
    :cond_d
    move-wide/from16 v22, v10

    move-wide/from16 v24, v18

    add-double v22, v22, v24

    move-wide/from16 v10, v22

    goto/16 :goto_1
.end method

.method protected final legendProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->legend:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method public final legendSideProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->legendSide:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method public final legendVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->legendVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method protected requestChartLayout()V
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->chartContent:Ljavafx/scene/layout/Pane;

    invoke-virtual {v1}, Ljavafx/scene/layout/Pane;->requestLayout()V

    .line 306
    return-void
.end method

.method public final setAnimated(Z)V
    .locals 4

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Chart;->animated:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method protected final setLegend(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Chart;->legend:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setLegendSide(Ljavafx/geometry/Side;)V
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Side;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Chart;->legendSide:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setLegendVisible(Z)V
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Chart;->legendVisible:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Chart;->title:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTitleSide(Ljavafx/geometry/Side;)V
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Side;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Chart;->titleSide:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method protected final shouldAnimate()Z
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Chart;->getAnimated()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Chart;->impl_isTreeVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Chart;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return v0

    .restart local v0    # "this":Ljavafx/scene/chart/Chart;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final titleProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->title:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return-object v0
.end method

.method public final titleSideProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart;->titleSide:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart;
    return-object v0
.end method
