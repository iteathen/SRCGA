.class Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;
.super Ljavafx/css/StyleableDoubleProperty;
.source "CellSkinBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/CellSkinBase;->cellSizePropertyImpl()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/CellSkinBase;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/CellSkinBase;D)V
    .locals 8

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/CellSkinBase;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;->this$0:Lcom/sun/javafx/scene/control/skin/CellSkinBase;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Number;)V
    .locals 12

    .prologue
    .line 76
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;"
    move-object v2, p1

    .local v2, "origin":Ljavafx/css/StyleOrigin;
    move-object v3, p2

    .local v3, "value":Ljava/lang/Number;
    move-object v6, v3

    if-nez v6, :cond_0

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    :goto_0
    move-wide v4, v6

    .line 78
    .local v4, "size":D
    move-object v6, v1

    move-object v7, v2

    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_1

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-super {v6, v7, v8}, Ljavafx/css/StyleableDoubleProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Number;)V

    .line 79
    return-void

    .line 76
    .end local v4    # "size":D
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    goto :goto_0

    .line 78
    .restart local v4    # "size":D
    :cond_1
    move-wide v8, v4

    goto :goto_1
.end method

.method public bridge synthetic applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Number;)V

    return-void
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;->this$0:Lcom/sun/javafx/scene/control/skin/CellSkinBase;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;"
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Cell",
            "<*>;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;"
    # getter for: Lcom/sun/javafx/scene/control/skin/CellSkinBase$StyleableProperties;->CELL_SIZE:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/CellSkinBase$StyleableProperties;->access$000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;"
    const-string v1, "cellSize"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;"
    return-object v0
.end method

.method public set(D)V
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;, "Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/css/StyleableDoubleProperty;->set(D)V

    .line 91
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CellSkinBase$1;->this$0:Lcom/sun/javafx/scene/control/skin/CellSkinBase;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Cell;

    invoke-virtual {v3}, Ljavafx/scene/control/Cell;->requestLayout()V

    .line 92
    return-void
.end method
