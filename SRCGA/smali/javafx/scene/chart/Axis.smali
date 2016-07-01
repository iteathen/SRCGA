.class public abstract Ljavafx/scene/chart/Axis;
.super Ljavafx/scene/layout/Region;
.source "Axis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/chart/Axis$StyleableProperties;,
        Ljavafx/scene/chart/Axis$TickMark;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/layout/Region;"
    }
.end annotation


# static fields
.field private static final BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private animated:Ljavafx/beans/property/BooleanProperty;

.field private autoRanging:Ljavafx/beans/property/BooleanProperty;

.field private axisLabel:Ljavafx/scene/control/Label;

.field private effectiveOrientation:Ljavafx/geometry/Orientation;

.field private effectiveTickLabelRotation:D

.field private label:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private labelsToSkip:Ljava/util/BitSet;

.field measure:Ljavafx/scene/text/Text;

.field measureInvalid:Z

.field private oldLength:D

.field rangeValid:Z

.field private side:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation
.end field

.field private tickLabelFill:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private tickLabelFont:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation
.end field

.field private tickLabelGap:Ljavafx/beans/property/DoubleProperty;

.field private tickLabelRotation:Ljavafx/beans/property/DoubleProperty;

.field private tickLabelsVisible:Ljavafx/beans/property/BooleanProperty;

.field tickLabelsVisibleInvalid:Z

.field private tickLength:Ljavafx/beans/property/DoubleProperty;

.field private final tickMarkPath:Ljavafx/scene/shape/Path;

.field private tickMarkVisible:Ljavafx/beans/property/BooleanProperty;

.field private final tickMarks:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/Axis$TickMark",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final unmodifiableTickMarks:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/Axis$TickMark",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1247
    const-string v0, "top"

    .line 1248
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/chart/Axis;->TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 1250
    const-string v0, "bottom"

    .line 1251
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/chart/Axis;->BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 1253
    const-string v0, "left"

    .line 1254
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/chart/Axis;->LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 1256
    const-string v0, "right"

    .line 1257
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/chart/Axis;->RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 1256
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Region;-><init>()V

    .line 84
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljavafx/scene/text/Text;-><init>()V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->measure:Ljavafx/scene/text/Text;

    .line 86
    move-object v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    iput-wide v2, v1, Ljavafx/scene/chart/Axis;->effectiveTickLabelRotation:D

    .line 87
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Label;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    .line 88
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Path;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljavafx/scene/shape/Path;-><init>()V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    .line 89
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ljavafx/scene/chart/Axis;->oldLength:D

    .line 91
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/chart/Axis;->rangeValid:Z

    .line 92
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/chart/Axis;->measureInvalid:Z

    .line 93
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/chart/Axis;->tickLabelsVisibleInvalid:Z

    .line 95
    move-object v1, v0

    new-instance v2, Ljava/util/BitSet;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->labelsToSkip:Ljava/util/BitSet;

    .line 99
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    .line 100
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    invoke-static {v2}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->unmodifiableTickMarks:Ljavafx/collections/ObservableList;

    .line 110
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Axis$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/chart/Axis$1;-><init>(Ljavafx/scene/chart/Axis;)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->side:Ljavafx/beans/property/ObjectProperty;

    .line 155
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Axis$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/chart/Axis$2;-><init>(Ljavafx/scene/chart/Axis;)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->label:Ljavafx/beans/property/ObjectProperty;

    .line 176
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Axis$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/Axis$3;-><init>(Ljavafx/scene/chart/Axis;Z)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->tickMarkVisible:Ljavafx/beans/property/BooleanProperty;

    .line 201
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Axis$4;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/Axis$4;-><init>(Ljavafx/scene/chart/Axis;Z)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->tickLabelsVisible:Ljavafx/beans/property/BooleanProperty;

    .line 232
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Axis$5;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/Axis$5;-><init>(Ljavafx/scene/chart/Axis;D)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->tickLength:Ljavafx/beans/property/DoubleProperty;

    .line 260
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Axis$6;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/Axis$6;-><init>(Ljavafx/scene/chart/Axis;Z)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->autoRanging:Ljavafx/beans/property/BooleanProperty;

    .line 284
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Axis$7;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "System"

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    invoke-static {v5, v6, v7}, Ljavafx/scene/text/Font;->font(Ljava/lang/String;D)Ljavafx/scene/text/Font;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/Axis$7;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/text/Font;)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->tickLabelFont:Ljavafx/beans/property/ObjectProperty;

    .line 315
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Axis$8;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    sget-object v5, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/Axis$8;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/paint/Paint;)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->tickLabelFill:Ljavafx/beans/property/ObjectProperty;

    .line 342
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Axis$9;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/Axis$9;-><init>(Ljavafx/scene/chart/Axis;D)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->tickLabelGap:Ljavafx/beans/property/DoubleProperty;

    .line 369
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "animated"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->animated:Ljavafx/beans/property/BooleanProperty;

    .line 383
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Axis$10;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/Axis$10;-><init>(Ljavafx/scene/chart/Axis;D)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis;->tickLabelRotation:Ljavafx/beans/property/DoubleProperty;

    .line 411
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x0

    const-string v5, "axis"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 412
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v1}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "axis-label"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 413
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    sget-object v2, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Label;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 414
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v1}, Ljavafx/scene/shape/Path;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "axis-tick-mark"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 415
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljavafx/scene/Node;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    aput-object v5, v3, v4

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 416
    return-void
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Ljavafx/scene/chart/Axis;->TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Ljavafx/scene/chart/Axis;->RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$1000(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Axis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLength:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Axis;
    return-object v0
.end method

.method static synthetic access$1500(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Axis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->side:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Axis;
    return-object v0
.end method

.method static synthetic access$1600(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Axis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelFont:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Axis;
    return-object v0
.end method

.method static synthetic access$1700(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Axis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelFill:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Axis;
    return-object v0
.end method

.method static synthetic access$1800(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Axis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelGap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Axis;
    return-object v0
.end method

.method static synthetic access$1900(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Axis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickMarkVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Axis;
    return-object v0
.end method

.method static synthetic access$200()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Ljavafx/scene/chart/Axis;->BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$2000(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Axis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelsVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Axis;
    return-object v0
.end method

.method static synthetic access$300()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Ljavafx/scene/chart/Axis;->LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/chart/Axis;)Ljavafx/scene/control/Label;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Axis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Axis;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/chart/Axis;)Ljavafx/scene/shape/Path;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Axis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Axis;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/chart/Axis;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/Axis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/Axis;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis$TickMark;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/Axis;->lambda$layoutChildren$465(Ljavafx/scene/chart/Axis$TickMark;Ljavafx/event/ActionEvent;)V

    return-void
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
    .line 1234
    # getter for: Ljavafx/scene/chart/Axis$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/chart/Axis$StyleableProperties;->access$2100()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$layoutChildren$465(Ljavafx/scene/chart/Axis$TickMark;Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, p1

    .local v1, "tm":Ljavafx/scene/chart/Axis$TickMark;
    move-object v2, p2

    .local v2, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/Axis;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 675
    return-void
.end method

.method private positionTextNode(Ljavafx/scene/text/Text;DDDLjavafx/geometry/Side;)V
    .locals 18

    .prologue
    .line 931
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object/from16 v2, p1

    .local v2, "node":Ljavafx/scene/text/Text;
    move-wide/from16 v3, p2

    .local v3, "posX":D
    move-wide/from16 v5, p4

    .local v5, "posY":D
    move-wide/from16 v7, p6

    .local v7, "angle":D
    move-object/from16 v9, p8

    .local v9, "side":Ljavafx/geometry/Side;
    move-object v11, v2

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/text/Text;->setLayoutX(D)V

    .line 932
    move-object v11, v2

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/text/Text;->setLayoutY(D)V

    .line 933
    move-object v11, v2

    move-wide v12, v7

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/text/Text;->setRotate(D)V

    .line 934
    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/text/Text;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v10, v11

    .line 935
    .local v10, "bounds":Ljavafx/geometry/Bounds;
    sget-object v11, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 936
    move-object v11, v2

    move-wide v12, v3

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/text/Text;->setLayoutX(D)V

    .line 937
    move-object v11, v2

    move-wide v12, v5

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/text/Text;->setLayoutY(D)V

    .line 948
    :goto_0
    return-void

    .line 938
    :cond_0
    sget-object v11, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 939
    move-object v11, v2

    move-wide v12, v3

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/text/Text;->setLayoutX(D)V

    .line 940
    move-object v11, v2

    move-wide v12, v5

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/text/Text;->setLayoutY(D)V

    goto :goto_0

    .line 941
    :cond_1
    sget-object v11, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 942
    move-object v11, v2

    move-wide v12, v3

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/text/Text;->setLayoutX(D)V

    .line 943
    move-object v11, v2

    move-wide v12, v5

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/text/Text;->setLayoutY(D)V

    goto :goto_0

    .line 945
    :cond_2
    move-object v11, v2

    move-wide v12, v3

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/text/Text;->setLayoutX(D)V

    .line 946
    move-object v11, v2

    move-wide v12, v5

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/text/Text;->setLayoutY(D)V

    goto :goto_0
.end method

.method private updateAndGetDisplayPosition(Ljavafx/scene/chart/Axis$TickMark;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis$TickMark",
            "<TT;>;)D"
        }
    .end annotation

    .prologue
    .line 915
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, p1

    .local v1, "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/Axis$TickMark;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v4

    move-wide v2, v4

    .line 916
    .local v2, "displayPosition":D
    move-object v4, v1

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/chart/Axis$TickMark;->setPosition(D)V

    .line 917
    move-wide v4, v2

    move-wide v0, v4

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-wide v0
.end method


# virtual methods
.method public final animatedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->animated:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method protected abstract autoRange(D)Ljava/lang/Object;
.end method

.method public final autoRangingProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->autoRanging:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method protected abstract calculateTickValues(DLjava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected computePrefHeight(D)D
    .locals 17

    .prologue
    .line 569
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/Axis;->getEffectiveSide()Ljavafx/geometry/Side;

    move-result-object v12

    move-object v4, v12

    .line 570
    .local v4, "side":Ljavafx/geometry/Side;
    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Side;->isVertical()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 573
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-wide v1, v12

    .line 592
    .end local v1    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    :goto_0
    return-wide v1

    .line 576
    .restart local v1    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    :cond_0
    move-object v12, v1

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/chart/Axis;->autoRange(D)Ljava/lang/Object;

    move-result-object v12

    move-object v5, v12

    .line 578
    .local v5, "range":Ljava/lang/Object;
    const-wide/16 v12, 0x0

    move-wide v6, v12

    .line 580
    .local v6, "maxLabelHeight":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/Axis;->isTickLabelsVisible()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 581
    move-object v12, v1

    move-wide v13, v2

    move-object v15, v5

    invoke-virtual {v12, v13, v14, v15}, Ljavafx/scene/chart/Axis;->calculateTickValues(DLjava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object v8, v12

    .line 582
    .local v8, "newTickValues":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v9, v12

    :goto_1
    move-object v12, v9

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v12, v9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v10, v12

    .line 583
    .local v10, "value":Ljava/lang/Object;, "TT;"
    move-wide v12, v6

    move-object v14, v1

    move-object v15, v10

    move-object/from16 v16, v5

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/chart/Axis;->measureTickMarkSize(Ljava/lang/Object;Ljava/lang/Object;)Ljavafx/geometry/Dimension2D;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide v6, v12

    .line 584
    goto :goto_1

    .line 587
    .end local v8    # "newTickValues":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v10    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/Axis;->isTickMarkVisible()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/Axis;->getTickLength()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_3

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/Axis;->getTickLength()D

    move-result-wide v12

    :goto_2
    move-wide v8, v12

    .line 589
    .local v8, "tickMarkLength":D
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    .line 590
    invoke-virtual {v12}, Ljavafx/scene/control/Label;->getText()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v12}, Ljavafx/scene/control/Label;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_5

    :cond_2
    const-wide/16 v12, 0x0

    .line 591
    :goto_3
    move-wide v10, v12

    .line 592
    .local v10, "labelHeight":D
    move-wide v12, v6

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/chart/Axis;->getTickLabelGap()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v8

    add-double/2addr v12, v14

    move-wide v14, v10

    add-double/2addr v12, v14

    move-wide v1, v12

    goto :goto_0

    .line 587
    .end local v8    # "tickMarkLength":D
    .end local v10    # "labelHeight":D
    :cond_3
    const-wide/16 v12, 0x0

    goto :goto_2

    :cond_4
    const-wide/16 v12, 0x0

    goto :goto_2

    .line 590
    .restart local v8    # "tickMarkLength":D
    :cond_5
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 591
    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v12

    goto :goto_3
.end method

.method protected computePrefWidth(D)D
    .locals 17

    .prologue
    .line 604
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/Axis;->getEffectiveSide()Ljavafx/geometry/Side;

    move-result-object v12

    move-object v4, v12

    .line 605
    .local v4, "side":Ljavafx/geometry/Side;
    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Side;->isVertical()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 607
    move-object v12, v1

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/chart/Axis;->autoRange(D)Ljava/lang/Object;

    move-result-object v12

    move-object v5, v12

    .line 609
    .local v5, "range":Ljava/lang/Object;
    const-wide/16 v12, 0x0

    move-wide v6, v12

    .line 611
    .local v6, "maxLabelWidth":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/Axis;->isTickLabelsVisible()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 612
    move-object v12, v1

    move-wide v13, v2

    move-object v15, v5

    invoke-virtual {v12, v13, v14, v15}, Ljavafx/scene/chart/Axis;->calculateTickValues(DLjava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object v8, v12

    .line 613
    .local v8, "newTickValues":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v9, v12

    :goto_0
    move-object v12, v9

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v12, v9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v10, v12

    .line 614
    .local v10, "value":Ljava/lang/Object;, "TT;"
    move-wide v12, v6

    move-object v14, v1

    move-object v15, v10

    move-object/from16 v16, v5

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/chart/Axis;->measureTickMarkSize(Ljava/lang/Object;Ljava/lang/Object;)Ljavafx/geometry/Dimension2D;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide v6, v12

    .line 615
    goto :goto_0

    .line 618
    .end local v8    # "newTickValues":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v10    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/Axis;->isTickMarkVisible()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/Axis;->getTickLength()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/Axis;->getTickLength()D

    move-result-wide v12

    :goto_1
    move-wide v8, v12

    .line 620
    .local v8, "tickMarkLength":D
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    .line 621
    invoke-virtual {v12}, Ljavafx/scene/control/Label;->getText()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v12}, Ljavafx/scene/control/Label;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_4

    :cond_1
    const-wide/16 v12, 0x0

    .line 622
    :goto_2
    move-wide v10, v12

    .line 623
    .local v10, "labelHeight":D
    move-wide v12, v6

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/chart/Axis;->getTickLabelGap()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v8

    add-double/2addr v12, v14

    move-wide v14, v10

    add-double/2addr v12, v14

    move-wide v1, v12

    .line 627
    .end local v1    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    .end local v5    # "range":Ljava/lang/Object;
    .end local v6    # "maxLabelWidth":D
    .end local v8    # "tickMarkLength":D
    .end local v10    # "labelHeight":D
    :goto_3
    return-wide v1

    .line 618
    .restart local v1    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    .restart local v5    # "range":Ljava/lang/Object;
    .restart local v6    # "maxLabelWidth":D
    :cond_2
    const-wide/16 v12, 0x0

    goto :goto_1

    :cond_3
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 621
    .restart local v8    # "tickMarkLength":D
    :cond_4
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 622
    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v12

    goto :goto_2

    .line 627
    .end local v5    # "range":Ljava/lang/Object;
    .end local v6    # "maxLabelWidth":D
    .end local v8    # "tickMarkLength":D
    :cond_5
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-wide v1, v12

    goto :goto_3
.end method

.method public final getAnimated()Z
    .locals 2

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->animated:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return v0
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
    .line 1243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    invoke-static {}, Ljavafx/scene/chart/Axis;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method public abstract getDisplayPosition(Ljava/lang/Object;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation
.end method

.method final getEffectiveSide()Ljavafx/geometry/Side;
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/Axis;->getSide()Ljavafx/geometry/Side;

    move-result-object v2

    move-object v1, v2

    .line 146
    .local v1, "side":Ljavafx/geometry/Side;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Side;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis;->effectiveOrientation:Ljavafx/geometry/Orientation;

    sget-object v3, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-eq v2, v3, :cond_1

    :cond_0
    move-object v2, v1

    .line 147
    invoke-virtual {v2}, Ljavafx/geometry/Side;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis;->effectiveOrientation:Ljavafx/geometry/Orientation;

    sget-object v3, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v2, v3, :cond_3

    .line 149
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis;->effectiveOrientation:Ljavafx/geometry/Orientation;

    sget-object v3, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v2, v3, :cond_2

    sget-object v2, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    :goto_0
    move-object v0, v2

    .line 151
    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    :goto_1
    return-object v0

    .line 149
    .restart local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    :cond_2
    sget-object v2, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    goto :goto_0

    .line 151
    :cond_3
    move-object v2, v1

    move-object v0, v2

    goto :goto_1
.end method

.method final getEffectiveTickLabelRotation()D
    .locals 4

    .prologue
    .line 996
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/Axis;->isAutoRanging()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/chart/Axis;->effectiveTickLabelRotation:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/Axis;->getTickLabelRotation()D

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    :cond_1
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/chart/Axis;->effectiveTickLabelRotation:D

    goto :goto_0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->label:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method protected abstract getRange()Ljava/lang/Object;
.end method

.method public final getSide()Ljavafx/geometry/Side;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->side:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Side;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method public final getTickLabelFill()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method public final getTickLabelFont()Ljavafx/scene/text/Font;
    .locals 2

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelFont:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/Font;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method public final getTickLabelGap()D
    .locals 3

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelGap:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-wide v0
.end method

.method public final getTickLabelRotation()D
    .locals 3

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelRotation:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-wide v0
.end method

.method public final getTickLength()D
    .locals 3

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLength:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-wide v0
.end method

.method protected abstract getTickMarkLabel(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public getTickMarks()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/Axis$TickMark",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->unmodifiableTickMarks:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method public abstract getValueForDisplay(D)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation
.end method

.method public abstract getZeroPosition()D
.end method

.method protected final invalidateRange()V
    .locals 3

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/chart/Axis;->rangeValid:Z

    return-void
.end method

.method public invalidateRange(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, p1

    .local v1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/Axis;->invalidateRange()V

    .line 468
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 469
    return-void
.end method

.method public final isAutoRanging()Z
    .locals 2

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->autoRanging:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return v0
.end method

.method protected final isRangeValid()Z
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/chart/Axis;->rangeValid:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return v0
.end method

.method public final isTickLabelsVisible()Z
    .locals 2

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelsVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return v0
.end method

.method public final isTickMarkVisible()Z
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickMarkVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return v0
.end method

.method public abstract isValueOnAxis(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public final labelProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->label:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method protected layoutChildren()V
    .locals 41

    .prologue
    .line 641
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->getWidth()D

    move-result-wide v28

    move-wide/from16 v4, v28

    .line 642
    .local v4, "width":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->getHeight()D

    move-result-wide v28

    move-wide/from16 v6, v28

    .line 643
    .local v6, "height":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->isTickMarkVisible()Z

    move-result v28

    if-eqz v28, :cond_1

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->getTickLength()D

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_1

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->getTickLength()D

    move-result-wide v28

    :goto_0
    move-wide/from16 v8, v28

    .line 644
    .local v8, "tickMarkLength":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Ljavafx/scene/chart/Axis;->oldLength:D

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_2

    const/16 v28, 0x1

    :goto_1
    move/from16 v10, v28

    .line 646
    .local v10, "isFirstPass":Z
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->getEffectiveSide()Ljavafx/geometry/Side;

    move-result-object v28

    move-object/from16 v11, v28

    .line 647
    .local v11, "side":Ljavafx/geometry/Side;
    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Side;->isVertical()Z

    move-result v28

    if-eqz v28, :cond_3

    move-wide/from16 v28, v6

    :goto_2
    move-wide/from16 v12, v28

    .line 648
    .local v12, "length":D
    const/16 v28, 0x0

    move/from16 v14, v28

    .line 649
    .local v14, "tickIndex":I
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->isRangeValid()Z

    move-result v28

    if-nez v28, :cond_4

    const/16 v28, 0x1

    :goto_3
    move/from16 v15, v28

    .line 650
    .local v15, "rangeInvalid":Z
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Ljavafx/scene/chart/Axis;->oldLength:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v12

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_5

    const/16 v28, 0x1

    :goto_4
    move/from16 v16, v28

    .line 651
    .local v16, "lengthDiffers":Z
    move/from16 v28, v16

    if-nez v28, :cond_0

    move/from16 v28, v15

    if-eqz v28, :cond_d

    .line 654
    :cond_0
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->isAutoRanging()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 656
    move-object/from16 v28, v3

    move-wide/from16 v29, v12

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/chart/Axis;->autoRange(D)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v17, v28

    .line 658
    .local v17, "range":Ljava/lang/Object;
    move-object/from16 v28, v3

    move-object/from16 v29, v17

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/Axis;->getAnimated()Z

    move-result v30

    if-eqz v30, :cond_6

    move/from16 v30, v10

    if-nez v30, :cond_6

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/Axis;->impl_isTreeVisible()Z

    move-result v30

    if-eqz v30, :cond_6

    move/from16 v30, v15

    if-eqz v30, :cond_6

    const/16 v30, 0x1

    :goto_5
    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/chart/Axis;->setRange(Ljava/lang/Object;Z)V

    .line 663
    :goto_6
    move-object/from16 v28, v3

    move-wide/from16 v29, v12

    move-object/from16 v31, v17

    invoke-virtual/range {v28 .. v31}, Ljavafx/scene/chart/Axis;->calculateTickValues(DLjava/lang/Object;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v18, v28

    .line 666
    .local v18, "newTickValues":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v19, v28

    .line 667
    .local v19, "tickMarkIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/Axis$TickMark<TT;>;>;"
    :goto_7
    move-object/from16 v28, v19

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 668
    move-object/from16 v28, v19

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/chart/Axis$TickMark;

    move-object/from16 v20, v28

    .line 669
    .local v20, "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object/from16 v28, v20

    move-object/from16 v21, v28

    .line 670
    .local v21, "tm":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->shouldAnimate()Z

    move-result v28

    if-eqz v28, :cond_8

    .line 671
    new-instance v28, Ljavafx/animation/FadeTransition;

    move-object/from16 v40, v28

    move-object/from16 v28, v40

    move-object/from16 v29, v40

    const-wide v30, 0x406f400000000000L    # 250.0

    invoke-static/range {v30 .. v31}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v30

    move-object/from16 v31, v20

    move-object/from16 v0, v31

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v31, v0

    invoke-direct/range {v29 .. v31}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object/from16 v22, v28

    .line 672
    .local v22, "ft":Ljavafx/animation/FadeTransition;
    move-object/from16 v28, v22

    const-wide/16 v29, 0x0

    invoke-virtual/range {v28 .. v30}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 673
    move-object/from16 v28, v22

    move-object/from16 v29, v3

    move-object/from16 v30, v21

    invoke-static/range {v29 .. v30}, Ljavafx/scene/chart/Axis$$Lambda$1;->lambdaFactory$(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis$TickMark;)Ljavafx/event/EventHandler;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 676
    move-object/from16 v28, v22

    invoke-virtual/range {v28 .. v28}, Ljavafx/animation/FadeTransition;->play()V

    .line 677
    .line 681
    .end local v22    # "ft":Ljavafx/animation/FadeTransition;
    :goto_8
    move-object/from16 v28, v19

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->remove()V

    .line 682
    goto :goto_7

    .line 643
    .end local v8    # "tickMarkLength":D
    .end local v10    # "isFirstPass":Z
    .end local v11    # "side":Ljavafx/geometry/Side;
    .end local v12    # "length":D
    .end local v14    # "tickIndex":I
    .end local v15    # "rangeInvalid":Z
    .end local v16    # "lengthDiffers":Z
    .end local v17    # "range":Ljava/lang/Object;
    .end local v18    # "newTickValues":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v19    # "tickMarkIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/Axis$TickMark<TT;>;>;"
    .end local v20    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    .end local v21    # "tm":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_1
    const-wide/16 v28, 0x0

    goto/16 :goto_0

    .line 644
    .restart local v8    # "tickMarkLength":D
    :cond_2
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 647
    .restart local v10    # "isFirstPass":Z
    .restart local v11    # "side":Ljavafx/geometry/Side;
    :cond_3
    move-wide/from16 v28, v4

    goto/16 :goto_2

    .line 649
    .restart local v12    # "length":D
    .restart local v14    # "tickIndex":I
    :cond_4
    const/16 v28, 0x0

    goto/16 :goto_3

    .line 650
    .restart local v15    # "rangeInvalid":Z
    :cond_5
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 658
    .restart local v16    # "lengthDiffers":Z
    .restart local v17    # "range":Ljava/lang/Object;
    :cond_6
    const/16 v30, 0x0

    goto/16 :goto_5

    .line 660
    .end local v17    # "range":Ljava/lang/Object;
    :cond_7
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->getRange()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v17, v28

    .restart local v17    # "range":Ljava/lang/Object;
    goto/16 :goto_6

    .line 678
    .restart local v18    # "newTickValues":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v19    # "tickMarkIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/Axis$TickMark<TT;>;>;"
    .restart local v20    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    .restart local v21    # "tm":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_8
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v28

    move-object/from16 v29, v21

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v28

    goto :goto_8

    .line 685
    .end local v20    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    .end local v21    # "tm":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_9
    move-object/from16 v28, v18

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v20, v28

    :goto_9
    move-object/from16 v28, v20

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_c

    move-object/from16 v28, v20

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v21, v28

    .line 686
    .local v21, "newValue":Ljava/lang/Object;, "TT;"
    new-instance v28, Ljavafx/scene/chart/Axis$TickMark;

    move-object/from16 v40, v28

    move-object/from16 v28, v40

    move-object/from16 v29, v40

    invoke-direct/range {v29 .. v29}, Ljavafx/scene/chart/Axis$TickMark;-><init>()V

    move-object/from16 v22, v28

    .line 687
    .local v22, "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object/from16 v28, v22

    move-object/from16 v29, v21

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/Axis$TickMark;->setValue(Ljava/lang/Object;)V

    .line 688
    move-object/from16 v28, v22

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    move-object/from16 v30, v21

    invoke-virtual/range {v29 .. v30}, Ljavafx/scene/chart/Axis;->getTickMarkLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 689
    move-object/from16 v28, v22

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/Axis;->getTickLabelFont()Ljavafx/scene/text/Font;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/text/Text;->setFont(Ljavafx/scene/text/Font;)V

    .line 690
    move-object/from16 v28, v22

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/Axis;->getTickLabelFill()Ljavafx/scene/paint/Paint;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/text/Text;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 691
    move-object/from16 v28, v22

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/Axis;->isTickLabelsVisible()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/Axis$TickMark;->setTextVisible(Z)V

    .line 692
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->shouldAnimate()Z

    move-result v28

    if-eqz v28, :cond_a

    move-object/from16 v28, v22

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/text/Text;->setOpacity(D)V

    .line 693
    :cond_a
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v28

    move-object/from16 v29, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 694
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v28, v0

    move-object/from16 v29, v22

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 695
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->shouldAnimate()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 696
    new-instance v28, Ljavafx/animation/FadeTransition;

    move-object/from16 v40, v28

    move-object/from16 v28, v40

    move-object/from16 v29, v40

    const-wide v30, 0x4087700000000000L    # 750.0

    invoke-static/range {v30 .. v31}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v30

    move-object/from16 v31, v22

    move-object/from16 v0, v31

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v31, v0

    invoke-direct/range {v29 .. v31}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object/from16 v23, v28

    .line 697
    .local v23, "ft":Ljavafx/animation/FadeTransition;
    move-object/from16 v28, v23

    const-wide/16 v29, 0x0

    invoke-virtual/range {v28 .. v30}, Ljavafx/animation/FadeTransition;->setFromValue(D)V

    .line 698
    move-object/from16 v28, v23

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v28 .. v30}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 699
    move-object/from16 v28, v23

    invoke-virtual/range {v28 .. v28}, Ljavafx/animation/FadeTransition;->play()V

    .line 701
    .end local v23    # "ft":Ljavafx/animation/FadeTransition;
    :cond_b
    goto/16 :goto_9

    .line 704
    .end local v21    # "newValue":Ljava/lang/Object;, "TT;"
    .end local v22    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_c
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->tickMarksUpdated()V

    .line 706
    move-object/from16 v28, v3

    move-wide/from16 v29, v12

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/chart/Axis;->oldLength:D

    .line 707
    move-object/from16 v28, v3

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Ljavafx/scene/chart/Axis;->rangeValid:Z

    .line 710
    .end local v17    # "range":Ljava/lang/Object;
    .end local v18    # "newTickValues":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v19    # "tickMarkIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/Axis$TickMark<TT;>;>;"
    :cond_d
    move/from16 v28, v16

    if-nez v28, :cond_e

    move/from16 v28, v15

    if-nez v28, :cond_e

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Ljavafx/scene/chart/Axis;->measureInvalid:Z

    move/from16 v28, v0

    if-nez v28, :cond_e

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Ljavafx/scene/chart/Axis;->tickLabelsVisibleInvalid:Z

    move/from16 v28, v0

    if-eqz v28, :cond_f

    .line 711
    :cond_e
    move-object/from16 v28, v3

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Ljavafx/scene/chart/Axis;->measureInvalid:Z

    .line 712
    move-object/from16 v28, v3

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Ljavafx/scene/chart/Axis;->tickLabelsVisibleInvalid:Z

    .line 714
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->labelsToSkip:Ljava/util/BitSet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/BitSet;->clear()V

    .line 715
    const-wide v28, -0x10000000000001L

    move-wide/from16 v17, v28

    .line 716
    .local v17, "prevEnd":D
    const-wide v28, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v19, v28

    .line 717
    .local v19, "lastStart":D
    sget-object v28, Ljavafx/scene/chart/Axis$11;->$SwitchMap$javafx$geometry$Side:[I

    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Ljavafx/geometry/Side;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    .line 780
    .end local v17    # "prevEnd":D
    .end local v19    # "lastStart":D
    :cond_f
    :goto_a
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljavafx/collections/ObservableList;->clear()V

    .line 782
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->getEffectiveTickLabelRotation()D

    move-result-wide v28

    move-wide/from16 v17, v28

    .line 783
    .local v17, "effectiveLabelRotation":D
    sget-object v28, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    move-object/from16 v29, v11

    invoke-virtual/range {v28 .. v29}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 785
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object/from16 v28, v0

    const-wide/high16 v29, -0x4020000000000000L    # -0.5

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 786
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object/from16 v28, v0

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 787
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->getLabel()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_10

    .line 788
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/Label;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljavafx/scene/transform/Transform;

    move-object/from16 v29, v0

    move-object/from16 v40, v29

    move-object/from16 v29, v40

    move-object/from16 v30, v40

    const/16 v31, 0x0

    new-instance v32, Ljavafx/scene/transform/Translate;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    const-wide/16 v34, 0x0

    move-wide/from16 v36, v6

    invoke-direct/range {v33 .. v37}, Ljavafx/scene/transform/Translate;-><init>(DD)V

    aput-object v32, v30, v31

    move-object/from16 v40, v29

    move-object/from16 v29, v40

    move-object/from16 v30, v40

    const/16 v31, 0x1

    new-instance v32, Ljavafx/scene/transform/Rotate;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    const-wide v34, -0x3fa9800000000000L    # -90.0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    invoke-direct/range {v33 .. v39}, Ljavafx/scene/transform/Rotate;-><init>(DDD)V

    aput-object v32, v30, v31

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v28

    .line 789
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/Label;->setLayoutX(D)V

    .line 790
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/Label;->setLayoutY(D)V

    .line 792
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    move-wide/from16 v29, v6

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v31, v0

    move-wide/from16 v32, v4

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v31

    invoke-virtual/range {v28 .. v32}, Ljavafx/scene/control/Label;->resize(DD)V

    .line 794
    :cond_10
    const/16 v28, 0x0

    move/from16 v14, v28

    .line 795
    const/16 v28, 0x0

    move/from16 v19, v28

    .local v19, "i":I
    :goto_b
    move/from16 v28, v19

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljavafx/collections/ObservableList;->size()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1f

    .line 796
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v28, v0

    move/from16 v29, v19

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/chart/Axis$TickMark;

    move-object/from16 v20, v28

    .line 797
    .restart local v20    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object/from16 v28, v3

    move-object/from16 v29, v20

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v29, v0

    move-wide/from16 v30, v4

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/chart/Axis;->getTickLabelGap()D

    move-result-wide v32

    sub-double v30, v30, v32

    move-wide/from16 v32, v8

    sub-double v30, v30, v32

    move-object/from16 v32, v20

    .line 798
    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v32

    move-wide/from16 v34, v17

    move-object/from16 v36, v11

    .line 797
    invoke-direct/range {v28 .. v36}, Ljavafx/scene/chart/Axis;->positionTextNode(Ljavafx/scene/text/Text;DDDLjavafx/geometry/Side;)V

    .line 801
    move-object/from16 v28, v20

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_1e

    move-object/from16 v28, v20

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v28

    move-wide/from16 v30, v12

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_1e

    .line 802
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->isTickLabelsVisible()Z

    move-result v28

    if-eqz v28, :cond_11

    .line 803
    move-object/from16 v28, v20

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->labelsToSkip:Ljava/util/BitSet;

    move-object/from16 v29, v0

    move/from16 v30, v19

    invoke-virtual/range {v29 .. v30}, Ljava/util/BitSet;->get(I)Z

    move-result v29

    if-nez v29, :cond_1d

    const/16 v29, 0x1

    :goto_c
    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/text/Text;->setVisible(Z)V

    .line 804
    add-int/lit8 v14, v14, 0x1

    .line 807
    :cond_11
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v29, v0

    move-object/from16 v40, v29

    move-object/from16 v29, v40

    move-object/from16 v30, v40

    const/16 v31, 0x0

    new-instance v32, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    move-wide/from16 v34, v4

    move-wide/from16 v36, v8

    sub-double v34, v34, v36

    move-object/from16 v36, v20

    .line 808
    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v36

    invoke-direct/range {v33 .. v37}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v32, v30, v31

    move-object/from16 v40, v29

    move-object/from16 v29, v40

    move-object/from16 v30, v40

    const/16 v31, 0x1

    new-instance v32, Ljavafx/scene/shape/LineTo;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    move-wide/from16 v34, v4

    move-object/from16 v36, v20

    .line 809
    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v36

    invoke-direct/range {v33 .. v37}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v32, v30, v31

    .line 807
    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v28

    .line 795
    :goto_d
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_b

    .line 720
    .end local v20    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    .local v17, "prevEnd":D
    .local v19, "lastStart":D
    :pswitch_0
    const/16 v28, 0x0

    move/from16 v21, v28

    .line 721
    .local v21, "stop":I
    :goto_e
    move/from16 v28, v21

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljavafx/collections/ObservableList;->size()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_12

    .line 722
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v28, v0

    move/from16 v29, v21

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/chart/Axis$TickMark;

    move-object/from16 v22, v28

    .line 723
    .local v22, "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object/from16 v28, v22

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis$TickMark;->isTextVisible()Z

    move-result v28

    if-eqz v28, :cond_13

    .line 724
    move-object/from16 v28, v3

    move-object/from16 v29, v22

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/Axis$TickMark;->getValue()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/Axis;->getRange()Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/chart/Axis;->measureTickMarkSize(Ljava/lang/Object;Ljava/lang/Object;)Ljavafx/geometry/Dimension2D;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v28

    move-wide/from16 v23, v28

    .line 725
    .local v23, "tickHeight":D
    move-object/from16 v28, v3

    move-object/from16 v29, v22

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/chart/Axis;->updateAndGetDisplayPosition(Ljavafx/scene/chart/Axis$TickMark;)D

    move-result-wide v28

    move-wide/from16 v30, v23

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v19, v28

    .line 732
    .end local v22    # "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    .end local v23    # "tickHeight":D
    :cond_12
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljavafx/collections/ObservableList;->size()I

    move-result v28

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v22, v28

    .local v22, "i":I
    :goto_f
    move/from16 v28, v22

    move/from16 v29, v21

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_17

    .line 733
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v28, v0

    move/from16 v29, v22

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/chart/Axis$TickMark;

    move-object/from16 v23, v28

    .line 734
    .local v23, "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object/from16 v28, v23

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis$TickMark;->isTextVisible()Z

    move-result v28

    if-nez v28, :cond_14

    .line 735
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->labelsToSkip:Ljava/util/BitSet;

    move-object/from16 v28, v0

    move/from16 v29, v22

    invoke-virtual/range {v28 .. v29}, Ljava/util/BitSet;->set(I)V

    .line 736
    .line 732
    :goto_10
    add-int/lit8 v22, v22, -0x1

    goto :goto_f

    .line 728
    .end local v23    # "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    .local v22, "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_13
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->labelsToSkip:Ljava/util/BitSet;

    move-object/from16 v28, v0

    move/from16 v29, v21

    invoke-virtual/range {v28 .. v29}, Ljava/util/BitSet;->set(I)V

    .line 721
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_e

    .line 738
    .local v22, "i":I
    .restart local v23    # "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_14
    move-object/from16 v28, v3

    move-object/from16 v29, v23

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/Axis$TickMark;->getValue()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/Axis;->getRange()Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/chart/Axis;->measureTickMarkSize(Ljava/lang/Object;Ljava/lang/Object;)Ljavafx/geometry/Dimension2D;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v28

    move-wide/from16 v24, v28

    .line 739
    .local v24, "tickHeight":D
    move-object/from16 v28, v3

    move-object/from16 v29, v23

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/chart/Axis;->updateAndGetDisplayPosition(Ljavafx/scene/chart/Axis$TickMark;)D

    move-result-wide v28

    move-wide/from16 v30, v24

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 740
    .local v26, "tickStart":D
    move-wide/from16 v28, v26

    move-wide/from16 v30, v17

    cmpg-double v28, v28, v30

    if-lez v28, :cond_15

    move-wide/from16 v28, v26

    move-wide/from16 v30, v24

    add-double v28, v28, v30

    move-wide/from16 v30, v19

    cmpl-double v28, v28, v30

    if-lez v28, :cond_16

    .line 741
    :cond_15
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->labelsToSkip:Ljava/util/BitSet;

    move-object/from16 v28, v0

    move/from16 v29, v22

    invoke-virtual/range {v28 .. v29}, Ljava/util/BitSet;->set(I)V

    goto :goto_10

    .line 743
    :cond_16
    move-wide/from16 v28, v26

    move-wide/from16 v30, v24

    add-double v28, v28, v30

    move-wide/from16 v17, v28

    goto :goto_10

    .line 746
    .end local v23    # "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    .end local v24    # "tickHeight":D
    .end local v26    # "tickStart":D
    :cond_17
    goto/16 :goto_a

    .line 749
    .end local v21    # "stop":I
    .end local v22    # "i":I
    :pswitch_1
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljavafx/collections/ObservableList;->size()I

    move-result v28

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v21, v28

    .line 750
    .restart local v21    # "stop":I
    :goto_11
    move/from16 v28, v21

    if-ltz v28, :cond_18

    .line 751
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v28, v0

    move/from16 v29, v21

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/chart/Axis$TickMark;

    move-object/from16 v22, v28

    .line 752
    .local v22, "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object/from16 v28, v22

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis$TickMark;->isTextVisible()Z

    move-result v28

    if-eqz v28, :cond_19

    .line 753
    move-object/from16 v28, v3

    move-object/from16 v29, v22

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/Axis$TickMark;->getValue()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/Axis;->getRange()Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/chart/Axis;->measureTickMarkSize(Ljava/lang/Object;Ljava/lang/Object;)Ljavafx/geometry/Dimension2D;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v28

    move-wide/from16 v23, v28

    .line 754
    .local v23, "tickWidth":D
    move-object/from16 v28, v3

    move-object/from16 v29, v22

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/chart/Axis;->updateAndGetDisplayPosition(Ljavafx/scene/chart/Axis$TickMark;)D

    move-result-wide v28

    move-wide/from16 v30, v23

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v19, v28

    .line 761
    .end local v22    # "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    .end local v23    # "tickWidth":D
    :cond_18
    const/16 v28, 0x0

    move/from16 v22, v28

    .local v22, "i":I
    :goto_12
    move/from16 v28, v22

    move/from16 v29, v21

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_f

    .line 762
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v28, v0

    move/from16 v29, v22

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/chart/Axis$TickMark;

    move-object/from16 v23, v28

    .line 763
    .local v23, "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object/from16 v28, v23

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis$TickMark;->isTextVisible()Z

    move-result v28

    if-nez v28, :cond_1a

    .line 764
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->labelsToSkip:Ljava/util/BitSet;

    move-object/from16 v28, v0

    move/from16 v29, v22

    invoke-virtual/range {v28 .. v29}, Ljava/util/BitSet;->set(I)V

    .line 765
    .line 761
    :goto_13
    add-int/lit8 v22, v22, 0x1

    goto :goto_12

    .line 757
    .end local v23    # "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    .local v22, "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_19
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->labelsToSkip:Ljava/util/BitSet;

    move-object/from16 v28, v0

    move/from16 v29, v21

    invoke-virtual/range {v28 .. v29}, Ljava/util/BitSet;->set(I)V

    .line 750
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_11

    .line 767
    .local v22, "i":I
    .restart local v23    # "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_1a
    move-object/from16 v28, v3

    move-object/from16 v29, v23

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/Axis$TickMark;->getValue()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/Axis;->getRange()Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/chart/Axis;->measureTickMarkSize(Ljava/lang/Object;Ljava/lang/Object;)Ljavafx/geometry/Dimension2D;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v28

    move-wide/from16 v24, v28

    .line 768
    .local v24, "tickWidth":D
    move-object/from16 v28, v3

    move-object/from16 v29, v23

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/chart/Axis;->updateAndGetDisplayPosition(Ljavafx/scene/chart/Axis$TickMark;)D

    move-result-wide v28

    move-wide/from16 v30, v24

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 769
    .restart local v26    # "tickStart":D
    move-wide/from16 v28, v26

    move-wide/from16 v30, v17

    cmpg-double v28, v28, v30

    if-lez v28, :cond_1b

    move-wide/from16 v28, v26

    move-wide/from16 v30, v24

    add-double v28, v28, v30

    move-wide/from16 v30, v19

    cmpl-double v28, v28, v30

    if-lez v28, :cond_1c

    .line 770
    :cond_1b
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->labelsToSkip:Ljava/util/BitSet;

    move-object/from16 v28, v0

    move/from16 v29, v22

    invoke-virtual/range {v28 .. v29}, Ljava/util/BitSet;->set(I)V

    goto :goto_13

    .line 772
    :cond_1c
    move-wide/from16 v28, v26

    move-wide/from16 v30, v24

    add-double v28, v28, v30

    move-wide/from16 v17, v28

    goto :goto_13

    .line 803
    .end local v21    # "stop":I
    .end local v22    # "i":I
    .end local v23    # "m":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    .end local v24    # "tickWidth":D
    .end local v26    # "tickStart":D
    .local v17, "effectiveLabelRotation":D
    .local v19, "i":I
    .restart local v20    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_1d
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 812
    :cond_1e
    move-object/from16 v28, v20

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/text/Text;->setVisible(Z)V

    goto/16 :goto_d

    .line 795
    .line 912
    .end local v19    # "i":I
    .end local v20    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_1f
    :goto_14
    return-void

    .line 815
    :cond_20
    sget-object v28, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object/from16 v29, v11

    invoke-virtual/range {v28 .. v29}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_25

    .line 817
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object/from16 v28, v0

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 818
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object/from16 v28, v0

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 819
    const/16 v28, 0x0

    move/from16 v14, v28

    .line 820
    const/16 v28, 0x0

    move/from16 v19, v28

    .restart local v19    # "i":I
    :goto_15
    move/from16 v28, v19

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljavafx/collections/ObservableList;->size()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_24

    .line 821
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v28, v0

    move/from16 v29, v19

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/chart/Axis$TickMark;

    move-object/from16 v20, v28

    .line 822
    .restart local v20    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object/from16 v28, v3

    move-object/from16 v29, v20

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v29, v0

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/Axis;->getTickLabelGap()D

    move-result-wide v30

    move-wide/from16 v32, v8

    add-double v30, v30, v32

    move-object/from16 v32, v20

    .line 823
    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v32

    move-wide/from16 v34, v17

    move-object/from16 v36, v11

    .line 822
    invoke-direct/range {v28 .. v36}, Ljavafx/scene/chart/Axis;->positionTextNode(Ljavafx/scene/text/Text;DDDLjavafx/geometry/Side;)V

    .line 825
    move-object/from16 v28, v20

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_23

    move-object/from16 v28, v20

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v28

    move-wide/from16 v30, v12

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_23

    .line 826
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->isTickLabelsVisible()Z

    move-result v28

    if-eqz v28, :cond_21

    .line 827
    move-object/from16 v28, v20

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->labelsToSkip:Ljava/util/BitSet;

    move-object/from16 v29, v0

    move/from16 v30, v19

    invoke-virtual/range {v29 .. v30}, Ljava/util/BitSet;->get(I)Z

    move-result v29

    if-nez v29, :cond_22

    const/16 v29, 0x1

    :goto_16
    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/text/Text;->setVisible(Z)V

    .line 828
    add-int/lit8 v14, v14, 0x1

    .line 831
    :cond_21
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v29, v0

    move-object/from16 v40, v29

    move-object/from16 v29, v40

    move-object/from16 v30, v40

    const/16 v31, 0x0

    new-instance v32, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    const-wide/16 v34, 0x0

    move-object/from16 v36, v20

    .line 832
    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v36

    invoke-direct/range {v33 .. v37}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v32, v30, v31

    move-object/from16 v40, v29

    move-object/from16 v29, v40

    move-object/from16 v30, v40

    const/16 v31, 0x1

    new-instance v32, Ljavafx/scene/shape/LineTo;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    move-wide/from16 v34, v8

    move-object/from16 v36, v20

    .line 833
    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v36

    invoke-direct/range {v33 .. v37}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v32, v30, v31

    .line 831
    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v28

    .line 820
    :goto_17
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_15

    .line 827
    :cond_22
    const/16 v29, 0x0

    goto :goto_16

    .line 836
    :cond_23
    move-object/from16 v28, v20

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/text/Text;->setVisible(Z)V

    goto :goto_17

    .line 839
    .end local v20    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_24
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->getLabel()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_1f

    .line 840
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    move-wide/from16 v29, v4

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v28

    move-wide/from16 v19, v28

    .line 841
    .local v19, "axisLabelWidth":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/Label;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljavafx/scene/transform/Transform;

    move-object/from16 v29, v0

    move-object/from16 v40, v29

    move-object/from16 v29, v40

    move-object/from16 v30, v40

    const/16 v31, 0x0

    new-instance v32, Ljavafx/scene/transform/Translate;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    const-wide/16 v34, 0x0

    move-wide/from16 v36, v6

    invoke-direct/range {v33 .. v37}, Ljavafx/scene/transform/Translate;-><init>(DD)V

    aput-object v32, v30, v31

    move-object/from16 v40, v29

    move-object/from16 v29, v40

    move-object/from16 v30, v40

    const/16 v31, 0x1

    new-instance v32, Ljavafx/scene/transform/Rotate;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    const-wide v34, -0x3fa9800000000000L    # -90.0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    invoke-direct/range {v33 .. v39}, Ljavafx/scene/transform/Rotate;-><init>(DDD)V

    aput-object v32, v30, v31

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v28

    .line 842
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    move-wide/from16 v29, v4

    move-wide/from16 v31, v19

    sub-double v29, v29, v31

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/Label;->setLayoutX(D)V

    .line 843
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/Label;->setLayoutY(D)V

    .line 845
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    move-wide/from16 v29, v6

    move-wide/from16 v31, v19

    invoke-virtual/range {v28 .. v32}, Ljavafx/scene/control/Label;->resize(DD)V

    .line 846
    goto/16 :goto_14

    .line 847
    .end local v19    # "axisLabelWidth":D
    :cond_25
    sget-object v28, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move-object/from16 v29, v11

    invoke-virtual/range {v28 .. v29}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2b

    .line 849
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object/from16 v28, v0

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 850
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object/from16 v28, v0

    const-wide/high16 v29, -0x4020000000000000L    # -0.5

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 851
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->getLabel()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_26

    .line 852
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/Label;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljavafx/collections/ObservableList;->clear()V

    .line 853
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/Label;->setLayoutX(D)V

    .line 854
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/Label;->setLayoutY(D)V

    .line 855
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    move-wide/from16 v29, v4

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v31, v0

    move-wide/from16 v32, v4

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v31

    invoke-virtual/range {v28 .. v32}, Ljavafx/scene/control/Label;->resize(DD)V

    .line 857
    :cond_26
    const/16 v28, 0x0

    move/from16 v14, v28

    .line 858
    const/16 v28, 0x0

    move/from16 v19, v28

    .local v19, "i":I
    :goto_18
    move/from16 v28, v19

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljavafx/collections/ObservableList;->size()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_2a

    .line 859
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v28, v0

    move/from16 v29, v19

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/chart/Axis$TickMark;

    move-object/from16 v20, v28

    .line 860
    .restart local v20    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object/from16 v28, v3

    move-object/from16 v29, v20

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v29, v0

    move-object/from16 v30, v20

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v30

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    sub-double v32, v32, v34

    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/chart/Axis;->getTickLabelGap()D

    move-result-wide v34

    sub-double v32, v32, v34

    move-wide/from16 v34, v17

    move-object/from16 v36, v11

    invoke-direct/range {v28 .. v36}, Ljavafx/scene/chart/Axis;->positionTextNode(Ljavafx/scene/text/Text;DDDLjavafx/geometry/Side;)V

    .line 863
    move-object/from16 v28, v20

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_29

    move-object/from16 v28, v20

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v28

    move-wide/from16 v30, v12

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_29

    .line 864
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->isTickLabelsVisible()Z

    move-result v28

    if-eqz v28, :cond_27

    .line 865
    move-object/from16 v28, v20

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->labelsToSkip:Ljava/util/BitSet;

    move-object/from16 v29, v0

    move/from16 v30, v19

    invoke-virtual/range {v29 .. v30}, Ljava/util/BitSet;->get(I)Z

    move-result v29

    if-nez v29, :cond_28

    const/16 v29, 0x1

    :goto_19
    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/text/Text;->setVisible(Z)V

    .line 866
    add-int/lit8 v14, v14, 0x1

    .line 869
    :cond_27
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v29, v0

    move-object/from16 v40, v29

    move-object/from16 v29, v40

    move-object/from16 v30, v40

    const/16 v31, 0x0

    new-instance v32, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    move-object/from16 v34, v20

    .line 870
    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v34

    move-wide/from16 v36, v6

    invoke-direct/range {v33 .. v37}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v32, v30, v31

    move-object/from16 v40, v29

    move-object/from16 v29, v40

    move-object/from16 v30, v40

    const/16 v31, 0x1

    new-instance v32, Ljavafx/scene/shape/LineTo;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    move-object/from16 v34, v20

    .line 871
    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/chart/Axis$TickMark;->getPosition()D

    move-result-wide v34

    move-wide/from16 v36, v6

    move-wide/from16 v38, v8

    sub-double v36, v36, v38

    invoke-direct/range {v33 .. v37}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v32, v30, v31

    .line 869
    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v28

    .line 858
    :goto_1a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_18

    .line 865
    :cond_28
    const/16 v29, 0x0

    goto :goto_19

    .line 874
    :cond_29
    move-object/from16 v28, v20

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/text/Text;->setVisible(Z)V

    goto :goto_1a

    .line 858
    .end local v20    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_2a
    goto/16 :goto_14

    .line 880
    .end local v19    # "i":I
    :cond_2b
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object/from16 v28, v0

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 881
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object/from16 v28, v0

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 882
    const/16 v28, 0x0

    move/from16 v14, v28

    .line 883
    const/16 v28, 0x0

    move/from16 v19, v28

    .restart local v19    # "i":I
    :goto_1b
    move/from16 v28, v19

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljavafx/collections/ObservableList;->size()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_2f

    .line 884
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarks:Ljavafx/collections/ObservableList;

    move-object/from16 v28, v0

    move/from16 v29, v19

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/chart/Axis$TickMark;

    move-object/from16 v20, v28

    .line 885
    .restart local v20    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object/from16 v28, v3

    move-object/from16 v29, v20

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/Axis$TickMark;->getValue()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->round(D)J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v21, v28

    .line 887
    .local v21, "xPos":D
    move-object/from16 v28, v3

    move-object/from16 v29, v20

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v29, v0

    move-wide/from16 v30, v21

    move-wide/from16 v32, v8

    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/chart/Axis;->getTickLabelGap()D

    move-result-wide v34

    add-double v32, v32, v34

    move-wide/from16 v34, v17

    move-object/from16 v36, v11

    invoke-direct/range {v28 .. v36}, Ljavafx/scene/chart/Axis;->positionTextNode(Ljavafx/scene/text/Text;DDDLjavafx/geometry/Side;)V

    .line 890
    move-wide/from16 v28, v21

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_2e

    move-wide/from16 v28, v21

    move-wide/from16 v30, v12

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_2e

    .line 891
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->isTickLabelsVisible()Z

    move-result v28

    if-eqz v28, :cond_2c

    .line 892
    move-object/from16 v28, v20

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->labelsToSkip:Ljava/util/BitSet;

    move-object/from16 v29, v0

    move/from16 v30, v19

    invoke-virtual/range {v29 .. v30}, Ljava/util/BitSet;->get(I)Z

    move-result v29

    if-nez v29, :cond_2d

    const/16 v29, 0x1

    :goto_1c
    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/text/Text;->setVisible(Z)V

    .line 893
    add-int/lit8 v14, v14, 0x1

    .line 896
    :cond_2c
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->tickMarkPath:Ljavafx/scene/shape/Path;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v29, v0

    move-object/from16 v40, v29

    move-object/from16 v29, v40

    move-object/from16 v30, v40

    const/16 v31, 0x0

    new-instance v32, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    move-wide/from16 v34, v21

    const-wide/16 v36, 0x0

    invoke-direct/range {v33 .. v37}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v32, v30, v31

    move-object/from16 v40, v29

    move-object/from16 v29, v40

    move-object/from16 v30, v40

    const/16 v31, 0x1

    new-instance v32, Ljavafx/scene/shape/LineTo;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    move-wide/from16 v34, v21

    move-wide/from16 v36, v8

    invoke-direct/range {v33 .. v37}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v32, v30, v31

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v28

    .line 883
    :goto_1d
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1b

    .line 892
    :cond_2d
    const/16 v29, 0x0

    goto :goto_1c

    .line 901
    :cond_2e
    move-object/from16 v28, v20

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/text/Text;->setVisible(Z)V

    goto :goto_1d

    .line 904
    .end local v20    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    .end local v21    # "xPos":D
    :cond_2f
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/Axis;->getLabel()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_1f

    .line 905
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/Label;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljavafx/collections/ObservableList;->clear()V

    .line 906
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    move-wide/from16 v29, v4

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v28

    move-wide/from16 v19, v28

    .line 907
    .local v19, "labelHeight":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/Label;->setLayoutX(D)V

    .line 908
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    move-wide/from16 v29, v6

    move-wide/from16 v31, v19

    sub-double v29, v29, v31

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/Label;->setLayoutY(D)V

    .line 909
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/Axis;->axisLabel:Ljavafx/scene/control/Label;

    move-object/from16 v28, v0

    move-wide/from16 v29, v4

    move-wide/from16 v31, v19

    invoke-virtual/range {v28 .. v32}, Ljavafx/scene/control/Label;->resize(DD)V

    goto/16 :goto_14

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final measureTickMarkLabelSize(Ljava/lang/String;D)Ljavafx/geometry/Dimension2D;
    .locals 12

    .prologue
    .line 967
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, p1

    .local v1, "labelText":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "rotation":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/Axis;->measure:Ljavafx/scene/text/Text;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/text/Text;->setRotate(D)V

    .line 968
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/Axis;->measure:Ljavafx/scene/text/Text;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 969
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/Axis;->measure:Ljavafx/scene/text/Text;

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v5

    move-object v4, v5

    .line 970
    .local v4, "bounds":Ljavafx/geometry/Bounds;
    new-instance v5, Ljavafx/geometry/Dimension2D;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v7

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/geometry/Dimension2D;-><init>(DD)V

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method protected final measureTickMarkSize(Ljava/lang/Object;D)Ljavafx/geometry/Dimension2D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)",
            "Ljavafx/geometry/Dimension2D;"
        }
    .end annotation

    .prologue
    .line 981
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-wide v2, p2

    .local v2, "rotation":D
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/Axis;->getTickMarkLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/chart/Axis;->measureTickMarkLabelSize(Ljava/lang/String;D)Ljavafx/geometry/Dimension2D;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method protected measureTickMarkSize(Ljava/lang/Object;Ljava/lang/Object;)Ljavafx/geometry/Dimension2D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljavafx/geometry/Dimension2D;"
        }
    .end annotation

    .prologue
    .line 992
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v2, p1

    .local v2, "value":Ljava/lang/Object;, "TT;"
    move-object v3, p2

    .local v3, "range":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/Axis;->getEffectiveTickLabelRotation()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/chart/Axis;->measureTickMarkSize(Ljava/lang/Object;D)Ljavafx/geometry/Dimension2D;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v1
.end method

.method public requestAxisLayout()V
    .locals 2

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/Region;->requestLayout()V

    .line 457
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 447
    .local p0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-void
.end method

.method public final setAnimated(Z)V
    .locals 4

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis;->animated:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setAutoRanging(Z)V
    .locals 4

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis;->autoRanging:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method final setEffectiveOrientation(Ljavafx/geometry/Orientation;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, p1

    .local v1, "orientation":Ljavafx/geometry/Orientation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/Axis;->effectiveOrientation:Ljavafx/geometry/Orientation;

    .line 142
    return-void
.end method

.method final setEffectiveTickLabelRotation(D)V
    .locals 7

    .prologue
    .line 1004
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-wide v1, p1

    .local v1, "rotation":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/Axis;->effectiveTickLabelRotation:D

    .line 1005
    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis;->label:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract setRange(Ljava/lang/Object;Z)V
.end method

.method public final setSide(Ljavafx/geometry/Side;)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Side;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis;->side:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTickLabelFill(Ljavafx/scene/paint/Paint;)V
    .locals 4

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis;->tickLabelFill:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTickLabelFont(Ljavafx/scene/text/Font;)V
    .locals 4

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/Font;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis;->tickLabelFont:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTickLabelGap(D)V
    .locals 7

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/Axis;->tickLabelGap:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setTickLabelRotation(D)V
    .locals 7

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/Axis;->tickLabelRotation:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public final setTickLabelsVisible(Z)V
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis;->tickLabelsVisible:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setTickLength(D)V
    .locals 7

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/Axis;->tickLength:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setTickMarkVisible(Z)V
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis;->tickMarkVisible:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method protected final shouldAnimate()Z
    .locals 2

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis;->getAnimated()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis;->impl_isTreeVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final sideProperty()Ljavafx/beans/property/ObjectProperty;
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
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->side:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method public final tickLabelFillProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelFill:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method public final tickLabelFontProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelFont:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method public final tickLabelGapProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelGap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method public final tickLabelRotationProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelRotation:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method public final tickLabelsVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLabelsVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method public final tickLengthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickLength:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method public final tickMarkVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis;->tickMarkVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-object v0
.end method

.method protected tickMarksUpdated()V
    .locals 0

    .prologue
    .line 635
    .local p0, "this":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    return-void
.end method

.method public abstract toNumericValue(Ljava/lang/Object;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation
.end method

.method public abstract toRealValue(D)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation
.end method
