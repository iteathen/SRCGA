.class public Lcom/sun/javafx/scene/control/skin/CellSkinBase;
.super Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;
.source "CellSkinBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/CellSkinBase$StyleableProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljavafx/scene/control/Cell;",
        "B:",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<TC;>;>",
        "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase",
        "<TC;TB;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_CELL_SIZE:D = 24.0


# instance fields
.field private cellSize:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Cell;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TB;)V"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Cell;, "TC;"
    move-object v2, p2

    .local v2, "behavior":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "TB;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;-><init>(Ljavafx/scene/control/Labeled;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 118
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->consumeMouseEvents(Z)V

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/CellSkinBase;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CellSkinBase;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->cellSize:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CellSkinBase;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/CellSkinBase;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CellSkinBase;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->cellSizePropertyImpl()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CellSkinBase;
    return-object v0
.end method

.method private cellSizePropertyImpl()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase<TC;TB;>;"
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->cellSize:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 72
    move-object v2, v1

    new-instance v3, Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;-><init>(Lcom/sun/javafx/scene/control/skin/CellSkinBase;D)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->cellSize:Ljavafx/beans/property/DoubleProperty;

    .line 107
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->cellSize:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase<TC;TB;>;"
    return-object v1
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
    .line 169
    # getter for: Lcom/sun/javafx/scene/control/skin/CellSkinBase$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/CellSkinBase$StyleableProperties;->access$300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final cellSizeProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase<TC;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->cellSizePropertyImpl()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase<TC;TB;>;"
    return-object v0
.end method

.method public final getCellSize()D
    .locals 4

    .prologue
    .line 63
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase<TC;TB;>;"
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->cellSize:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase<TC;TB;>;"
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase<TC;TB;>;"
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->cellSize:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
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
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase<TC;TB;>;"
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase<TC;TB;>;"
    return-object v0
.end method
