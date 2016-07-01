.class public Ljavafx/scene/layout/FlowPane;
.super Ljavafx/scene/layout/Pane;
.source "FlowPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/layout/FlowPane$Run;,
        Ljavafx/scene/layout/FlowPane$LayoutRect;,
        Ljavafx/scene/layout/FlowPane$StyleableProperties;
    }
.end annotation


# static fields
.field private static final MARGIN_CONSTRAINT:Ljava/lang/String; = "flowpane-margin"

.field private static final marginAccessor:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private columnHalignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/HPos;",
            ">;"
        }
    .end annotation
.end field

.field computingRuns:Z

.field private hgap:Ljavafx/beans/property/DoubleProperty;

.field private lastMaxRunLength:D

.field private orientation:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation
.end field

.field private prefWrapLength:Ljavafx/beans/property/DoubleProperty;

.field private rowValignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/VPos;",
            ">;"
        }
    .end annotation
.end field

.field private runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/FlowPane$Run;",
            ">;"
        }
    .end annotation
.end field

.field private vgap:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Ljavafx/scene/layout/FlowPane$$Lambda$2;->lambdaFactory$()Ljavafx/util/Callback;

    move-result-object v0

    sput-object v0, Ljavafx/scene/layout/FlowPane;->marginAccessor:Ljavafx/util/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 637
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/layout/FlowPane;->runs:Ljava/util/List;

    .line 638
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/layout/FlowPane;->lastMaxRunLength:D

    .line 639
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/layout/FlowPane;->computingRuns:Z

    .line 196
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-wide v1, p1

    .local v1, "hgap":D
    move-wide v3, p3

    .local v3, "vgap":D
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/layout/FlowPane;-><init>()V

    .line 214
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/FlowPane;->setHgap(D)V

    .line 215
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/FlowPane;->setVgap(D)V

    .line 216
    return-void
.end method

.method public varargs constructor <init>(DD[Ljavafx/scene/Node;)V
    .locals 11

    .prologue
    .line 261
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/FlowPane;
    move-wide v2, p1

    .local v2, "hgap":D
    move-wide v4, p3

    .local v4, "vgap":D
    move-object/from16 v6, p5

    .local v6, "children":[Ljavafx/scene/Node;
    move-object v7, v1

    invoke-direct {v7}, Ljavafx/scene/layout/FlowPane;-><init>()V

    .line 262
    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/FlowPane;->setHgap(D)V

    .line 263
    move-object v7, v1

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/FlowPane;->setVgap(D)V

    .line 264
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/layout/FlowPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v7

    .line 265
    return-void
.end method

.method public constructor <init>(Ljavafx/geometry/Orientation;)V
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, p1

    .local v1, "orientation":Ljavafx/geometry/Orientation;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/FlowPane;-><init>()V

    .line 204
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/FlowPane;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljavafx/geometry/Orientation;DD)V
    .locals 10

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, p1

    .local v1, "orientation":Ljavafx/geometry/Orientation;
    move-wide v2, p2

    .local v2, "hgap":D
    move-wide v4, p4

    .local v4, "vgap":D
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/layout/FlowPane;-><init>()V

    .line 226
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/FlowPane;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 227
    move-object v6, v0

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/FlowPane;->setHgap(D)V

    .line 228
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/FlowPane;->setVgap(D)V

    .line 229
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/geometry/Orientation;DD[Ljavafx/scene/Node;)V
    .locals 10

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, p1

    .local v1, "orientation":Ljavafx/geometry/Orientation;
    move-wide v2, p2

    .local v2, "hgap":D
    move-wide v4, p4

    .local v4, "vgap":D
    move-object/from16 v6, p6

    .local v6, "children":[Ljavafx/scene/Node;
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/layout/FlowPane;-><init>()V

    .line 277
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/FlowPane;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 278
    move-object v7, v0

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/FlowPane;->setHgap(D)V

    .line 279
    move-object v7, v0

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/FlowPane;->setVgap(D)V

    .line 280
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/layout/FlowPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v7

    .line 281
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/geometry/Orientation;[Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, p1

    .local v1, "orientation":Ljavafx/geometry/Orientation;
    move-object v2, p2

    .local v2, "children":[Ljavafx/scene/Node;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/FlowPane;-><init>()V

    .line 249
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/FlowPane;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 250
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/FlowPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 251
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 237
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/FlowPane;
    move-object v2, p1

    .local v2, "children":[Ljavafx/scene/Node;
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 637
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/layout/FlowPane;->runs:Ljava/util/List;

    .line 638
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Ljavafx/scene/layout/FlowPane;->lastMaxRunLength:D

    .line 639
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/layout/FlowPane;->computingRuns:Z

    .line 238
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/layout/FlowPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 239
    return-void
.end method

.method static synthetic access$1000(Ljavafx/scene/layout/FlowPane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->hgap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/FlowPane;
    return-object v0
.end method

.method static synthetic access$1100(Ljavafx/scene/layout/FlowPane;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->rowValignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/FlowPane;
    return-object v0
.end method

.method static synthetic access$1200(Ljavafx/scene/layout/FlowPane;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/FlowPane;
    return-object v0
.end method

.method static synthetic access$1300(Ljavafx/scene/layout/FlowPane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->vgap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/FlowPane;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/layout/FlowPane;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/FlowPane;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/scene/layout/FlowPane;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->columnHalignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/FlowPane;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/layout/FlowPane$Run;Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/layout/FlowPane;->lambda$normalizeRun$502(Ljavafx/scene/layout/FlowPane$Run;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/layout/FlowPane;->lambda$static$501(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static clearConstraints(Ljavafx/scene/Node;)V
    .locals 3

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/FlowPane;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    .line 185
    return-void
.end method

.method private computeContentHeight(Ljava/util/List;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/FlowPane$Run;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 743
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/FlowPane;
    move-object v2, p1

    .local v2, "runs":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v8

    sget-object v9, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v8, v9, :cond_0

    const-wide/16 v8, 0x0

    :goto_0
    move-wide v3, v8

    .line 744
    .local v3, "cheight":D
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v6, v8

    .local v6, "max":I
    :goto_1
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_2

    .line 745
    move-object v8, v2

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/layout/FlowPane$Run;

    move-object v7, v8

    .line 746
    .local v7, "run":Ljavafx/scene/layout/FlowPane$Run;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v8

    sget-object v9, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v8, v9, :cond_1

    .line 747
    move-wide v8, v3

    move-object v10, v7

    iget-wide v10, v10, Ljavafx/scene/layout/FlowPane$Run;->height:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v3, v8

    .line 744
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 743
    .end local v3    # "cheight":D
    .end local v5    # "i":I
    .end local v6    # "max":I
    .end local v7    # "run":Ljavafx/scene/layout/FlowPane$Run;
    :cond_0
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/layout/FlowPane;->getVgap()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/FlowPane;->snapSpace(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    goto :goto_0

    .line 750
    .restart local v3    # "cheight":D
    .restart local v5    # "i":I
    .restart local v6    # "max":I
    .restart local v7    # "run":Ljavafx/scene/layout/FlowPane$Run;
    :cond_1
    move-wide v8, v3

    move-object v10, v7

    iget-wide v10, v10, Ljavafx/scene/layout/FlowPane$Run;->height:D

    add-double/2addr v8, v10

    move-wide v3, v8

    goto :goto_2

    .line 753
    .end local v7    # "run":Ljavafx/scene/layout/FlowPane$Run;
    :cond_2
    move-wide v8, v3

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/scene/layout/FlowPane;
    return-wide v1
.end method

.method private computeContentWidth(Ljava/util/List;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/FlowPane$Run;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 729
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/FlowPane;
    move-object v2, p1

    .local v2, "runs":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v8

    sget-object v9, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v8, v9, :cond_0

    const-wide/16 v8, 0x0

    :goto_0
    move-wide v3, v8

    .line 730
    .local v3, "cwidth":D
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v6, v8

    .local v6, "max":I
    :goto_1
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_2

    .line 731
    move-object v8, v2

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/layout/FlowPane$Run;

    move-object v7, v8

    .line 732
    .local v7, "run":Ljavafx/scene/layout/FlowPane$Run;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v8

    sget-object v9, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v8, v9, :cond_1

    .line 733
    move-wide v8, v3

    move-object v10, v7

    iget-wide v10, v10, Ljavafx/scene/layout/FlowPane$Run;->width:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v3, v8

    .line 730
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 729
    .end local v3    # "cwidth":D
    .end local v5    # "i":I
    .end local v6    # "max":I
    .end local v7    # "run":Ljavafx/scene/layout/FlowPane$Run;
    :cond_0
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/layout/FlowPane;->getHgap()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/FlowPane;->snapSpace(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    goto :goto_0

    .line 736
    .restart local v3    # "cwidth":D
    .restart local v5    # "i":I
    .restart local v6    # "max":I
    .restart local v7    # "run":Ljavafx/scene/layout/FlowPane$Run;
    :cond_1
    move-wide v8, v3

    move-object v10, v7

    iget-wide v10, v10, Ljavafx/scene/layout/FlowPane$Run;->width:D

    add-double/2addr v8, v10

    move-wide v3, v8

    goto :goto_2

    .line 739
    .end local v7    # "run":Ljavafx/scene/layout/FlowPane$Run;
    :cond_2
    move-wide v8, v3

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/scene/layout/FlowPane;
    return-wide v1
.end method

.method private getAlignmentInternal()Ljavafx/geometry/Pos;
    .locals 3

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/FlowPane;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v2

    move-object v1, v2

    .line 473
    .local v1, "localPos":Ljavafx/geometry/Pos;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/FlowPane;
    :cond_0
    move-object v2, v1

    goto :goto_0
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
    .line 932
    # getter for: Ljavafx/scene/layout/FlowPane$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/layout/FlowPane$StyleableProperties;->access$1400()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getColumnHalignmentInternal()Ljavafx/geometry/HPos;
    .locals 3

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/FlowPane;->getColumnHalignment()Ljavafx/geometry/HPos;

    move-result-object v2

    move-object v1, v2

    .line 513
    .local v1, "localPos":Ljavafx/geometry/HPos;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/FlowPane;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method public static getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 3

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "flowpane-margin"

    invoke-static {v1, v2}, Ljavafx/scene/layout/FlowPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getRowValignmentInternal()Ljavafx/geometry/VPos;
    .locals 3

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/FlowPane;->getRowValignment()Ljavafx/geometry/VPos;

    move-result-object v2

    move-object v1, v2

    .line 555
    .local v1, "localPos":Ljavafx/geometry/VPos;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/FlowPane;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private getRuns(D)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/FlowPane$Run;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    move-object/from16 v4, p0

    .local v4, "this":Ljavafx/scene/layout/FlowPane;
    move-wide/from16 v5, p1

    .local v5, "maxRunLength":D
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/FlowPane;->runs:Ljava/util/List;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-wide/from16 v24, v5

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane;->lastMaxRunLength:D

    move-wide/from16 v26, v0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_7

    .line 643
    :cond_0
    move-object/from16 v24, v4

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Ljavafx/scene/layout/FlowPane;->computingRuns:Z

    .line 644
    move-object/from16 v24, v4

    move-wide/from16 v25, v5

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/scene/layout/FlowPane;->lastMaxRunLength:D

    .line 645
    move-object/from16 v24, v4

    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Ljavafx/scene/layout/FlowPane;->runs:Ljava/util/List;

    .line 646
    const-wide/16 v24, 0x0

    move-wide/from16 v7, v24

    .line 647
    .local v7, "runLength":D
    const-wide/16 v24, 0x0

    move-wide/from16 v9, v24

    .line 648
    .local v9, "runOffset":D
    new-instance v24, Ljavafx/scene/layout/FlowPane$Run;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/layout/FlowPane$Run;-><init>(Ljavafx/scene/layout/FlowPane$1;)V

    move-object/from16 v11, v24

    .line 649
    .local v11, "run":Ljavafx/scene/layout/FlowPane$Run;
    move-object/from16 v24, v4

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/FlowPane;->getVgap()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/FlowPane;->snapSpace(D)D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 650
    .local v12, "vgap":D
    move-object/from16 v24, v4

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/FlowPane;->getHgap()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/FlowPane;->snapSpace(D)D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 652
    .local v14, "hgap":D
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/FlowPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v24

    move-object/from16 v16, v24

    .line 653
    .local v16, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/16 v24, 0x0

    move/from16 v17, v24

    .local v17, "i":I
    move-object/from16 v24, v16

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v18, v24

    .local v18, "size":I
    :goto_0
    move/from16 v24, v17

    move/from16 v25, v18

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 654
    move-object/from16 v24, v16

    move/from16 v25, v17

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/Node;

    move-object/from16 v19, v24

    .line 655
    .local v19, "child":Ljavafx/scene/Node;
    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/Node;->isManaged()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 656
    new-instance v24, Ljavafx/scene/layout/FlowPane$LayoutRect;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/layout/FlowPane$LayoutRect;-><init>(Ljavafx/scene/layout/FlowPane$1;)V

    move-object/from16 v20, v24

    .line 657
    .local v20, "nodeRect":Ljavafx/scene/layout/FlowPane$LayoutRect;
    move-object/from16 v24, v20

    move-object/from16 v25, v19

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Ljavafx/scene/layout/FlowPane$LayoutRect;->node:Ljavafx/scene/Node;

    .line 658
    move-object/from16 v24, v19

    invoke-static/range {v24 .. v24}, Ljavafx/scene/layout/FlowPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v24

    move-object/from16 v21, v24

    .line 659
    .local v21, "margin":Ljavafx/geometry/Insets;
    move-object/from16 v24, v20

    move-object/from16 v25, v4

    move-object/from16 v26, v19

    move-object/from16 v27, v21

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/layout/FlowPane;->computeChildPrefAreaWidth(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/scene/layout/FlowPane$LayoutRect;->width:D

    .line 660
    move-object/from16 v24, v20

    move-object/from16 v25, v4

    move-object/from16 v26, v19

    move-object/from16 v27, v21

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/layout/FlowPane;->computeChildPrefAreaHeight(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/scene/layout/FlowPane$LayoutRect;->height:D

    .line 661
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v24

    sget-object v25, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3

    move-object/from16 v24, v20

    move-object/from16 v0, v24

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$LayoutRect;->width:D

    move-wide/from16 v24, v0

    :goto_1
    move-wide/from16 v22, v24

    .line 662
    .local v22, "nodeLength":D
    move-wide/from16 v24, v7

    move-wide/from16 v26, v22

    add-double v24, v24, v26

    move-wide/from16 v26, v5

    cmpl-double v24, v24, v26

    if-lez v24, :cond_1

    move-wide/from16 v24, v7

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_1

    .line 664
    move-object/from16 v24, v4

    move-object/from16 v25, v11

    move-wide/from16 v26, v9

    invoke-direct/range {v24 .. v27}, Ljavafx/scene/layout/FlowPane;->normalizeRun(Ljavafx/scene/layout/FlowPane$Run;D)V

    .line 665
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v24

    sget-object v25, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 667
    move-wide/from16 v24, v9

    move-object/from16 v26, v11

    move-object/from16 v0, v26

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$Run;->height:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v9, v24

    .line 672
    :goto_2
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/FlowPane;->runs:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v25, v11

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 673
    const-wide/16 v24, 0x0

    move-wide/from16 v7, v24

    .line 674
    new-instance v24, Ljavafx/scene/layout/FlowPane$Run;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/layout/FlowPane$Run;-><init>(Ljavafx/scene/layout/FlowPane$1;)V

    move-object/from16 v11, v24

    .line 676
    :cond_1
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v24

    sget-object v25, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 678
    move-object/from16 v24, v20

    move-wide/from16 v25, v7

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/scene/layout/FlowPane$LayoutRect;->x:D

    .line 679
    move-wide/from16 v24, v7

    move-object/from16 v26, v20

    move-object/from16 v0, v26

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$LayoutRect;->width:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v14

    add-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v7, v24

    .line 685
    :goto_3
    move-object/from16 v24, v11

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/FlowPane$Run;->rects:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v25, v20

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 653
    .end local v20    # "nodeRect":Ljavafx/scene/layout/FlowPane$LayoutRect;
    .end local v21    # "margin":Ljavafx/geometry/Insets;
    .end local v22    # "nodeLength":D
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 661
    .restart local v20    # "nodeRect":Ljavafx/scene/layout/FlowPane$LayoutRect;
    .restart local v21    # "margin":Ljavafx/geometry/Insets;
    :cond_3
    move-object/from16 v24, v20

    move-object/from16 v0, v24

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$LayoutRect;->height:D

    move-wide/from16 v24, v0

    goto/16 :goto_1

    .line 670
    .restart local v22    # "nodeLength":D
    :cond_4
    move-wide/from16 v24, v9

    move-object/from16 v26, v11

    move-object/from16 v0, v26

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$Run;->width:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v14

    add-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v9, v24

    goto :goto_2

    .line 682
    :cond_5
    move-object/from16 v24, v20

    move-wide/from16 v25, v7

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/scene/layout/FlowPane$LayoutRect;->y:D

    .line 683
    move-wide/from16 v24, v7

    move-object/from16 v26, v20

    move-object/from16 v0, v26

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$LayoutRect;->height:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v7, v24

    goto :goto_3

    .line 690
    .end local v19    # "child":Ljavafx/scene/Node;
    .end local v20    # "nodeRect":Ljavafx/scene/layout/FlowPane$LayoutRect;
    .end local v21    # "margin":Ljavafx/geometry/Insets;
    .end local v22    # "nodeLength":D
    :cond_6
    move-object/from16 v24, v4

    move-object/from16 v25, v11

    move-wide/from16 v26, v9

    invoke-direct/range {v24 .. v27}, Ljavafx/scene/layout/FlowPane;->normalizeRun(Ljavafx/scene/layout/FlowPane$Run;D)V

    .line 691
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/FlowPane;->runs:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v25, v11

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 692
    move-object/from16 v24, v4

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Ljavafx/scene/layout/FlowPane;->computingRuns:Z

    .line 694
    .end local v7    # "runLength":D
    .end local v9    # "runOffset":D
    .end local v11    # "run":Ljavafx/scene/layout/FlowPane$Run;
    .end local v12    # "vgap":D
    .end local v14    # "hgap":D
    .end local v16    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v17    # "i":I
    .end local v18    # "size":I
    :cond_7
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/FlowPane;->runs:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v4, v24

    .end local v4    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v4
.end method

.method private static synthetic lambda$normalizeRun$502(Ljavafx/scene/layout/FlowPane$Run;Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 4

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "run":Ljavafx/scene/layout/FlowPane$Run;
    move-object v1, p1

    .local v1, "i":Ljava/lang/Integer;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/FlowPane$Run;->rects:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/FlowPane$LayoutRect;

    iget-wide v2, v2, Ljavafx/scene/layout/FlowPane$LayoutRect;->width:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "run":Ljavafx/scene/layout/FlowPane$Run;
    return-object v0
.end method

.method private static synthetic lambda$static$501(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "n":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/layout/FlowPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "n":Ljavafx/scene/Node;
    return-object v0
.end method

.method private normalizeRun(Ljavafx/scene/layout/FlowPane$Run;D)V
    .locals 18

    .prologue
    .line 698
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object/from16 v1, p1

    .local v1, "run":Ljavafx/scene/layout/FlowPane$Run;
    move-wide/from16 v2, p2

    .local v2, "runOffset":D
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v9

    sget-object v10, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v9, v10, :cond_2

    .line 700
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v9

    .line 701
    .local v4, "rownodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/Node;>;"
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/FlowPane$Run;->rects:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    int-to-double v10, v10

    move-object v12, v0

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/layout/FlowPane;->getHgap()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/FlowPane;->snapSpace(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    iput-wide v10, v9, Ljavafx/scene/layout/FlowPane$Run;->width:D

    .line 702
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    move-object v9, v1

    iget-object v9, v9, Ljavafx/scene/layout/FlowPane$Run;->rects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .local v6, "max":I
    :goto_0
    move v9, v5

    move v10, v6

    if-ge v9, v10, :cond_0

    .line 703
    move-object v9, v1

    iget-object v9, v9, Ljavafx/scene/layout/FlowPane$Run;->rects:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/layout/FlowPane$LayoutRect;

    move-object v7, v9

    .line 704
    .local v7, "lrect":Ljavafx/scene/layout/FlowPane$LayoutRect;
    move-object v9, v4

    move-object v10, v7

    iget-object v10, v10, Ljavafx/scene/layout/FlowPane$LayoutRect;->node:Ljavafx/scene/Node;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 705
    move-object v9, v1

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    iget-wide v10, v10, Ljavafx/scene/layout/FlowPane$Run;->width:D

    move-object v12, v7

    iget-wide v12, v12, Ljavafx/scene/layout/FlowPane$LayoutRect;->width:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Ljavafx/scene/layout/FlowPane$Run;->width:D

    .line 706
    move-object v9, v7

    move-wide v10, v2

    iput-wide v10, v9, Ljavafx/scene/layout/FlowPane$LayoutRect;->y:D

    .line 702
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 708
    .end local v7    # "lrect":Ljavafx/scene/layout/FlowPane$LayoutRect;
    :cond_0
    move-object v9, v1

    move-object v10, v0

    move-object v11, v4

    sget-object v12, Ljavafx/scene/layout/FlowPane;->marginAccessor:Ljavafx/util/Callback;

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/layout/FlowPane;->getRowValignment()Ljavafx/geometry/VPos;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Ljavafx/scene/layout/FlowPane;->computeMaxPrefAreaHeight(Ljava/util/List;Ljavafx/util/Callback;Ljavafx/geometry/VPos;)D

    move-result-wide v10

    iput-wide v10, v9, Ljavafx/scene/layout/FlowPane$Run;->height:D

    .line 709
    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getRowValignment()Ljavafx/geometry/VPos;

    move-result-object v10

    sget-object v11, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    if-ne v10, v11, :cond_1

    move-object v10, v0

    move-object v11, v4

    sget-object v12, Ljavafx/scene/layout/FlowPane;->marginAccessor:Ljavafx/util/Callback;

    move-object v13, v1

    invoke-static {v13}, Ljavafx/scene/layout/FlowPane$$Lambda$1;->lambdaFactory$(Ljavafx/scene/layout/FlowPane$Run;)Ljava/util/function/Function;

    move-result-object v13

    move-object v14, v1

    iget-wide v14, v14, Ljavafx/scene/layout/FlowPane$Run;->height:D

    const/16 v16, 0x1

    .line 710
    invoke-virtual/range {v10 .. v16}, Ljavafx/scene/layout/FlowPane;->getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DZ)D

    move-result-wide v10

    :goto_1
    iput-wide v10, v9, Ljavafx/scene/layout/FlowPane$Run;->baselineOffset:D

    .line 712
    .line 726
    .end local v4    # "rownodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/Node;>;"
    .end local v5    # "i":I
    .end local v6    # "max":I
    :goto_2
    return-void

    .line 710
    .restart local v4    # "rownodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/Node;>;"
    .restart local v5    # "i":I
    .restart local v6    # "max":I
    :cond_1
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 714
    .end local v4    # "rownodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/Node;>;"
    .end local v5    # "i":I
    .end local v6    # "max":I
    :cond_2
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/FlowPane$Run;->rects:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    int-to-double v10, v10

    move-object v12, v0

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/layout/FlowPane;->getVgap()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/FlowPane;->snapSpace(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    iput-wide v10, v9, Ljavafx/scene/layout/FlowPane$Run;->height:D

    .line 715
    const-wide/16 v9, 0x0

    move-wide v4, v9

    .line 716
    .local v4, "maxw":D
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    move-object v9, v1

    iget-object v9, v9, Ljavafx/scene/layout/FlowPane$Run;->rects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v7, v9

    .local v7, "max":I
    :goto_3
    move v9, v6

    move v10, v7

    if-ge v9, v10, :cond_3

    .line 717
    move-object v9, v1

    iget-object v9, v9, Ljavafx/scene/layout/FlowPane$Run;->rects:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/layout/FlowPane$LayoutRect;

    move-object v8, v9

    .line 718
    .local v8, "lrect":Ljavafx/scene/layout/FlowPane$LayoutRect;
    move-object v9, v1

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    iget-wide v10, v10, Ljavafx/scene/layout/FlowPane$Run;->height:D

    move-object v12, v8

    iget-wide v12, v12, Ljavafx/scene/layout/FlowPane$LayoutRect;->height:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Ljavafx/scene/layout/FlowPane$Run;->height:D

    .line 719
    move-object v9, v8

    move-wide v10, v2

    iput-wide v10, v9, Ljavafx/scene/layout/FlowPane$LayoutRect;->x:D

    .line 720
    move-wide v9, v4

    move-object v11, v8

    iget-wide v11, v11, Ljavafx/scene/layout/FlowPane$LayoutRect;->width:D

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    move-wide v4, v9

    .line 716
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 723
    .end local v8    # "lrect":Ljavafx/scene/layout/FlowPane$LayoutRect;
    :cond_3
    move-object v9, v1

    move-wide v10, v4

    iput-wide v10, v9, Ljavafx/scene/layout/FlowPane$Run;->width:D

    .line 724
    move-object v9, v1

    move-object v10, v1

    iget-wide v10, v10, Ljavafx/scene/layout/FlowPane$Run;->height:D

    iput-wide v10, v9, Ljavafx/scene/layout/FlowPane$Run;->baselineOffset:D

    goto :goto_2
.end method

.method public static setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V
    .locals 5

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Insets;
    move-object v2, v0

    const-string v3, "flowpane-margin"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/FlowPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    return-void
.end method


# virtual methods
.method public final alignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 442
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/FlowPane$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/FlowPane$5;-><init>(Ljavafx/scene/layout/FlowPane;Ljavafx/geometry/Pos;)V

    iput-object v2, v1, Ljavafx/scene/layout/FlowPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    .line 465
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0
.end method

.method public final columnHalignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/HPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->columnHalignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 482
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/FlowPane$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/FlowPane$6;-><init>(Ljavafx/scene/layout/FlowPane;Ljavafx/geometry/HPos;)V

    iput-object v2, v1, Ljavafx/scene/layout/FlowPane;->columnHalignment:Ljavafx/beans/property/ObjectProperty;

    .line 505
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->columnHalignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0
.end method

.method protected computeMinHeight(D)D
    .locals 15

    .prologue
    .line 579
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/FlowPane;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v10

    sget-object v11, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v10, v11, :cond_2

    .line 580
    const-wide/16 v10, 0x0

    move-wide v4, v10

    .line 581
    .local v4, "maxPref":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v6, v10

    .line 582
    .local v6, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v8, v10

    .local v8, "size":I
    :goto_0
    move v10, v7

    move v11, v8

    if-ge v10, v11, :cond_1

    .line 583
    move-object v10, v6

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    move-object v9, v10

    .line 584
    .local v9, "child":Ljavafx/scene/Node;
    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/Node;->isManaged()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 585
    move-wide v10, v4

    move-object v12, v9

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-wide v4, v10

    .line 582
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 588
    .end local v9    # "child":Ljavafx/scene/Node;
    :cond_1
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v10

    move-object v7, v10

    .line 589
    .local v7, "insets":Ljavafx/geometry/Insets;
    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v10

    move-object v12, v1

    move-wide v13, v4

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/FlowPane;->snapSize(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v1, v10

    .line 591
    .end local v1    # "this":Ljavafx/scene/layout/FlowPane;
    .end local v4    # "maxPref":D
    .end local v6    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v7    # "insets":Ljavafx/geometry/Insets;
    .end local v8    # "size":I
    :goto_1
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/FlowPane;
    :cond_2
    move-object v10, v1

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/FlowPane;->computePrefHeight(D)D

    move-result-wide v10

    move-wide v1, v10

    goto :goto_1
.end method

.method protected computeMinWidth(D)D
    .locals 15

    .prologue
    .line 563
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/FlowPane;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v10

    sget-object v11, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v10, v11, :cond_2

    .line 564
    const-wide/16 v10, 0x0

    move-wide v4, v10

    .line 565
    .local v4, "maxPref":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v6, v10

    .line 566
    .local v6, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v8, v10

    .local v8, "size":I
    :goto_0
    move v10, v7

    move v11, v8

    if-ge v10, v11, :cond_1

    .line 567
    move-object v10, v6

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    move-object v9, v10

    .line 568
    .local v9, "child":Ljavafx/scene/Node;
    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/Node;->isManaged()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 569
    move-wide v10, v4

    move-object v12, v9

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-wide v4, v10

    .line 566
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 572
    .end local v9    # "child":Ljavafx/scene/Node;
    :cond_1
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v10

    move-object v7, v10

    .line 573
    .local v7, "insets":Ljavafx/geometry/Insets;
    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v10

    move-object v12, v1

    move-wide v13, v4

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/FlowPane;->snapSize(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v1, v10

    .line 575
    .end local v1    # "this":Ljavafx/scene/layout/FlowPane;
    .end local v4    # "maxPref":D
    .end local v6    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v7    # "insets":Ljavafx/geometry/Insets;
    .end local v8    # "size":I
    :goto_1
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/FlowPane;
    :cond_2
    move-object v10, v1

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/FlowPane;->computePrefWidth(D)D

    move-result-wide v10

    move-wide v1, v10

    goto :goto_1
.end method

.method protected computePrefHeight(D)D
    .locals 15

    .prologue
    .line 613
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/FlowPane;
    move-wide/from16 v2, p1

    .local v2, "forWidth":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v10

    move-object v4, v10

    .line 614
    .local v4, "insets":Ljavafx/geometry/Insets;
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v10

    sget-object v11, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v10, v11, :cond_1

    .line 616
    move-wide v10, v2

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    move-wide v10, v2

    move-object v12, v4

    .line 617
    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v12

    sub-double/2addr v10, v12

    :goto_0
    move-wide v5, v10

    .line 618
    .local v5, "maxRunWidth":D
    move-object v10, v1

    move-wide v11, v5

    invoke-direct {v10, v11, v12}, Ljavafx/scene/layout/FlowPane;->getRuns(D)Ljava/util/List;

    move-result-object v10

    move-object v7, v10

    .line 619
    .local v7, "hruns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v10

    move-object v12, v1

    move-object v13, v7

    invoke-direct {v12, v13}, Ljavafx/scene/layout/FlowPane;->computeContentHeight(Ljava/util/List;)D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v1, v10

    .line 626
    .end local v1    # "this":Ljavafx/scene/layout/FlowPane;
    .end local v5    # "maxRunWidth":D
    .end local v7    # "hruns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    :goto_1
    return-wide v1

    .line 617
    .restart local v1    # "this":Ljavafx/scene/layout/FlowPane;
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getPrefWrapLength()D

    move-result-wide v10

    goto :goto_0

    .line 622
    :cond_1
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getPrefWrapLength()D

    move-result-wide v10

    move-wide v5, v10

    .line 623
    .local v5, "maxRunHeight":D
    move-object v10, v1

    move-wide v11, v5

    invoke-direct {v10, v11, v12}, Ljavafx/scene/layout/FlowPane;->getRuns(D)Ljava/util/List;

    move-result-object v10

    move-object v7, v10

    .line 624
    .local v7, "vruns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    move-object v10, v1

    move-object v11, v7

    invoke-direct {v10, v11}, Ljavafx/scene/layout/FlowPane;->computeContentHeight(Ljava/util/List;)D

    move-result-wide v10

    move-wide v8, v10

    .line 625
    .local v8, "h":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getPrefWrapLength()D

    move-result-wide v10

    move-wide v12, v8

    cmpl-double v10, v10, v12

    if-lez v10, :cond_2

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getPrefWrapLength()D

    move-result-wide v10

    :goto_2
    move-wide v8, v10

    .line 626
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v10

    move-object v12, v1

    move-wide v13, v8

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/FlowPane;->snapSize(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v1, v10

    goto :goto_1

    .line 625
    :cond_2
    move-wide v10, v8

    goto :goto_2
.end method

.method protected computePrefWidth(D)D
    .locals 15

    .prologue
    .line 595
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/FlowPane;
    move-wide/from16 v2, p1

    .local v2, "forHeight":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v10

    move-object v4, v10

    .line 596
    .local v4, "insets":Ljavafx/geometry/Insets;
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v10

    sget-object v11, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v10, v11, :cond_1

    .line 598
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getPrefWrapLength()D

    move-result-wide v10

    move-wide v5, v10

    .line 599
    .local v5, "maxRunWidth":D
    move-object v10, v1

    move-wide v11, v5

    invoke-direct {v10, v11, v12}, Ljavafx/scene/layout/FlowPane;->getRuns(D)Ljava/util/List;

    move-result-object v10

    move-object v7, v10

    .line 600
    .local v7, "hruns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    move-object v10, v1

    move-object v11, v7

    invoke-direct {v10, v11}, Ljavafx/scene/layout/FlowPane;->computeContentWidth(Ljava/util/List;)D

    move-result-wide v10

    move-wide v8, v10

    .line 601
    .local v8, "w":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getPrefWrapLength()D

    move-result-wide v10

    move-wide v12, v8

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getPrefWrapLength()D

    move-result-wide v10

    :goto_0
    move-wide v8, v10

    .line 602
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v10

    move-object v12, v1

    move-wide v13, v8

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/FlowPane;->snapSize(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v1, v10

    .line 608
    .end local v1    # "this":Ljavafx/scene/layout/FlowPane;
    .end local v5    # "maxRunWidth":D
    .end local v7    # "hruns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    .end local v8    # "w":D
    :goto_1
    return-wide v1

    .line 601
    .restart local v1    # "this":Ljavafx/scene/layout/FlowPane;
    .restart local v5    # "maxRunWidth":D
    .restart local v7    # "hruns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    .restart local v8    # "w":D
    :cond_0
    move-wide v10, v8

    goto :goto_0

    .line 605
    .end local v5    # "maxRunWidth":D
    .end local v7    # "hruns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    .end local v8    # "w":D
    :cond_1
    move-wide v10, v2

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_2

    move-wide v10, v2

    move-object v12, v4

    .line 606
    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v12

    sub-double/2addr v10, v12

    :goto_2
    move-wide v5, v10

    .line 607
    .local v5, "maxRunHeight":D
    move-object v10, v1

    move-wide v11, v5

    invoke-direct {v10, v11, v12}, Ljavafx/scene/layout/FlowPane;->getRuns(D)Ljava/util/List;

    move-result-object v10

    move-object v7, v10

    .line 608
    .local v7, "vruns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v10

    move-object v12, v1

    move-object v13, v7

    invoke-direct {v12, v13}, Ljavafx/scene/layout/FlowPane;->computeContentWidth(Ljava/util/List;)D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v1, v10

    goto :goto_1

    .line 606
    .end local v5    # "maxRunHeight":D
    .end local v7    # "vruns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    :cond_2
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/FlowPane;->getPrefWrapLength()D

    move-result-wide v10

    goto :goto_2
.end method

.method public final getAlignment()Ljavafx/geometry/Pos;
    .locals 2

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/FlowPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    goto :goto_0
.end method

.method public final getColumnHalignment()Ljavafx/geometry/HPos;
    .locals 2

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->columnHalignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/FlowPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->columnHalignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/HPos;

    goto :goto_0
.end method

.method public getContentBias()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
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
    .line 944
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    invoke-static {}, Ljavafx/scene/layout/FlowPane;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0
.end method

.method public final getHgap()D
    .locals 4

    .prologue
    .line 355
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/FlowPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/FlowPane;->hgap:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/FlowPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/FlowPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/FlowPane;->hgap:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getOrientation()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/FlowPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->orientation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Orientation;

    goto :goto_0
.end method

.method public final getPrefWrapLength()D
    .locals 4

    .prologue
    .line 428
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/FlowPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/FlowPane;->prefWrapLength:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/FlowPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/FlowPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/FlowPane;->prefWrapLength:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getRowValignment()Ljavafx/geometry/VPos;
    .locals 2

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->rowValignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/FlowPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->rowValignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/VPos;

    goto :goto_0
.end method

.method public final getVgap()D
    .locals 4

    .prologue
    .line 390
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/FlowPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/FlowPane;->vgap:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/FlowPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/FlowPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/FlowPane;->vgap:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final hgapProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->hgap:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 327
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/FlowPane$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/FlowPane$2;-><init>(Ljavafx/scene/layout/FlowPane;)V

    iput-object v2, v1, Ljavafx/scene/layout/FlowPane;->hgap:Ljavafx/beans/property/DoubleProperty;

    .line 350
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->hgap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0
.end method

.method protected layoutChildren()V
    .locals 49

    .prologue
    .line 757
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/FlowPane;
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/FlowPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v34

    move-object/from16 v3, v34

    .line 758
    .local v3, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/FlowPane;->getWidth()D

    move-result-wide v34

    move-wide/from16 v4, v34

    .line 759
    .local v4, "width":D
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/FlowPane;->getHeight()D

    move-result-wide v34

    move-wide/from16 v6, v34

    .line 760
    .local v6, "height":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v34

    move-wide/from16 v8, v34

    .line 761
    .local v8, "top":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v34

    move-wide/from16 v10, v34

    .line 762
    .local v10, "left":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v34

    move-wide/from16 v12, v34

    .line 763
    .local v12, "bottom":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v34

    move-wide/from16 v14, v34

    .line 764
    .local v14, "right":D
    move-wide/from16 v34, v4

    move-wide/from16 v36, v10

    sub-double v34, v34, v36

    move-wide/from16 v36, v14

    sub-double v34, v34, v36

    move-wide/from16 v16, v34

    .line 765
    .local v16, "insideWidth":D
    move-wide/from16 v34, v6

    move-wide/from16 v36, v8

    sub-double v34, v34, v36

    move-wide/from16 v36, v12

    sub-double v34, v34, v36

    move-wide/from16 v18, v34

    .line 768
    .local v18, "insideHeight":D
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v35

    sget-object v36, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_0

    move-wide/from16 v35, v16

    :goto_0
    invoke-direct/range {v34 .. v36}, Ljavafx/scene/layout/FlowPane;->getRuns(D)Ljava/util/List;

    move-result-object v34

    move-object/from16 v20, v34

    .line 771
    .local v20, "runs":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    const/16 v34, 0x0

    move/from16 v21, v34

    .local v21, "i":I
    move-object/from16 v34, v20

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v22, v34

    .local v22, "max":I
    :goto_1
    move/from16 v34, v21

    move/from16 v35, v22

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_6

    .line 772
    move-object/from16 v34, v20

    move/from16 v35, v21

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljavafx/scene/layout/FlowPane$Run;

    move-object/from16 v23, v34

    .line 773
    .local v23, "run":Ljavafx/scene/layout/FlowPane$Run;
    move-wide/from16 v34, v10

    move-wide/from16 v36, v16

    move-object/from16 v38, v2

    .line 774
    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v38

    sget-object v39, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_1

    move-object/from16 v38, v23

    move-object/from16 v0, v38

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$Run;->width:D

    move-wide/from16 v38, v0

    :goto_2
    move-object/from16 v40, v2

    .line 775
    invoke-direct/range {v40 .. v40}, Ljavafx/scene/layout/FlowPane;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v40

    .line 773
    invoke-static/range {v36 .. v40}, Ljavafx/scene/layout/FlowPane;->computeXOffset(DDLjavafx/geometry/HPos;)D

    move-result-wide v36

    add-double v34, v34, v36

    move-wide/from16 v24, v34

    .line 776
    .local v24, "xoffset":D
    move-wide/from16 v34, v8

    move-wide/from16 v36, v18

    move-object/from16 v38, v2

    .line 777
    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v38

    sget-object v39, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_2

    move-object/from16 v38, v23

    move-object/from16 v0, v38

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$Run;->height:D

    move-wide/from16 v38, v0

    :goto_3
    move-object/from16 v40, v2

    .line 778
    invoke-direct/range {v40 .. v40}, Ljavafx/scene/layout/FlowPane;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v40

    .line 776
    invoke-static/range {v36 .. v40}, Ljavafx/scene/layout/FlowPane;->computeYOffset(DDLjavafx/geometry/VPos;)D

    move-result-wide v36

    add-double v34, v34, v36

    move-wide/from16 v26, v34

    .line 779
    .local v26, "yoffset":D
    const/16 v34, 0x0

    move/from16 v28, v34

    .local v28, "j":I
    :goto_4
    move/from16 v34, v28

    move-object/from16 v35, v23

    move-object/from16 v0, v35

    iget-object v0, v0, Ljavafx/scene/layout/FlowPane$Run;->rects:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_5

    .line 780
    move-object/from16 v34, v23

    move-object/from16 v0, v34

    iget-object v0, v0, Ljavafx/scene/layout/FlowPane$Run;->rects:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move/from16 v35, v28

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljavafx/scene/layout/FlowPane$LayoutRect;

    move-object/from16 v29, v34

    .line 782
    .local v29, "lrect":Ljavafx/scene/layout/FlowPane$LayoutRect;
    move-wide/from16 v34, v24

    move-object/from16 v36, v29

    move-object/from16 v0, v36

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$LayoutRect;->x:D

    move-wide/from16 v36, v0

    add-double v34, v34, v36

    move-wide/from16 v30, v34

    .line 783
    .local v30, "x":D
    move-wide/from16 v34, v26

    move-object/from16 v36, v29

    move-object/from16 v0, v36

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$LayoutRect;->y:D

    move-wide/from16 v36, v0

    add-double v34, v34, v36

    move-wide/from16 v32, v34

    .line 784
    .local v32, "y":D
    move-object/from16 v34, v2

    move-object/from16 v35, v29

    move-object/from16 v0, v35

    iget-object v0, v0, Ljavafx/scene/layout/FlowPane$LayoutRect;->node:Ljavafx/scene/Node;

    move-object/from16 v35, v0

    move-wide/from16 v36, v30

    move-wide/from16 v38, v32

    move-object/from16 v40, v2

    .line 785
    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v40

    sget-object v41, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_3

    move-object/from16 v40, v29

    move-object/from16 v0, v40

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$LayoutRect;->width:D

    move-wide/from16 v40, v0

    :goto_5
    move-object/from16 v42, v2

    .line 786
    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/layout/FlowPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v42

    sget-object v43, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_4

    move-object/from16 v42, v29

    move-object/from16 v0, v42

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$LayoutRect;->height:D

    move-wide/from16 v42, v0

    :goto_6
    move-object/from16 v44, v23

    move-object/from16 v0, v44

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$Run;->baselineOffset:D

    move-wide/from16 v44, v0

    move-object/from16 v46, v29

    move-object/from16 v0, v46

    iget-object v0, v0, Ljavafx/scene/layout/FlowPane$LayoutRect;->node:Ljavafx/scene/Node;

    move-object/from16 v46, v0

    .line 787
    invoke-static/range {v46 .. v46}, Ljavafx/scene/layout/FlowPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v46

    move-object/from16 v47, v2

    .line 788
    invoke-direct/range {v47 .. v47}, Ljavafx/scene/layout/FlowPane;->getColumnHalignmentInternal()Ljavafx/geometry/HPos;

    move-result-object v47

    move-object/from16 v48, v2

    invoke-direct/range {v48 .. v48}, Ljavafx/scene/layout/FlowPane;->getRowValignmentInternal()Ljavafx/geometry/VPos;

    move-result-object v48

    .line 784
    invoke-virtual/range {v34 .. v48}, Ljavafx/scene/layout/FlowPane;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 779
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_4

    .line 768
    .end local v20    # "runs":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    .end local v21    # "i":I
    .end local v22    # "max":I
    .end local v23    # "run":Ljavafx/scene/layout/FlowPane$Run;
    .end local v24    # "xoffset":D
    .end local v26    # "yoffset":D
    .end local v28    # "j":I
    .end local v29    # "lrect":Ljavafx/scene/layout/FlowPane$LayoutRect;
    .end local v30    # "x":D
    .end local v32    # "y":D
    :cond_0
    move-wide/from16 v35, v18

    goto/16 :goto_0

    .line 774
    .restart local v20    # "runs":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/FlowPane$Run;>;"
    .restart local v21    # "i":I
    .restart local v22    # "max":I
    .restart local v23    # "run":Ljavafx/scene/layout/FlowPane$Run;
    :cond_1
    move-object/from16 v38, v2

    move-object/from16 v39, v20

    invoke-direct/range {v38 .. v39}, Ljavafx/scene/layout/FlowPane;->computeContentWidth(Ljava/util/List;)D

    move-result-wide v38

    goto/16 :goto_2

    .line 777
    .restart local v24    # "xoffset":D
    :cond_2
    move-object/from16 v38, v2

    move-object/from16 v39, v20

    invoke-direct/range {v38 .. v39}, Ljavafx/scene/layout/FlowPane;->computeContentHeight(Ljava/util/List;)D

    move-result-wide v38

    goto/16 :goto_3

    .line 785
    .restart local v26    # "yoffset":D
    .restart local v28    # "j":I
    .restart local v29    # "lrect":Ljavafx/scene/layout/FlowPane$LayoutRect;
    .restart local v30    # "x":D
    .restart local v32    # "y":D
    :cond_3
    move-object/from16 v40, v23

    move-object/from16 v0, v40

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$Run;->width:D

    move-wide/from16 v40, v0

    goto :goto_5

    .line 786
    :cond_4
    move-object/from16 v42, v23

    move-object/from16 v0, v42

    iget-wide v0, v0, Ljavafx/scene/layout/FlowPane$Run;->height:D

    move-wide/from16 v42, v0

    goto :goto_6

    .line 771
    .end local v29    # "lrect":Ljavafx/scene/layout/FlowPane$LayoutRect;
    .end local v30    # "x":D
    .end local v32    # "y":D
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 791
    .end local v23    # "run":Ljavafx/scene/layout/FlowPane$Run;
    .end local v24    # "xoffset":D
    .end local v26    # "yoffset":D
    .end local v28    # "j":I
    :cond_6
    return-void
.end method

.method public final orientationProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 292
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/FlowPane$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/FlowPane$1;-><init>(Ljavafx/scene/layout/FlowPane;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/layout/FlowPane;->orientation:Ljavafx/beans/property/ObjectProperty;

    .line 314
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0
.end method

.method public final prefWrapLengthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 406
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/FlowPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/FlowPane;->prefWrapLength:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 407
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/FlowPane$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4079000000000000L    # 400.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/FlowPane$4;-><init>(Ljavafx/scene/layout/FlowPane;D)V

    iput-object v3, v2, Ljavafx/scene/layout/FlowPane;->prefWrapLength:Ljavafx/beans/property/DoubleProperty;

    .line 424
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/FlowPane;->prefWrapLength:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v1
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/FlowPane;->computingRuns:Z

    if-nez v1, :cond_0

    .line 632
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/layout/FlowPane;->runs:Ljava/util/List;

    .line 634
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/Pane;->requestLayout()V

    .line 635
    return-void
.end method

.method public final rowValignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/VPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->rowValignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 525
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/FlowPane$7;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/FlowPane$7;-><init>(Ljavafx/scene/layout/FlowPane;Ljavafx/geometry/VPos;)V

    iput-object v2, v1, Ljavafx/scene/layout/FlowPane;->rowValignment:Ljavafx/beans/property/ObjectProperty;

    .line 547
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->rowValignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0
.end method

.method public final setAlignment(Ljavafx/geometry/Pos;)V
    .locals 4

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/FlowPane;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setColumnHalignment(Ljavafx/geometry/HPos;)V
    .locals 4

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/HPos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/FlowPane;->columnHalignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setHgap(D)V
    .locals 7

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/FlowPane;->hgapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setOrientation(Ljavafx/geometry/Orientation;)V
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Orientation;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/FlowPane;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPrefWrapLength(D)V
    .locals 7

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/FlowPane;->prefWrapLengthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setRowValignment(Ljavafx/geometry/VPos;)V
    .locals 4

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/VPos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/FlowPane;->rowValignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setVgap(D)V
    .locals 7

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/FlowPane;->vgapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final vgapProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->vgap:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 363
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/FlowPane$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/FlowPane$3;-><init>(Ljavafx/scene/layout/FlowPane;)V

    iput-object v2, v1, Ljavafx/scene/layout/FlowPane;->vgap:Ljavafx/beans/property/DoubleProperty;

    .line 385
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane;->vgap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane;
    return-object v0
.end method
