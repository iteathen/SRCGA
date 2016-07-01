.class public final Ljavafx/scene/chart/CategoryAxis;
.super Ljavafx/scene/chart/Axis;
.source "CategoryAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/chart/CategoryAxis$StyleableProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/chart/Axis",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private allDataCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

.field private categories:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private changeIsLocal:Z

.field private currentAnimationID:Ljava/lang/Object;

.field private endMargin:Ljavafx/beans/property/DoubleProperty;

.field private final firstCategoryPos:Ljavafx/beans/property/DoubleProperty;

.field private gapStartAndEnd:Ljavafx/beans/property/BooleanProperty;

.field private itemsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startMargin:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/Axis;-><init>()V

    .line 70
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    .line 71
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/chart/CategoryAxis;->changeIsLocal:Z

    .line 73
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "firstCategoryPos"

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/scene/chart/CategoryAxis;->firstCategoryPos:Ljavafx/beans/property/DoubleProperty;

    .line 75
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/charts/ChartLayoutAnimator;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/charts/ChartLayoutAnimator;-><init>(Ljavafx/scene/Parent;)V

    iput-object v2, v1, Ljavafx/scene/chart/CategoryAxis;->animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

    .line 76
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/chart/CategoryAxis$$Lambda$1;->lambdaFactory$(Ljavafx/scene/chart/CategoryAxis;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/chart/CategoryAxis;->itemsListener:Ljavafx/collections/ListChangeListener;

    .line 96
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/CategoryAxis$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/CategoryAxis$1;-><init>(Ljavafx/scene/chart/CategoryAxis;D)V

    iput-object v2, v1, Ljavafx/scene/chart/CategoryAxis;->startMargin:Ljavafx/beans/property/DoubleProperty;

    .line 120
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/CategoryAxis$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/CategoryAxis$2;-><init>(Ljavafx/scene/chart/CategoryAxis;D)V

    iput-object v2, v1, Ljavafx/scene/chart/CategoryAxis;->endMargin:Ljavafx/beans/property/DoubleProperty;

    .line 147
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/CategoryAxis$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/CategoryAxis$3;-><init>(Ljavafx/scene/chart/CategoryAxis;Z)V

    iput-object v2, v1, Ljavafx/scene/chart/CategoryAxis;->gapStartAndEnd:Ljavafx/beans/property/BooleanProperty;

    .line 171
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/CategoryAxis$4;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/chart/CategoryAxis$4;-><init>(Ljavafx/scene/chart/CategoryAxis;)V

    iput-object v2, v1, Ljavafx/scene/chart/CategoryAxis;->categories:Ljavafx/beans/property/ObjectProperty;

    .line 243
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "categorySpacing"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 257
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/chart/CategoryAxis;->changeIsLocal:Z

    .line 258
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/chart/CategoryAxis;->setCategories(Ljavafx/collections/ObservableList;)V

    .line 259
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/chart/CategoryAxis;->changeIsLocal:Z

    .line 260
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    .local v1, "categories":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/String;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/chart/Axis;-><init>()V

    .line 70
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    .line 71
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/chart/CategoryAxis;->changeIsLocal:Z

    .line 73
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const-string v6, "firstCategoryPos"

    const-wide/16 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/chart/CategoryAxis;->firstCategoryPos:Ljavafx/beans/property/DoubleProperty;

    .line 75
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/charts/ChartLayoutAnimator;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/charts/ChartLayoutAnimator;-><init>(Ljavafx/scene/Parent;)V

    iput-object v3, v2, Ljavafx/scene/chart/CategoryAxis;->animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

    .line 76
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/chart/CategoryAxis$$Lambda$2;->lambdaFactory$(Ljavafx/scene/chart/CategoryAxis;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/chart/CategoryAxis;->itemsListener:Ljavafx/collections/ListChangeListener;

    .line 96
    move-object v2, v0

    new-instance v3, Ljavafx/scene/chart/CategoryAxis$1;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/CategoryAxis$1;-><init>(Ljavafx/scene/chart/CategoryAxis;D)V

    iput-object v3, v2, Ljavafx/scene/chart/CategoryAxis;->startMargin:Ljavafx/beans/property/DoubleProperty;

    .line 120
    move-object v2, v0

    new-instance v3, Ljavafx/scene/chart/CategoryAxis$2;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/CategoryAxis$2;-><init>(Ljavafx/scene/chart/CategoryAxis;D)V

    iput-object v3, v2, Ljavafx/scene/chart/CategoryAxis;->endMargin:Ljavafx/beans/property/DoubleProperty;

    .line 147
    move-object v2, v0

    new-instance v3, Ljavafx/scene/chart/CategoryAxis$3;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/chart/CategoryAxis$3;-><init>(Ljavafx/scene/chart/CategoryAxis;Z)V

    iput-object v3, v2, Ljavafx/scene/chart/CategoryAxis;->gapStartAndEnd:Ljavafx/beans/property/BooleanProperty;

    .line 171
    move-object v2, v0

    new-instance v3, Ljavafx/scene/chart/CategoryAxis$4;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/chart/CategoryAxis$4;-><init>(Ljavafx/scene/chart/CategoryAxis;)V

    iput-object v3, v2, Ljavafx/scene/chart/CategoryAxis;->categories:Ljavafx/beans/property/ObjectProperty;

    .line 243
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const-string v6, "categorySpacing"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 268
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/CategoryAxis;->setCategories(Ljavafx/collections/ObservableList;)V

    .line 269
    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/chart/CategoryAxis;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/CategoryAxis;->getDuplicate()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/chart/CategoryAxis;)Ljavafx/collections/ListChangeListener;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->itemsListener:Ljavafx/collections/ListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/chart/CategoryAxis;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->startMargin:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/chart/CategoryAxis;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->endMargin:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/chart/CategoryAxis;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->gapStartAndEnd:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/chart/CategoryAxis;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/CategoryAxis;->lambda$new$565(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/chart/CategoryAxis;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/CategoryAxis;->lambda$new$565(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private calculateNewFirstPos(DD)D
    .locals 15

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-wide/from16 v1, p1

    .local v1, "length":D
    move-wide/from16 v3, p3

    .local v3, "catSpacing":D
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/chart/CategoryAxis;->getEffectiveSide()Ljavafx/geometry/Side;

    move-result-object v10

    move-object v5, v10

    .line 288
    .local v5, "side":Ljavafx/geometry/Side;
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v6, v10

    .line 289
    .local v6, "newPos":D
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/chart/CategoryAxis;->isGapStartAndEnd()Z

    move-result v10

    if-eqz v10, :cond_1

    move-wide v10, v3

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    :goto_0
    move-wide v8, v10

    .line 290
    .local v8, "offset":D
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/geometry/Side;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 291
    const-wide/16 v10, 0x0

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/chart/CategoryAxis;->getStartMargin()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v12, v8

    add-double/2addr v10, v12

    move-wide v6, v10

    .line 296
    :goto_1
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/chart/CategoryAxis;->isAutoRanging()Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/chart/CategoryAxis;->firstCategoryPos:Ljavafx/beans/property/DoubleProperty;

    move-wide v11, v6

    invoke-virtual {v10, v11, v12}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 297
    :cond_0
    move-wide v10, v6

    move-wide v0, v10

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-wide v0

    .line 289
    .end local v8    # "offset":D
    .restart local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    :cond_1
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 293
    .restart local v8    # "offset":D
    :cond_2
    move-wide v10, v1

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/chart/CategoryAxis;->getStartMargin()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-wide v12, v8

    sub-double/2addr v10, v12

    move-wide v6, v10

    goto :goto_1
.end method

.method private calculateNewSpacing(DLjava/util/List;)D
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 274
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/CategoryAxis;
    move-wide/from16 v2, p1

    .local v2, "length":D
    move-object/from16 v4, p3

    .local v4, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/CategoryAxis;->getEffectiveSide()Ljavafx/geometry/Side;

    move-result-object v10

    move-object v5, v10

    .line 275
    .local v5, "side":Ljavafx/geometry/Side;
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v6, v10

    .line 276
    .local v6, "newCategorySpacing":D
    move-object v10, v4

    if-eqz v10, :cond_0

    .line 277
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/CategoryAxis;->isGapStartAndEnd()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    :goto_0
    int-to-double v10, v10

    move-wide v8, v10

    .line 279
    .local v8, "bVal":D
    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    :goto_1
    move-wide v6, v10

    .line 282
    .end local v8    # "bVal":D
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/CategoryAxis;->isAutoRanging()Z

    move-result v10

    if-nez v10, :cond_1

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v11, v6

    invoke-virtual {v10, v11, v12}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 283
    :cond_1
    move-wide v10, v6

    move-wide v1, v10

    .end local v1    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-wide v1

    .line 277
    .restart local v1    # "this":Ljavafx/scene/chart/CategoryAxis;
    :cond_2
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 279
    .restart local v8    # "bVal":D
    :cond_3
    move-wide v10, v2

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/CategoryAxis;->getStartMargin()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/CategoryAxis;->getEndMargin()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-wide v12, v8

    div-double/2addr v10, v12

    goto :goto_1
.end method

.method private calculateRequiredSize(ZD)D
    .locals 26

    .prologue
    .line 373
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/chart/CategoryAxis;
    move/from16 v3, p1

    .local v3, "axisVertical":Z
    move-wide/from16 v4, p2

    .local v4, "tickLabelRotation":D
    const-wide v18, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v6, v18

    .line 375
    .local v6, "requiredLengthToDisplay":D
    const-wide/16 v18, 0x0

    move-wide/from16 v8, v18

    .line 376
    .local v8, "maxReqTickGap":D
    const-wide/16 v18, 0x0

    move-wide/from16 v10, v18

    .line 377
    .local v10, "last":D
    const/16 v18, 0x1

    move/from16 v12, v18

    .line 378
    .local v12, "first":Z
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v13, v18

    :goto_0
    move-object/from16 v18, v13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v18, v13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v14, v18

    .line 379
    .local v14, "category":Ljava/lang/String;
    move-object/from16 v18, v2

    move-object/from16 v19, v14

    move-wide/from16 v20, v4

    invoke-virtual/range {v18 .. v21}, Ljavafx/scene/chart/CategoryAxis;->measureTickMarkSize(Ljava/lang/Object;D)Ljavafx/geometry/Dimension2D;

    move-result-object v18

    move-object/from16 v15, v18

    .line 380
    .local v15, "textSize":Ljavafx/geometry/Dimension2D;
    move/from16 v18, v3

    if-nez v18, :cond_0

    move-wide/from16 v18, v4

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_1

    :cond_0
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v18

    :goto_1
    move-wide/from16 v16, v18

    .line 382
    .local v16, "size":D
    move/from16 v18, v12

    if-eqz v18, :cond_2

    .line 383
    const/16 v18, 0x0

    move/from16 v12, v18

    .line 384
    move-wide/from16 v18, v16

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v10, v18

    .line 388
    :goto_2
    goto :goto_0

    .line 380
    .end local v16    # "size":D
    :cond_1
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v18

    goto :goto_1

    .line 386
    .restart local v16    # "size":D
    :cond_2
    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    const-wide/high16 v22, 0x4018000000000000L    # 6.0

    add-double v20, v20, v22

    move-wide/from16 v22, v16

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    add-double v20, v20, v22

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v8, v18

    goto :goto_2

    .line 389
    .end local v14    # "category":Ljava/lang/String;
    .end local v15    # "textSize":Ljavafx/geometry/Dimension2D;
    .end local v16    # "size":D
    :cond_3
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/CategoryAxis;->getStartMargin()D

    move-result-wide v18

    move-wide/from16 v20, v8

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/CategoryAxis;->getEndMargin()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v2, v18

    .end local v2    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-wide v2
.end method

.method private checkAndRemoveDuplicates(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    .local v1, "category":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/chart/CategoryAxis;->getDuplicate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 215
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 216
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate category ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already present"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_0
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
    .line 615
    # getter for: Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->access$800()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getDuplicate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 222
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 223
    const/4 v3, 0x0

    move v2, v3

    .local v2, "j":I
    :goto_1
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 224
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 225
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 230
    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    :goto_2
    return-object v0

    .line 223
    .restart local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 222
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_2
.end method

.method private synthetic lambda$new$565(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 82
    .local v3, "addedStr":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljavafx/scene/chart/CategoryAxis;->checkAndRemoveDuplicates(Ljava/lang/String;)V

    goto :goto_1

    .line 84
    .end local v3    # "addedStr":Ljava/lang/String;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/CategoryAxis;->isAutoRanging()Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 86
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 87
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/chart/CategoryAxis;->rangeValid:Z

    .line 89
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/CategoryAxis;->requestAxisLayout()V

    goto :goto_0

    .line 91
    :cond_2
    return-void
.end method


# virtual methods
.method protected autoRange(D)Ljava/lang/Object;
    .locals 19

    .prologue
    .line 357
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-wide/from16 v1, p1

    .local v1, "length":D
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/chart/CategoryAxis;->getEffectiveSide()Ljavafx/geometry/Side;

    move-result-object v12

    move-object v3, v12

    .line 359
    .local v3, "side":Ljavafx/geometry/Side;
    move-object v12, v0

    move-wide v13, v1

    move-object v15, v0

    iget-object v15, v15, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/scene/chart/CategoryAxis;->calculateNewSpacing(DLjava/util/List;)D

    move-result-wide v12

    move-wide v4, v12

    .line 360
    .local v4, "newCategorySpacing":D
    move-object v12, v0

    move-wide v13, v1

    move-wide v15, v4

    invoke-direct/range {v12 .. v16}, Ljavafx/scene/chart/CategoryAxis;->calculateNewFirstPos(DD)D

    move-result-wide v12

    move-wide v6, v12

    .line 361
    .local v6, "newFirstPos":D
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/chart/CategoryAxis;->getTickLabelRotation()D

    move-result-wide v12

    move-wide v8, v12

    .line 362
    .local v8, "tickLabelRotation":D
    move-wide v12, v1

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_0

    .line 363
    move-object v12, v0

    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/geometry/Side;->isVertical()Z

    move-result v13

    move-wide v14, v8

    invoke-direct {v12, v13, v14, v15}, Ljavafx/scene/chart/CategoryAxis;->calculateRequiredSize(ZD)D

    move-result-wide v12

    move-wide v10, v12

    .line 364
    .local v10, "requiredLengthToDisplay":D
    move-wide v12, v10

    move-wide v14, v1

    cmpl-double v12, v12, v14

    if-lez v12, :cond_0

    .line 366
    const-wide v12, 0x4056800000000000L    # 90.0

    move-wide v8, v12

    .line 369
    .end local v10    # "requiredLengthToDisplay":D
    :cond_0
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    move-object v15, v0

    iget-object v15, v15, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x1

    move-wide v15, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x2

    move-wide v15, v6

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x3

    move-wide v15, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    move-object v0, v12

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method protected calculateTickValues(DLjava/lang/Object;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/CategoryAxis;
    move-wide v2, p1

    .local v2, "length":D
    move-object v4, p3

    .local v4, "range":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    move-object v5, v6

    .line 401
    .local v5, "rangeArray":[Ljava/lang/Object;
    move-object v6, v5

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ljava/util/List;

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v1
.end method

.method public final categorySpacingProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method public final endMarginProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->endMargin:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method public final gapStartAndEndProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->gapStartAndEnd:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method final getAllDataCategories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method public final getCategories()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->categories:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method public final getCategorySpacing()D
    .locals 3

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-wide v0
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
    .line 624
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    invoke-static {}, Ljavafx/scene/chart/CategoryAxis;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method public bridge synthetic getDisplayPosition(Ljava/lang/Object;)D
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/CategoryAxis;->getDisplayPosition(Ljava/lang/String;)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-wide v0
.end method

.method public getDisplayPosition(Ljava/lang/String;)D
    .locals 10

    .prologue
    .line 472
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v2, p1

    .local v2, "value":Ljava/lang/String;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v3, v4

    .line 473
    .local v3, "cat":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/String;>;"
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 474
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    move-wide v1, v4

    .line 479
    .end local v1    # "this":Ljavafx/scene/chart/CategoryAxis;
    :goto_0
    return-wide v1

    .line 476
    .restart local v1    # "this":Ljavafx/scene/chart/CategoryAxis;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/chart/CategoryAxis;->getEffectiveSide()Ljavafx/geometry/Side;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/geometry/Side;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 477
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/chart/CategoryAxis;->firstCategoryPos:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v4}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v4

    move-object v6, v3

    move-object v7, v2

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    int-to-double v6, v6

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v1, v4

    goto :goto_0

    .line 479
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/chart/CategoryAxis;->firstCategoryPos:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v4}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v4

    move-object v6, v3

    move-object v7, v2

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    int-to-double v6, v6

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v1, v4

    goto :goto_0
.end method

.method public final getEndMargin()D
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->endMargin:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-wide v0
.end method

.method protected getRange()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/CategoryAxis;->firstCategoryPos:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v4}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/CategoryAxis;->getEffectiveTickLabelRotation()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method public final getStartMargin()D
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->startMargin:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-wide v0
.end method

.method protected bridge synthetic getTickMarkLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/CategoryAxis;->getTickMarkLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method protected getTickMarkLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method public bridge synthetic getValueForDisplay(D)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/CategoryAxis;->getValueForDisplay(D)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method public getValueForDisplay(D)Ljava/lang/String;
    .locals 13

    .prologue
    .line 492
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/CategoryAxis;
    move-wide v2, p1

    .local v2, "displayPosition":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/CategoryAxis;->getEffectiveSide()Ljavafx/geometry/Side;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Side;->isHorizontal()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 493
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/CategoryAxis;->getWidth()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    move-object v1, v6

    .line 499
    .end local v1    # "this":Ljavafx/scene/chart/CategoryAxis;
    :goto_0
    return-object v1

    .line 494
    .restart local v1    # "this":Ljavafx/scene/chart/CategoryAxis;
    :cond_1
    move-wide v6, v2

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/chart/CategoryAxis;->firstCategoryPos:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v8}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v8

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 495
    .local v4, "d":D
    move-object v6, v1

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/chart/CategoryAxis;->toRealValue(D)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 497
    .end local v4    # "d":D
    :cond_2
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_3

    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/CategoryAxis;->getHeight()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_4

    :cond_3
    const/4 v6, 0x0

    move-object v1, v6

    goto :goto_0

    .line 498
    :cond_4
    move-wide v6, v2

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/chart/CategoryAxis;->firstCategoryPos:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v8}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v8

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 499
    .restart local v4    # "d":D
    move-object v6, v1

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/chart/CategoryAxis;->toRealValue(D)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    goto :goto_0
.end method

.method public getZeroPosition()D
    .locals 3

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    const-wide/high16 v1, 0x7ff8000000000000L    # NaN

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-wide v0
.end method

.method public invalidateRange(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Ljavafx/scene/chart/Axis;->invalidateRange(Ljava/util/List;)V

    .line 440
    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 441
    .local v2, "categoryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 445
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 446
    .local v4, "cat":Ljava/lang/String;
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 447
    :cond_0
    goto :goto_0

    .line 450
    .end local v4    # "cat":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 451
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    .line 452
    .local v4, "len":I
    move-object v5, v2

    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v2

    move v6, v3

    move v7, v4

    if-le v6, v7, :cond_3

    move v6, v4

    :goto_2
    move-object v7, v1

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 450
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 452
    :cond_3
    move v6, v3

    goto :goto_2

    .line 454
    .end local v4    # "len":I
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 455
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 456
    return-void
.end method

.method public final isGapStartAndEnd()Z
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->gapStartAndEnd:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return v0
.end method

.method public bridge synthetic isValueOnAxis(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/CategoryAxis;->isValueOnAxis(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return v0
.end method

.method public isValueOnAxis(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return v0

    .restart local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic measureTickMarkSize(Ljava/lang/Object;Ljava/lang/Object;)Ljavafx/geometry/Dimension2D;
    .locals 6

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/CategoryAxis;->measureTickMarkSize(Ljava/lang/String;Ljava/lang/Object;)Ljavafx/geometry/Dimension2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method protected measureTickMarkSize(Ljava/lang/String;Ljava/lang/Object;)Ljavafx/geometry/Dimension2D;
    .locals 10

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, p2

    .local v2, "range":Ljava/lang/Object;
    move-object v6, v2

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    move-object v3, v6

    .line 424
    .local v3, "rangeArray":[Ljava/lang/Object;
    move-object v6, v3

    const/4 v7, 0x3

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-wide v4, v6

    .line 425
    .local v4, "tickLabelRotation":D
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v4

    invoke-virtual {v6, v7, v8, v9}, Ljavafx/scene/chart/CategoryAxis;->measureTickMarkSize(Ljava/lang/Object;D)Ljavafx/geometry/Dimension2D;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method public final setCategories(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    .local v1, "value":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/String;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/CategoryAxis;->categories:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 205
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/chart/CategoryAxis;->changeIsLocal:Z

    if-nez v2, :cond_0

    .line 206
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/CategoryAxis;->setAutoRanging(Z)V

    .line 207
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 208
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/CategoryAxis;->allDataCategories:Ljava/util/List;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 210
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/CategoryAxis;->requestAxisLayout()V

    .line 211
    return-void
.end method

.method public final setEndMargin(D)V
    .locals 7

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/CategoryAxis;->endMargin:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public final setGapStartAndEnd(Z)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/CategoryAxis;->gapStartAndEnd:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected setRange(Ljava/lang/Object;Z)V
    .locals 27

    .prologue
    .line 319
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object/from16 v2, p1

    .local v2, "range":Ljava/lang/Object;
    move/from16 v3, p2

    .local v3, "animate":Z
    move-object v10, v2

    check-cast v10, [Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    move-object v4, v10

    .line 320
    .local v4, "rangeArray":[Ljava/lang/Object;
    move-object v10, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    check-cast v10, Ljava/util/List;

    move-object v5, v10

    .line 322
    .local v5, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v10, v4

    const/4 v11, 0x1

    aget-object v10, v10, v11

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-wide v6, v10

    .line 323
    .local v6, "newCategorySpacing":D
    move-object v10, v4

    const/4 v11, 0x2

    aget-object v10, v10, v11

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-wide v8, v10

    .line 324
    .local v8, "newFirstCategoryPos":D
    move-object v10, v1

    move-object v11, v4

    const/4 v12, 0x3

    aget-object v11, v11, v12

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/chart/CategoryAxis;->setEffectiveTickLabelRotation(D)V

    .line 326
    move-object v10, v1

    const/4 v11, 0x1

    iput-boolean v11, v10, Ljavafx/scene/chart/CategoryAxis;->changeIsLocal:Z

    .line 327
    move-object v10, v1

    move-object v11, v5

    invoke-static {v11}, Ljavafx/collections/FXCollections;->observableArrayList(Ljava/util/Collection;)Ljavafx/collections/ObservableList;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavafx/scene/chart/CategoryAxis;->setCategories(Ljavafx/collections/ObservableList;)V

    .line 328
    move-object v10, v1

    const/4 v11, 0x0

    iput-boolean v11, v10, Ljavafx/scene/chart/CategoryAxis;->changeIsLocal:Z

    .line 329
    move v10, v3

    if-eqz v10, :cond_0

    .line 330
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/chart/CategoryAxis;->animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/chart/CategoryAxis;->currentAnimationID:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->stop(Ljava/lang/Object;)V

    .line 331
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/chart/CategoryAxis;->animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

    const/4 v12, 0x2

    new-array v12, v12, [Ljavafx/animation/KeyFrame;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/4 v14, 0x0

    new-instance v15, Ljavafx/animation/KeyFrame;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    sget-object v17, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v18, v0

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x0

    new-instance v21, Ljavafx/animation/KeyValue;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v23, v1

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/chart/CategoryAxis;->firstCategoryPos:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/chart/CategoryAxis;->firstCategoryPos:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v24, v0

    .line 333
    invoke-virtual/range {v24 .. v24}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v21, v19, v20

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x1

    new-instance v21, Ljavafx/animation/KeyValue;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v23, v1

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object/from16 v24, v0

    .line 334
    invoke-virtual/range {v24 .. v24}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v21, v19, v20

    invoke-direct/range {v16 .. v18}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/4 v14, 0x1

    new-instance v15, Ljavafx/animation/KeyFrame;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const-wide v17, 0x408f400000000000L    # 1000.0

    .line 336
    invoke-static/range {v17 .. v18}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v18, v0

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x0

    new-instance v21, Ljavafx/animation/KeyValue;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v23, v1

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/chart/CategoryAxis;->firstCategoryPos:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v23, v0

    move-wide/from16 v24, v8

    .line 337
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v21, v19, v20

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x1

    new-instance v21, Ljavafx/animation/KeyValue;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v23, v1

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object/from16 v23, v0

    move-wide/from16 v24, v6

    .line 338
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v21, v19, v20

    invoke-direct/range {v16 .. v18}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v15, v13, v14

    .line 331
    invoke-virtual {v11, v12}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->animate([Ljavafx/animation/KeyFrame;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v10, Ljavafx/scene/chart/CategoryAxis;->currentAnimationID:Ljava/lang/Object;

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/chart/CategoryAxis;->categorySpacing:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v11, v6

    invoke-virtual {v10, v11, v12}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 343
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/chart/CategoryAxis;->firstCategoryPos:Ljavafx/beans/property/DoubleProperty;

    move-wide v11, v8

    invoke-virtual {v10, v11, v12}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setStartMargin(D)V
    .locals 7

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/CategoryAxis;->startMargin:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public final startMarginProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis;->startMargin:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method public bridge synthetic toNumericValue(Ljava/lang/Object;)D
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/CategoryAxis;->toNumericValue(Ljava/lang/String;)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-wide v0
.end method

.method public toNumericValue(Ljava/lang/String;)D
    .locals 4

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    int-to-double v2, v2

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-wide v0
.end method

.method public bridge synthetic toRealValue(D)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/CategoryAxis;->toRealValue(D)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis;
    return-object v0
.end method

.method public toRealValue(D)Ljava/lang/String;
    .locals 9

    .prologue
    .line 530
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/CategoryAxis;
    move-wide v2, p1

    .local v2, "value":D
    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    move v4, v6

    .line 531
    .local v4, "index":I
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v5, v6

    .line 532
    .local v5, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v6, v4

    if-ltz v6, :cond_0

    move v6, v4

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 533
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v1, v6

    .line 535
    .end local v1    # "this":Ljavafx/scene/chart/CategoryAxis;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljavafx/scene/chart/CategoryAxis;
    :cond_0
    const/4 v6, 0x0

    move-object v1, v6

    goto :goto_0
.end method
