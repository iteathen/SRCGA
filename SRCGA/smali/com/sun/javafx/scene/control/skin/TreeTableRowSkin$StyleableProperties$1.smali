.class final Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties$1;
.super Ljavafx/css/CssMetaData;
.source "TreeTableRowSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/CssMetaData",
        "<",
        "Ljavafx/scene/control/TreeTableRow",
        "<*>;",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V
    .locals 8

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties$1;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x1":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*Ljava/lang/Number;>;"
    move-object v3, p3

    .local v3, "x2":Ljava/lang/Number;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/css/CssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;
    .locals 4

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties$1;->getStyleableProperty(Ljavafx/scene/control/TreeTableRow;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties$1;
    return-object v0
.end method

.method public getStyleableProperty(Ljavafx/scene/control/TreeTableRow;)Ljavafx/css/StyleableProperty;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableRow",
            "<*>;)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties$1;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<*>;"
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;

    move-object v2, v3

    .line 376
    .local v2, "skin":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<*>;"
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->indentProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    check-cast v3, Ljavafx/css/StyleableProperty;

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties$1;
    return-object v0
.end method

.method public bridge synthetic isSettable(Ljavafx/css/Styleable;)Z
    .locals 4

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties$1;->isSettable(Ljavafx/scene/control/TreeTableRow;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties$1;
    return v0
.end method

.method public isSettable(Ljavafx/scene/control/TreeTableRow;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableRow",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties$1;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<*>;"
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->indentProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-object v2, v3

    .line 371
    .local v2, "p":Ljavafx/beans/property/DoubleProperty;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties$1;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties$1;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
