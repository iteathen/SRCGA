.class Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;
.super Ljavafx/css/StyleableDoubleProperty;
.source "TableColumnHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sizeProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;D)V
    .locals 8

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;->this$0:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;->this$0:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Lcom/sun/javafx/scene/control/skin/TableColumnHeader;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;
    # getter for: Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties;->SIZE:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties;->access$000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;
    const-string v1, "size"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 9

    .prologue
    .line 276
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;->get()D

    move-result-wide v4

    move-wide v2, v4

    .line 277
    .local v2, "value":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 278
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;->isBound()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;->unbind()V

    .line 281
    :cond_0
    move-object v4, v1

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;->set(D)V

    .line 282
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Size cannot be 0 or negative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_1
    return-void
.end method
