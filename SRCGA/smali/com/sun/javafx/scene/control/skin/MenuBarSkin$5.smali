.class final Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;
.super Ljavafx/css/CssMetaData;
.source "MenuBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/CssMetaData",
        "<",
        "Ljavafx/scene/control/MenuBar;",
        "Ljavafx/geometry/Pos;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/geometry/Pos;)V
    .locals 8

    .prologue
    .line 1187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x1":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*Ljavafx/geometry/Pos;>;"
    move-object v3, p3

    .local v3, "x2":Ljavafx/geometry/Pos;
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
    .line 1187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;->getStyleableProperty(Ljavafx/scene/control/MenuBar;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;
    return-object v0
.end method

.method public getStyleableProperty(Ljavafx/scene/control/MenuBar;)Ljavafx/css/StyleableProperty;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/MenuBar;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/control/MenuBar;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuBar;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v2, v3

    .line 1198
    .local v2, "skin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->containerAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    check-cast v3, Ljavafx/css/StyleableProperty;

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;
    return-object v0
.end method

.method public bridge synthetic isSettable(Ljavafx/css/Styleable;)Z
    .locals 4

    .prologue
    .line 1187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;->isSettable(Ljavafx/scene/control/MenuBar;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;
    return v0
.end method

.method public isSettable(Ljavafx/scene/control/MenuBar;)Z
    .locals 4

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/control/MenuBar;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuBar;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v2, v3

    .line 1192
    .local v2, "skin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v3, v2

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$1300(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$1300(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
