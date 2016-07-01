.class final Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties$2;
.super Ljavafx/css/CssMetaData;
.source "TabPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/CssMetaData",
        "<",
        "Ljavafx/scene/control/TabPane;",
        "Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;)V
    .locals 8

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties$2;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x1":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;>;"
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;
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
    .line 642
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties$2;->getStyleableProperty(Ljavafx/scene/control/TabPane;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties$2;
    return-object v0
.end method

.method public getStyleableProperty(Ljavafx/scene/control/TabPane;)Ljavafx/css/StyleableProperty;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TabPane;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties$2;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/control/TabPane;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v2, v3

    .line 650
    .local v2, "skin":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v3, v2

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    check-cast v3, Ljavafx/css/StyleableProperty;

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties$2;
    return-object v0
.end method

.method public bridge synthetic isSettable(Ljavafx/css/Styleable;)Z
    .locals 4

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties$2;->isSettable(Ljavafx/scene/control/TabPane;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties$2;
    return v0
.end method

.method public isSettable(Ljavafx/scene/control/TabPane;)Z
    .locals 3

    .prologue
    .line 645
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties$2;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/control/TabPane;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties$2;
    return v0
.end method
